class Task < ApplicationRecord
	validates :title, presence: true
	validates :text, presence: true, length: { minimum: 5 }
	validates :priority, presence: true
	validates :duedate, presence: true
end
