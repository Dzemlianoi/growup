class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title, null: false
      t.string :description
      t.text :text
      t.boolean :is_active, default: false
      t.integer :order
      t.timestamps
    end
  end
end
