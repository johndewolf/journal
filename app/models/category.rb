class Category < ActiveRecord::Base
  validates_presence_of :name

  has_many :categorizations,
    inverse_of: :category

  has_many :entries,
    through: :categorizations

  def articles_within_category(category_name)
    category_name.entries.all
  end
end
