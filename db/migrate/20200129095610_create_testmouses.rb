class CreateTestmouses < ActiveRecord::Migration[6.0]
  def change
    create_table :testmouses do |t|

      t.timestamps
    end
  end
end
