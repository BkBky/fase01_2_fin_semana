# Este archivo sirve para crear registros de prueba

Flight.create(num_flight: '96384', date: '2015-06-15', depart:'11:17:16 UTC', from:'Western Sahara', to:'Saudi Arabia', duration:'7:00:00', cost:'829.50', passengers:'8')
Flight.create(num_flight: '35472', date: '2015-06-15', depart:'13:36:40', from:'Western Sahara', to:'Saudi Arabia', duration:'7:00:00', cost:'748.45', passengers:'10')
Flight.create(num_flight: '63669', date: '2015-06-15', depart:'14:47:27', from:'Western Sahara', to:'Saudi Arabia', duration:'7:00:00', cost:'4434.0', passengers:'23')

User.create(name: 'Betzabe', email: 'bek@gmail.com', admin:'x', password:'123')
User.create(name: 'Ivan', email: 'ivan@gmail.com', admin:' ', password:'')

Booking.create(num_booking:'1', total:'1', flight_id: '1701-3' )
