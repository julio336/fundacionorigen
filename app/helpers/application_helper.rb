require 'twitter-text'

module ApplicationHelper
 include Twitter::Autolink
 
  def twitter_text(text)
    text = auto_link(text, target: "_blank")
    text ? text.html_safe : ''
  end
end
