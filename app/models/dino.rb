class Dino < ActiveRecord::Base
  attr_accessible :content, :name

  belongs_to :original, class_name: "Dino"
  belongs_to :document

  scope :original, where(original_id: nil)

  def copies
    Dino.where(original_id: id)
  end

  def dup
    clone = super
    clone.original = self
    clone
  end
end
