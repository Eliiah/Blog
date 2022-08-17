Rails.configuration.stripe = {
    :publishable_key => Rails.application.secrets.publishable_key,
    :stripe_api_key  => Rails.application.secrets.secret_key
    }
 
Stripe.api_key = Rails.configuration.stripe[:stripe_api_key]