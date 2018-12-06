class List < ApplicationRecord
	#acts_as_list
 	#has_many :cards, ->{ order(position: :asc) }, dependent: :destroy
 	belongs_to :user
 	has_many :tasks, inverse_of: :list, dependent: :destroy
 	accepts_nested_attributes_for :tasks, reject_if: proc { |attributes| attributes[:name].blank? }, allow_destroy: true
 	#scope :sorted, ->{ order(position: :asc) }
	validates :name, presence: true
end
