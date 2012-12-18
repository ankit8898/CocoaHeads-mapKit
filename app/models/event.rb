class Event 

	attr_accessor :name, :address, :location, :date_as_text, :talks

  CUPERTINO_LOCATION = {:latitude => 37.334815, :longitude => -122.029781}

	def self.mock_event

		mock_event = Event.new
		mock_event.name = "November meeting"
		mock_event.address = "Main St 107, Westlake, Seatle MA" 
    mock_event.date_as_text = "Sat 14th November 2012"       
		mock_event.location = CLLocationCoordinate2DMake( CUPERTINO_LOCATION[:latitude], CUPERTINO_LOCATION[:longitude] )
    mock_event.talks = [Talk.mock_talk, Talk.mock_talk]
    mock_event
	end		

end