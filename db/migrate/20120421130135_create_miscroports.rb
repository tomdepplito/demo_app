class CreateMiscroports < ActiveRecord::Migration
  def change
    create_table :miscroports do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
