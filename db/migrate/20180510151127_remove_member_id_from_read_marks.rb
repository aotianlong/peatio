class RemoveMemberIdFromReadMarks < ActiveRecord::Migration[5.2]
  def change
    remove_column :read_marks,:member_id
  end
end
