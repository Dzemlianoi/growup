class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :title
      t.string :description
      t.integer :completing_time_minutes
      t.belongs_to :course
      t.timestamps
    end
  end
end
