class Task < ApplicationRecord
  has_and_belongs_to_many :users, :through => :task_relation

  validates :task, presence: true,
                   length: { minimum: 3 }

  scope :completed, -> {
    where(:completed => true)
  }

  scope :todo, -> {
    where(:completed => false)
  }
end
