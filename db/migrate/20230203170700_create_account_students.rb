class CreateAccountStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :account_students do |t|
      t.string :name
      t.string :account_name
      t.string :password

      t.timestamps
    end
  end
end
