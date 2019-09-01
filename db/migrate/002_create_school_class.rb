class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :title
      t.integer :last_name

      t.timestamps null: false
    end
  end
end