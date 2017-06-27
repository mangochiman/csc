# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_csc_session',
  :secret      => 'b48859a69599591f73acd4ca8ca6271f6b615db6a04e4c9701fe11bab54eaea7121778fc0f289ec865987b1863302bdf03a669142e872f08605d9a16b0412db5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
