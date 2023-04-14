class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/events" do
    events = Event.all.order(:event_date)
    events.to_json(include: :venue)
  end
  get "/events/:id" do
    events = Event.find(params[:id])
    events.to_json
  end


  get "/event_staff/:id" do
    event = Event.find(params[:id])
    e_staff = event.assigned_staff
    e_staff.to_json
  end

  get "/venues" do
    venues = Venue.all.to_json
  end

  get "/staff" do
    staff = Staff.all.to_json
  end

  patch "/events_staffs/:id" do
    event = Event.find(params[:id])
    event_staff_var = params.select { |key, value| value != "" }

    found_staff =
      event_staff_var
        .map { |k, v| ["#{k.downcase}_id", v.to_i] }
        .to_h
        .select { |k, v| k != "id_id" }

    event_staff = EventStaff.create(found_staff)
    event.update(event_staff_id: event_staff.id)
    event.to_json
  end

  patch "/events/:id" do
    event = Event.find(params[:id])
    event.update(
      name: params[:eventName],
      event_type: params[:eventType],
      number_of_participants: params[:noOfParticipants],
      status: params[:status],
      event_date: params[:eventDate],
      venue_id: params[:eventVenue].id
      # venue_id: Venue.find_by(name: params[:eventVenue]).id
    )
    event.to_json
  end

  post "/events" do
    events =
      Event.create(
        name: params[:eventName],
        event_type: params[:eventType],
        number_of_participants: params[:noOfParticipants],
        status: params[:status],
        event_date: params[:eventDate],
        venue_id: Venue.find_by(name: params[:eventVenue]).id,
        event_staff_id: nil
      )
    events.to_json
  end
  delete "/events/:id" do
    event = Event.find(params[:id])
    event.destroy
    event.to_json
  end
end
