class CreateMonthlyStatistics < ActiveRecord::Migration[7.2]
  def change
    create_table :monthly_statistics do |t|
      t.string :month
      t.string :subject
      t.float :avg_low
      t.float :avg_high
      t.integer :result_count

      t.timestamps
    end

    add_index :monthly_statistics, [:month, :subject], unique: true
  end
end