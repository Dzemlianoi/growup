class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :variant
      t.integer :order
      t.belongs_to :test
      t.timestamps
    end
  end
end
