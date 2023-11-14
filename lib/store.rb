class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3, message: "min 3 char name"}
  validates :annual_revenue, numericality: {greater_than: 0,  message: "store revenue invalid"}

  validate :contains_men_or_womens

  private

  def contains_men_or_womens
    if(mens_apparel != true && womens_apparel != true)
      errors.add(:base, "must contain men or women's apparel")
    end
  end
end
