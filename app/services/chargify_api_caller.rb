class ChargifyApiCaller
  attr_reader :title, :filename

  def initialize(api_user, api_password, api_endpoint, api_call_options)
    @api_endpoint            = api_endpoint
    @verb                    = api_call_options["verb"]
    @url                     = api_call_options["url"]
    @params                  = api_call_options["params"]
    @title                   = derive_title_from_params #(@verb + @url).gsub("/", "-").downcase
    @filename                = @title + ".json"
    @params                  = api_call_options["params"]
    @params["client_id"]     = api_user
    @params["client_secret"] = api_password
  end

  def call!
    puts "`curl -X #{@verb} -d '#{@params.to_param}' #{@api_endpoint}#{@url} | json_reformat"
    `curl -X #{@verb} -d '#{@params.to_param}' #{@api_endpoint}#{@url} | json_reformat` 
  end

  def scrub_params
    @params["client_id"]     = "<Chargify Direct API Site ID>"
    @params["client_secret"] = "<Chargify Direct Site Password>"
    @params
  end

  private

  def derive_title_from_params
    if @params.empty?
      (@verb + @url).gsub("/", "-").downcase
    else
      (@verb + @url + "-" + @params.values.join("-")).gsub("/", "-").downcase
    end
  end
end
