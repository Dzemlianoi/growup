class CreateUserTests < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tests do |t|
      t.belongs_to :user
      t.belongs_to :test
      t.datetime :started_at
      t.datetime :finished_at
      t.boolean :finished
      t.timestamps
    end
  end
end
