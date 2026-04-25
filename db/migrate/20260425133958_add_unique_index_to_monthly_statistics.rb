class AddUniqueIndexToMonthlyStatistics < ActiveRecord::Migration[7.2]
  def change
    add_index :monthly_statistics, [:month, :subject], unique: true
  end
end