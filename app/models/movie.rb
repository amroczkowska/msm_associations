class Movie < ActiveRecord::Base

  validates :director_id, :presence => true
  validates :title, :presence => true, :uniqueness => { :scope => :year}
  validates :year, :presence => true, :numericality => { :only_integer => true,  :greater_than_or_equal_to => 1870, :less_than_or_equal_to => 2050}
  validates :duration, :presence => true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 2764800}


  has_many :characters
  has_many :actors, :through => :characters
end
