# Xilence

How often have you got 500 error while developing some super-cool ajax thing and seen stuff like this in your browser console?

![Safari console rails backtrace noise](http://inem.github.com/images/safari-console-rails-backtrace.png)

Do we really need to scroll down all that HTML/CSS noise each time looking on rails error backtrace?
Wanna make your backtraces clean and quiet for ajax requests?

Xilence removes all that annoying HTML and CSS code from your rails backtrace for ajax requests.

Just open your firebug/safari console and click on the broken ajax action link and you should see something like this:

![Firebug xilence output](http://inem.github.com/images/xilence_output.png)

## Installation

In Rails 3 and Bundler, add the following to your Gemfile:

```ruby
group :development do
  gem 'xilence', '~> 2.0.0'
end
```
If you still use rails 2, look at rails_2 branch.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
