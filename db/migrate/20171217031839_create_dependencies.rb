class CreateDependencies < ActiveRecord::Migration[5.1]
  def change
    create_table :dependencies do |t|
      t.references :users_id, foreign_key: true
      t.references :tasks_id, foreign_key: true

      t.timestamps
    end
  end
end
