class StaticPagesController < ApplicationController
  before_filter :load_tweets
  require 'twitter'


  def index
  end

  def load_tweets
    account = "origennaku"
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "MkYi53JY8meo9eKJwOOKfZ0GR"
      config.consumer_secret     = "sx8KYQhSuJQNlGf58wHoWT5XbsjZE1Nk68EsEkpUeH0gGNnAAj"
      config.access_token        = "580490259-9A9jZggowwKvw7H7JuMBPc1QWTFs1mlgQGdslWu9"
      config.access_token_secret = "rZmPaE5VNVyMXxDT1fm6IAXoWsXo9AWAhFXPLe0SEaMF5"
    end
    @twitter_user = account
    @tweet_news = client.user_timeline(@twitter_user, {count: 4})
  end

  def contacto
  end

  def xaltipan
  end

  def tierradegloria
  end

  def universitarios
    @feedback = Feedback.new
  end

  def voluntariado
    @feedback = Feedback.new
  end

  def admin
  end
end
