class AddUniqueIndexToDailyStatistics < ActiveRecord::Migration[7.2]
  def change
    add_index :daily_statistics, [:date, :subject], unique: true
  end
end