Rails.application.config.middleware.use OmniAuth::Builder do
  # skipping jwt because the front end isnt seperate
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], skip_jwt: true
end