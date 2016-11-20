class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :age, :string
    add_column :users, :gender, :string
    add_column :users, :nationality, :string
    add_column :users, :occupation, :string
    add_column :users, :dob, :date
  end
end
