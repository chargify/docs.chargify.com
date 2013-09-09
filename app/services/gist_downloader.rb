class GistDownloader
  def initialize(download_folder, raw_url)
    @download_folder = download_folder
    @raw_url         = raw_url
  end

  def download!
    `cd #{@download_folder} && curl #{@raw_url} -X GET -L -O`  
  end
end
