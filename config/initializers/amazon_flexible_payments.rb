if Rails.env.production?
  AmazonFlexPay.access_key = ENV['AMAZON_ACCESS_KEY']
  AmazonFlexPay.secret_key = ENV['AMAZON_SECRET_KEY']
else
  AmazonFlexPay.access_key = Settings.amazon_access_key
  AmazonFlexPay.secret_key = Settings.amazon_secret_key
end
AmazonFlexPay.go_live! if Rails.env.production?
