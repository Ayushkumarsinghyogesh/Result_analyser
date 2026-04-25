class CreateTestResults < ActiveRecord::Migration[7.2]
  def change
    create_table :test_results do |t|
      t.string :student_name
      t.string :subject
      t.integer :marks
      t.datetime :timestamp

      t.timestamps
    end

    add_index :test_results, :timestamp
    add_index :test_results, :subject
  end
end