# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Journal::Application.config.secret_key_base = '6f73eab1d8da1273e2492088f76aa47363417347f2436a101728146bdc7094e721c1ed94c47683c638857e715369abc994f3633aae34796d9cd8e91e5aeac593'
