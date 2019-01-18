require 'carrierwave/storage/fog'


CarrierWave.configure do |config|
  # if Rails.env.development?
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'fut-app-bucket'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAJXQ7B3E2BJQP4CQA',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1',
      path_style: true
    }
    
end