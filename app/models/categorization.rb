class Categorization < ActiveRecord::Base
  validates_presence_of :entry
  validates_presence_of :category

  belongs_to :entry,
    inverse_of: :categorizations

  belongs_to :category,
    inverse_of: :categorizations

end
