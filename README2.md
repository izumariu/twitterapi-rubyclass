### **NOTE:** _This is just an incomplete beta version. Every single non-deprecated method will be added in the future._
#### _Please report bugs immidiately, so I can fix them. Thanks! ;)_
##### ~~Strikethrough~~ = Method in script, but not available yet.
### _search_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| search | search/tweets.json |
### _statuses_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getTimelineMentions | statuses/mentions_timeline.json |
| getUserTimeline | statuses/user_timeline.json |
| getHomeTimeline | statuses/home_timeline.json |
| getRetweetsOfMe | statuses/retweets_of_me.json |
| getRetweetsById | statuses/retweets/#{id}.json |
| showStatusById | statuses/show/#{id}.json |
| destroyStatusById | statuses/destroy/#{id}.json |
| updateStatus | statuses/update.json |
| retweetStatusById | statuses/retweet/#{id}.json |
| unretweetStatusById | statuses/unretweet/#{id}.json |
| getStatusOembed | https://publish.twitter.com/oembed.json |
| getRetweeterIds | statuses/retweeters/ids.json |
| lookupStatus | statuses/lookup.json |
### _direct messages_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getSentMessages | direct_messages/sent.json |
| showMessage | direct_messages/show.json |
| getMessages | direct_messages.json |
| destroyMessageById | direct_messages/destroy.json |
| newDirectMessage | direct_messages/new.json |
### _friendships_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getFriendsNoRtsIds | friendships/no_retweets/ids.json |
| getIncomingFriendships | friendships/incoming.json |
| getOutgoingFriendships | friendships/outgoing.json |
| followUser | friendships/create.json |
| unfollowUser | friendships/destroy.json |
| updateFriendships | friendships/update.json |
| showFriendships | friendships/show.json |
| lookupFriendships | friendships/lookup.json |
### _friends / followers_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getFriendIds | friends/ids.json |
| getFollowerIds | followers/ids.json |
| getFriendList | friends/list.json |
| getFollowerList | followers/list.json |
### _account_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| postAccountSettings | account/settings.json |
| updateProfile | account/update_profile.json |
| ~~updateProfileImage~~ | -------- |
### _blocks_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| getBlockList | blocks/list.json |
| getBlockIds | blocks/ids.json |
| blockUser | blocks/create.json |
| unblockUser | blocks/destroy.json |
### _users_
| Method as `__method__(params={})` | API JSON Endpoint |
|:---:|:---:|
| lookupUsers | users/lookup.json |
| showUser | users/show.json |
| searchUsers | users/search.json |
| ~~userSlug~~ | -------- |
