# EncryptBlowfish

Welcome,

We create this gem to easily solve our problem of encrypting data through a url with a key.

With this gem you can encrypt a block of text, send through a url to another sistem and decrypting on the other side with a key.

Ruby implementation of the encryption Blowfish symmetric-key block cipher.

## Usage
pad_with_spaces
Create an object of the class setting the key of the algorithm and function of "pad with spaces".
You need to use a encryption key with length multiple of  8 and no longer than 56.

```ruby
blow_fish = EncryptBlowfish::Blowfish.new("x"*56, true)
```

Use encrypt method with some kind of text
```ruby
encrypted_text = blow_fish.encrypt("Some text")
```
And decrypt
```ruby
decrypted_text = blow_fish.decrypt(encrypted_text)
```
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'encrypt_blowfish', git: "https://github.com/Ivangrx/encrypt_blowfish"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install encrypt_blowfish

## Usage

Add to the gem file

gem encrypt_blowfish

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/encrypt_blowfish. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## Credits
@Ivangrx
@kotick

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

