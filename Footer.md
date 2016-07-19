
---
### Usage:
Creating a new instance:
```ruby
require './twitter-ruby.rb'
require 'oauth'
t = TwitterAPI.new(<CONSUMER HERE>, <TOKEN HERE>)
```
Example of usage:
```ruby
t.updateStatus({"status" => "foo bar baz"})
```
Every message returns a NET::HTTP object with parsable JSON.
All methods can be found [here](https://dev.twitter.com/rest/public).
