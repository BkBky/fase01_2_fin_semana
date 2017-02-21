class View
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  # Los siguientes métodos son sólo un ejemplo:
  
	def index(option)
    if option == "index" 

      puts "Menú de Bienvenida:"

      puts "Bienvenido a Vuelos Codea"
      puts "--------------------------------------------------"
      puts "1) Reservaciones"
      puts "2) Administrador"
      puts "3) Salir"

      puts "Selecciona opción:" 
      puts "Consejo: Para seleccionar tu opción escribe 'ruby flight.rb selected (número del menu)':" 
     

    end

	end

  def selected(selection, users)
    if selection == '1'
      puts "--------------------------------------------------"
      puts "               ¡¡¡Bienvenido!!!              "   
      puts "--------------------------------------------------"
      puts "1) Encuentra tu boleto de avión"
      puts "2) Salir" 
      puts
      puts "Selecciona una opción:"
      puts
      puts "Consejo: escribe 'ruby flight.rb customer (número del menu)':" 
      puts
    elsif selection == '2'
      puts "Bienvenido Administrador"
      puts "--------------------------------------------------"
      puts
      puts "Ingrese usuario:" 
      puts
      puts "Consejo: escribe 'ruby flight.rb selected (nombre)':" 
      puts
    end
    users.each do |user|
      if selection == "#{user.name}" 
        puts
        puts "Ingrese contraseña:"
        puts
        puts "Consejo: escribe 'ruby flight.rb selected (contraseña)':" 
        puts
      end
    end   
    


  end

  def administrator_menu 
    puts "Bienvenido Administrador"
    puts "--------------------------------------------------"
    puts "1) Muestra todos los vuelos   (Consejo: ruby flight.rb all 1)"  
    puts "2) Muestra todas las reservaciones (Consejo: ruby flight.rb all 2)" 
    puts "3) Crea un nuevo vuelo (Consejo: ruby flight.rb add_flight 'informacion del vuelo')"
    puts "4) Salir"
    puts
    puts "Selecciona opción:" 
    puts
  end

  def all(bookings, flights, selection)
    if selection == "1"

      flights.each do |flight|
        puts "#{flight.num_flight} | #{flight.date} | #{flight.depart} | #{flight.from} | #{flight.to} | #{flight.duration} | #{flight.cost} | #{flight.passengers}"
      end
    elsif selection == "2"
      p bookings
    end
  end

  def add_flight(selection)
    puts "Agregaste un vuelo exitosamente"
    puts selection
  end

	def customer(selection)
    p "para los clientes"
	end
end



      

      



      
