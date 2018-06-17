require 'carrierwave/orm/activerecord'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider               => 'AWS',
      :aws_access_key_id      => '123123123123123',
      :aws_secret_access_key  => '123123123123123123'
    }
    config.fog_directory = ENV['S3_BUCKET']
  end
end
