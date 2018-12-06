class List < ApplicationRecord
 	belongs_to :user
 	has_many :tasks, inverse_of: :list, dependent: :destroy
 	accepts_nested_attributes_for :tasks, reject_if: proc { |attributes| attributes[:name].blank? }, allow_destroy: true
	validates :name, presence: true
end
