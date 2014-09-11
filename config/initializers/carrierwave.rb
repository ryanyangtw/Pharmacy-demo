CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJFK2O6UVG3SCIDUQ',                        # required
    :aws_secret_access_key  => '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'                        # required
  }
  config.fog_directory  = 'pharmacy-demo'                     # required
  #config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end