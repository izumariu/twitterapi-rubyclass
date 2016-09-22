
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
###New!
Create an instance automatically!
Import a file with the contents:
```ruby
require 'oauth'

$consumer_key = OAuth::Consumer.new(<CONSUMER>,<SECRET>)
$api_token = OAuth::Consumer.new(<API TOKEN>,<API SECRET>)
```
and then call
```ruby
<VARIABLE NAME> = TwitterAPI.autoConstruct
#ALTERNATIVE: TwitterAPI::autoConstruct
```

Every message returns a NET::HTTP object with parsable JSON.
All methods can be found [here](https://dev.twitter.com/rest/public).
