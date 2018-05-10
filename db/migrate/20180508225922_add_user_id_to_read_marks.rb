class AddUserIdToReadMarks < ActiveRecord::Migration
  def change
    add_column :read_marks, :user_id, :integer
  end
end
