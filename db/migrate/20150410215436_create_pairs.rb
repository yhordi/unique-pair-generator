class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.integer :student_id
      t.integer :partner_id
    end
  end
end
