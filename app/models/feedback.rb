class Feedback < ActiveRecord::Base
  attr_accessible :content

  validates :content, :presence => { :message => "Falto tu mensaje, escribenos algo." }

end
