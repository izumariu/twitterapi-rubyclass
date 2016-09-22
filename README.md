### **NOTE:** _This is just an incomplete beta version. Every single non-deprecated method will be added in the future._
#### _Please report bugs immidiately, so I can fix them. Thanks! ;)_
##### ~~Strikethrough~~ = Method in script, but not available yet.
###### `foo/#{bar}.json` acts like `foo/:bar.json`
### _easier constructing_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| ~~~~ | -------- |
### _search_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| search | /search/tweets.json |
### _statuses_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getTimelineMentions | /statuses/mentions_timeline.json |
| getUserTimeline | /statuses/user_timeline.json |
| getHomeTimeline | /statuses/home_timeline.json |
| getRetweetsOfMe | /statuses/retweets_of_me.json |
| getRetweetsById | /statuses/retweets/#{id}.json |
| showStatusById | /statuses/show/#{id}.json |
| destroyStatusById | /statuses/destroy/#{id}.json |
| updateStatus | /statuses/update.json |
| retweetStatusById | /statuses/retweet/#{id}.json |
| unretweetStatusById | /statuses/unretweet/#{id}.json |
| getStatusOembed | /oembed.json |
| getRetweeterIds | /statuses/retweeters/ids.json |
| lookupStatus | /statuses/lookup.json |
### _direct messages_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getSentMessages | /direct_messages/sent.json |
| showMessage | /direct_messages/show.json |
| getMessages | /direct_messages.json |
| destroyMessageById | /direct_messages/destroy.json |
| newDirectMessage | /direct_messages/new.json |
### _friendships_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getFriendsNoRtsIds | /friendships/no_retweets/ids.json |
| getIncomingFriendships | /friendships/incoming.json |
| getOutgoingFriendships | /friendships/outgoing.json |
| followUser | /friendships/create.json |
| unfollowUser | /friendships/destroy.json |
| updateFriendships | /friendships/update.json |
| showFriendships | /friendships/show.json |
| lookupFriendships | /friendships/lookup.json |
### _friends / followers_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getFriendIds | /friends/ids.json |
| getFollowerIds | /followers/ids.json |
| getFriendList | /friends/list.json |
| getFollowerList | /followers/list.json |
### _account_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| postAccountSettings | /account/settings.json |
| updateProfile | /account/update_profile.json |
| ~~updateProfileImage~~ | -------- |
### _blocks_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getBlockList | /blocks/list.json |
| getBlockIds | /blocks/ids.json |
| blockUser | /blocks/create.json |
| unblockUser | /blocks/destroy.json |
### _users_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| lookupUsers | /users/lookup.json |
| showUser | /users/show.json |
| searchUsers | /users/search.json |
| getUserSugSlug | /users/suggestions/#{slug}.json |
| getUserSuggestions | /users/suggestions.json |
| getUserSugSlugMembers | /users/suggestions/#{slug}.json |
| reportSpam | /users/report_spam.json |
### _favorites_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getFavoritesList | /favorites/list.json |
| favor | /favorites/create.json |
| unfavor | /favorites/destroy.json |
### _lists_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getLists | /lists/list.json |
| getStatusesList | /lists/statuses.json |
| addListMember | /lists/members/create.json |
| removeListMember | /lists/members/destroy.json |
| getListMemberships | /lists/memberships.json |
| getListSubscribers | /list/subscribers.json |
| subscribeUserToList | /lists/subscribers/create.json |
| showListSubscribedUser | /lists/subscribers/show.json |
| removeSubscriberFromList | /lists/subscribers/destroy.json |
| addUsersToList | /lists/members/create_all.json |
| removeUsersFromList | /lists/members/destroy_all.json |
| showListMember | /lists/members/show.json |
| getListMembers | /lists/members.json |
| createList | /lists/create.json |
| updateList | /lists/update.json |
| destroyList | /lists/destroy.json |
| showList | /lists/show.json |
| getListSubscriptions | /lists/subscriptions.json |
| getListOwnerships | /lists/ownerships.json |
### _saved searches_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getSavedSearchesList | /saved_searches/list.json |
| showSavedSearchById | /saved_searches/show/#{id}.json |
| createSavedSearch | /saved_searches/create.json |
| deleteSavedSearch | /saved_searches/destroy/#{id}.json |
### _geo_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getGeoInfo | /geo/id/#{place_id}.json |
| getReverseGeocode | /geo/reverse_geocode.json |
| searchGeo | /geo/search.json |
### _trends_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getTrendsByWoeid | /trends/place.json |
| getAvailableTrends | /trends/available.json |
| getClosestToTrends | /trends/closest.json |
### _application_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getAppRateLimitStatus | /application/rate_limit_status.json |
### _help_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getConfig | /help/configuration.json |
| getSupportedLangs | /help/languages.json |
| getPrivacyPolicy | /help/privacy.json |
| getTermsOfService | /help/tos.json |


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
