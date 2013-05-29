class Event < ActiveRecord::Base

  validates :date, :presence => true
  validates :title, :uniqueness => true
  validates :title, :presence => true
  validates :organizer_name, :presence => true
  validates :organizer_email, :format => { :with => /.*[@].*[\.].*/, :message => "must have @ and a (.)"}


end


