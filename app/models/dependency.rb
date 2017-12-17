class Dependency < ApplicationRecord
  belongs_to :users_id
  belongs_to :tasks_id
end
