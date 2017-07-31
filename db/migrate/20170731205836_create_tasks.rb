class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :due
      t.integer :takes
      t.boolean :top_priority
      t.boolean :reoccur
      t.integer :interval
      t.boolean :done
    end
  end
end
