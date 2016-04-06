class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.datetime :entry_at

      t.timestamps null: false
    end

    add_reference :classrooms, :course, index: true, foreign_key: true
    add_reference :classrooms, :student, index: true, foreign_key: true
  end
end
