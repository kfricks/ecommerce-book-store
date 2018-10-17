class StripeServices::CreateCharge
  def self.call(book, user, stripe_token)
    amount = (book.price * 100).to_i

    stripe_charge = Stripe::Charge.create(
      amount: book.stripe_amount,
      currency: "usd",
      source: stripe_token, #obtained with Stripe.js
      description: "#{user.email} purchased #{@book.title}"
      )
  end
end
