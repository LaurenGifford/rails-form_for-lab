class CreateStudentClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :student_classes do |t|
      t.integer :student_id
      t.integer :school_class_id
      t.boolean :current

      t.timestamps
    end
  end
end
