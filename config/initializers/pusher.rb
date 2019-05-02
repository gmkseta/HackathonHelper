require 'pusher'

secret_key =  Rails.application.credentials[Rails.env.to_sym][:PUSHER]
Pusher.app_id = secret_key[:PUSHER_APP_ID]
Pusher.key = secret_key[:PUSHER_KEY]
Pusher.secret = secret_key[:PUSHER_SECRET]
Pusher.cluster = secret_key[:PUSHER_CLUSTER]
Pusher.logger = Rails.logger
Pusher.encrypted = true
Pusher.timeout = 300000
