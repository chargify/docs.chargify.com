namespace :api_calls do
  desc "Make example API calls, record output, and generate gists"
  task :generate_output => :environment do
    api_user     = ENV["CHARGIFY_API_SITE_USER"]
    api_password = ENV["CHARGIFY_API_SITE_PASSWORD"]
    
    api_calls_json = File.read(Rails.root.join("gists/requests.json"))
    
    api_requests  = JSON.parse(api_calls_json)
    api_responses = []
    
    api_requests["calls"].each do |api_call_options|
      api_caller = ChargifyApiCaller.new(api_user, api_password, api_requests["endpoint"], api_call_options)
      api_response = api_caller.call!

      gist = Gist.gist(api_response, filename: api_caller.filename, public: false)
      
      api_responses << {desc:        api_call_options["desc"],
                        name:        api_caller.title,
                        url:         api_call_options["verb"] + " " + api_call_options["url"],
                        params:      api_caller.scrub_params,
                        gist_url:    gist["html_url"],
                        last_run_at: Time.now.to_s}

      GistDownloader.new(Rails.root.join("gists/responses"), gist['files'][api_caller.filename]['raw_url']).download!

      puts "Documentation generated for #{api_caller.title}\t|\t#{gist['html_url']}"
    end

    File.open(Rails.root.join("gists/responses.json"), "w") do |f|
      formatted_json = ` echo '#{api_responses.to_json}' | json_reformat`
      f.write(formatted_json)
    end
  end
end
