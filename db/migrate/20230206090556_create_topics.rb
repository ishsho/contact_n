class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :title_name,   null: false
      t.references :user_id,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
