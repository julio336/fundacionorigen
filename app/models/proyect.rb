class Proyect < ActiveRecord::Base
  attr_accessible :description, :photo, :thumb, :title, :subtitle, :back_image, :galeria1, :galeria2, :galeria3, :galeria4
  
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  #def should_generate_new_friendly_id?
 	#new_record?
  #end
end
