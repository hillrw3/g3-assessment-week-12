class Cage < ActiveRecord::Base

  validates :name, :year, :presence => true
  validates_numericality_of :year, only_integer: true
end