class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.integer :article_id
      t.integer :event_id

      t.timestamps
    end
  end
end
