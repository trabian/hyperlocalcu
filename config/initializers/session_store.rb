# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hyperlocalcu_session',
  :secret      => '3e91b8fa5995ec0706b23c88b2ab7387b93f27852fa4f9aec0da419f2759cb78d1b39b7864b36dbd2118d646188632b9881984186fd78a0439d051faa3d89925'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
