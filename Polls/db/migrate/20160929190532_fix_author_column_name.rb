class FixAuthorColumnName < ActiveRecord::Migration
  def change
    remove_column(:polls, :author)

    change_table(:polls) do |t|
      t.column :author_id, :integer, null: false
    end
  end
end
