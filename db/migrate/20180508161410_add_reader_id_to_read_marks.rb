class AddReaderIdToReadMarks < ActiveRecord::Migration
  def change
    add_column :read_marks, :reader_id, :integer
  end
end
