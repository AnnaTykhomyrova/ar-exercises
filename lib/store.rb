class Store < ActiveRecord::Base
    has_many :employees

    validates :name, length: { minimum: 3, message: "3 characters is the maximum allowed" }
    validates :annual_revenue, numericality: { greater_than: 0 }

    def must_carry
        errors.add(:base, "There is no apparel for this store") if :mens_apparel == false && :womens_apparel == false
    end
end
