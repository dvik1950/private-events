class Event < ApplicationRecord

  belongs_to :creator, :class_name => 'User'


  has_many :appearences, :foreign_key => :event_id

  has_many :attendees, through: :appearences, source: :attendee

end
