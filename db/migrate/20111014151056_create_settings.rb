class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :code
      t.string :password
      t.text :sidebar

      t.timestamps
    end
  end
end
