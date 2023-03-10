class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :title,       null: false
      t.text :text,          null: false
      t.references :user,    null: false, foreign_key: true
      t.references :topic,   null: false, foreign_key: true

      t.timestamps
    end
  end
end
