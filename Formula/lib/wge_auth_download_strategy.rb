class WGEAuthDownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    meta ||= {}
    meta[:user] ||= "#{ENV['HOMEBREW_WGE_USERNAME']}:#{ENV['HOMEBREW_WGE_PASSWORD']}"
    super(url, name, version, meta)
  end
end

