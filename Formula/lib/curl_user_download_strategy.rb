class CurlUserDownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    meta ||= {}
    meta[:user] ||= ENV['HOMEBREW_CURL_USER']
    super(url, name, version, meta)
  end
end

