class MakeChangesToBooks < ActiveRecord::Migration[7.0]
  def change
    # rename title to name
    rename_column :books, :title, :name
    # change description to text instead of string 
    change_column :books, :description, :text
    # remove isbn column
    remove_column :books, :isbn, :string
  end
end
