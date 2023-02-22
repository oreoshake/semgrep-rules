class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    # ok: index-may-be-needed-copy
    add_column :users, :email_id, :integer
    add_index :users, :email_id

    # ok: index-may-be-needed-copy
    add_column :users4, :email4_id, :integer, foo:bar
    add_index :users4, :email4_id, name: "asdf"


    # ruleid: index-may-be-needed-copy
    add_column :users3, :email3_id, :integer, { other_stuff: :asdf }
  end
end
