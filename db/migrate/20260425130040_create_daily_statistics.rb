class CreateDailyStatistics < ActiveRecord::Migration[7.2]
  def change
    create_table :daily_statistics do |t|
      t.date :date
      t.string :subject
      t.integer :daily_low
      t.integer :daily_high
      t.integer :result_count

      t.timestamps
    end

    add_index :daily_statistics, [:date, :subject], unique: true
  end
end