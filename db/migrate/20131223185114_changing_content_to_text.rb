class ChangingContentToText < ActiveRecord::Migration
  def up
    change_column :entries, :content, :text, null: false
  end

  def down
    change_column :entries, :content, :string, null: false
  end
end
