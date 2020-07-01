class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.references :user, null:false,foreign_key: true
      t.string :name
      t.string :text
      t.text :image
      t.timestamps
    end
  end
end