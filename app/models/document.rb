class Document < ActiveRecord::Base
  attr_accessible :name

  has_many :dinos
end
