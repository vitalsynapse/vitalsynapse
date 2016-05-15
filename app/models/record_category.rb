class RecordCategory < ActiveRecord::Base
  has_many :healths
  accepts_nested_attributes_for :healths  
end
