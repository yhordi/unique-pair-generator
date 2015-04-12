class Student < ActiveRecord::Base
  has_many :pairs
  has_many :partners, :through => :pairs
  has_many :inverse_pairs, :class_name => "Pair", :foreign_key => "friend_id"
  has_many :inverse_partners, :through => :inverse_pairs, :source => :student
end
