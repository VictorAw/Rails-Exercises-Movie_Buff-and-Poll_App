class ChangeAuthorTypeToIntger < ActiveRecord::Migration
  def change
    remove_column(:polls, :author)

    change_table(:polls)  do |t|
      t.column :author, :integer, null: false
    end
  end
end
