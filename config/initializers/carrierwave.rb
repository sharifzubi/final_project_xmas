CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                                          # required
    :aws_access_key_id      => 'AKIAINSTMP7QYBLMWOZA',                         # required
    :aws_secret_access_key  => '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',     # required
    :region                 => 'eu-west-1',                                    # optional, defaults to 'us-east-1'
    :host                   => 's3.example.com',                               # optional, defaults to nil
    :endpoint               => 'https://s3.example.com:8080'                   # optional, defaults to nil
  }
  config.fog_directory  = 'ga-final-project'                                   # required
  config.fog_public     = true                                                 # optional, defaults to true
end
