class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.references :user, null:false,foreign_key: true
      t.string :text, null:false
      t.text :image, null:false
      t.timestamps
    end
  end
end