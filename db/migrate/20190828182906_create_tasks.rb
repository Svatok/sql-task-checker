class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.references :project, foreign_key: true
    end
  end
end
