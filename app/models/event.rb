class Event < ApplicationRecord
scope :past, -> {where('held_on > ?', DateTime.now)}
scope :upcoming, -> {where('held_on < ?', DateTime.now)}

  belongs_to :creator, :class_name => 'User'


  has_many :appearences, :foreign_key => :event_id

  has_many :attendees, through: :appearences, source: :attendee

end
