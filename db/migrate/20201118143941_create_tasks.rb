class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :status, default: false
      t.datetime :deadline
      t.belongs_to :category, index: true
      t.timestamps
    end
  end
end
