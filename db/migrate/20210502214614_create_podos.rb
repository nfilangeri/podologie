class CreatePodos < ActiveRecord::Migration[6.1]
  def change
    create_table :podos do |t|

      t.timestamps
    end
  end
end
