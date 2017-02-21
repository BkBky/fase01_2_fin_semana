class Controller 
  def initialize(args)
    @view = View.new
    menu(args)

  end

  def menu(args)
    selection = args[1..args.length].join(" ")
    option = args[0] 
    case option
      when "index" then index(option)
      when "selected" then selected(selection)
      when "administrator_menu" then administrator_menu(selection)
      when "all" then  all(selection)
      when "add_flight" then  add_flight(selection, args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8])
      when "customer" then customer(selection)
      
    end
  end
  
  def index(option)
      @view.index(option) 
  end 

  def selected(selection)
    users = User.all
    users.each do |user|
      if selection == "#{user.password}"
         administrator_menu()
      end
    end

    @view.selected(selection, users) 
  end
  
  def administrator_menu
    @view.administrator_menu
  end

  def all(selection)
    flights = Flight.all
    bookings = Booking.all
    @view.all(bookings, flights, selection)
  end

  def add_flight(selection, selection1, selection2, selection3, selection4, selection5, selection6, selection7, selection8)
    admin_input = Flight.create(num_flight: "#{selection1}", date: "#{selection2}", depart: "#{selection3}", from: "#{selection4}", to: "#{selection5}", duration: "#{selection6}", cost:"#{selection7}", passengers: "#{selection8}")
    @view.add_flight(selection)  
  end
  def customer(selection)
     @view.customer(selection)
  end

end
