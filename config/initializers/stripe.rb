Rails.configuration.stripe = { 
    :publishable_key => 'pk_test_51LVdU5FSVR4ZEBnz06KloGnzbq4se5jtrN1ImjvQqNe3Ickn85wX0EmfUJmuQTguThwCk4N1n5Z8nvgNmtEFmoIi00yie34Q1a', 
    :secret_key => 'sk_test_51LVdU5FSVR4ZEBnzC47bCFtAUmp09O4J9Mv911Mcero6IU4mOXTlTIk1UCPFyCcOwHukHIcY08FBc7A149NVm1Jt00xG2zYmp7'
  }   

Stripe.api_key = Rails.configuration.stripe[:secret_key]