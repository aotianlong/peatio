class AddReaderTypeToReadMarks < ActiveRecord::Migration
  def change
    add_column :read_marks, :reader_type, :string
  end
end
