# Sociality

Sociality is a gem, that copies social-share-button gem, but has more attractive flat-designed buttons, it allows adding "share in ..." buttons for twitter, facebook, google plus and linkedin. You can simply add much more buttons to share. There are many icons in PNG file in app/assets/stylesheets/icons

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sociality'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sociality

## Usage

Just put
```ruby
    <%= social_share_button_tag(post.title, :popup => "true") %>
```
tag into your view files where you want to display buttons. All information about gem functions you can find at github account of the original gem
https://github.com/huacnlee/social-share-button


