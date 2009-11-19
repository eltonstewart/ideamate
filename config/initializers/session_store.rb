# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ideamate_session',
  :secret      => '4ed3e547e5e2007e152c7b28d00eda3a596716ccdd71d1f4b81489a71f8e2a5c4a4c9771044dabfb3f5c073e35dde00fa0c658fe19f15e6ab3c97fb83107461c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
