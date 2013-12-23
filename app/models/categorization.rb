class Categorization < ActiveRecord::Base
  validates :entry_id, presence:true, numericality:true
  validates :category_id, presence:true, numericality:true

  belongs_to :entry,
    inverse_of: :categorizations

  belongs_to :category,
    inverse_of: :categorizations
end
