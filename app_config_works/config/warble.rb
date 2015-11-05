# rubocop:disable Metrics/LineLength
Warbler::Config.new do |config|
  # Destination for the WAR file
  config.autodeploy_dir = 'war'
  config.includes += FileList["public/assets/.sprockets-manifest-*.json"]
end
