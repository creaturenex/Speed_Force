json.extract! speedforce_user, :id, :name, :phone, :email, :emergency_contact_name, :emergency_contact_phone, :emergency_contact_email, :force, :speed, :latitude, :longitude, :created_at, :updated_at
json.url speedforce_user_url(speedforce_user, format: :json)
