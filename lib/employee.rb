class Employee < ActiveRecord::Base
    belongs_to :store

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates_inclusion_of :hourly_rate, in: 40..200
    validates_numericality_of :hourly_rate, only_integer: true
    validates_associated :store
end
