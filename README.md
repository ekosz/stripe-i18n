StripeI18n
==========

[![Build
Status](https://secure.travis-ci.org/ekosz/stripe-i18n.png)](http://travis-ci.org/ekosz/stripe-i18n)

The gem adds a collection of translated error strings for `Stripe::CardError`.

**Supported Locales:**

1. en

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'stripe-i18n'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stripe-i18n

## Usage

Use the code on the error object (`Stripe::CardError`) to get the correct
translation key.

```ruby
def charge_token(token, amount)
  Stripe::Charge.create(
    amount: amount,
    currency: 'usd',
    card: token,
  )

  { success: true, msg: I18n.translate('charge.success') }
rescue Stripe::CardError => e
  { success: false, msg: I18n.translate("stripe.errors.#{e.code}") }
end
```

## Contributing

1. Fork it ( https://github.com/ekosz/stripe-i18n/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
