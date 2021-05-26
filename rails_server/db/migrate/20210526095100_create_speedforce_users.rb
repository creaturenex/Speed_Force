class CreateSpeedforceUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :speedforce_users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :emergency_contact_email
      t.string :force
      t.string :speed
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
