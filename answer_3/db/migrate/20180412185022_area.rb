class Area < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string     :name
      t.float      :nota, null: false, default: 0
      t.integer    :parent_id
      t.timestamps null: false
    end
  end
end
