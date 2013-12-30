class Category < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :categorizations,
    inverse_of: :category

  has_many :entries,
    through: :categorizations

  def self.name_exists?(category)
    if find_by(name: category.name)
      return true
    else
      false
    end
  end
end
