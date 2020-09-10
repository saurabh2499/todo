class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :text
      t.numeric :priority
      t.date :duedate

      t.timestamps
    end
  end
end

class SetDefault < ActiveRecord::Migration
  def change
    change_column :tasks, :priority, :number_field, default: "1"
  end
end