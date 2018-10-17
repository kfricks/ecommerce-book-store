require "stripe"
Stripe.api_key = EcommerceBookStore::Application.credentials.stripe[:secret_key]
