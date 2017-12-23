class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.references :admin, index: true, foreign_key: true
      t.references :booking, index: true, foreign_key: true
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
