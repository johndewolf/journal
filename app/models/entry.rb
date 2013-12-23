class Entry < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :content

  has_many :categorizations,
    inverse_of: :entry

  has_many :categories,
    through: :categorizations
end
