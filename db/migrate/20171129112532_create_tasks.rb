class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.text :task_text

      t.timestamps
    end
  end
end
