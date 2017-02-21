class CreateFlights < ActiveRecord::Migration
  
  def change
    create_table :flights do |t|
      t.belongs_to :bookings
      t.integer :num_flight
      t.date :date
      t.time :depart
      #t.timestamp :depart
      t.string :from
      t.string :to
      t.time :duration
      t.float :cost
      t.integer :passengers
    end
     
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :admin 
      t.string :password
    end

    create_table :bookings do |t|
      t.integer :num_booking 
      t.integer :total 
      t.integer :flight_id
    end

    create_table :users_booking, id: false do |t|
      t.belongs_to :user
      t.integer :booking_id
    end

    create_table :users_flight, id: false do |t|
      t.belongs_to :user
      t.belongs_to :flight
    end

  end
end
