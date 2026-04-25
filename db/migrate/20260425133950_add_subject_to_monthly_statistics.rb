class AddSubjectToMonthlyStatistics < ActiveRecord::Migration[7.2]
  def change
    add_column :monthly_statistics, :subject, :string
  end
end