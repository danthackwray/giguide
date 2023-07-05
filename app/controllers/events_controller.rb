class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  # GET /events or /events.json
  def index
    if params[:query].present?
      @events = Event.search_by_title_and_description(params[:query])
    else
      @events = Event.all
    end
  end

  # GET /events/1 or /events/1.json
  def show
    @events = Event.find(params[:id])
  end

  # GET /events/new
  def new
    @event = Event.new
  end



  # GET /events/1/edit
  def edit
    @events = Event.find(params[:id])
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)
    puts "Artist IDs: #{@event.artist_ids.inspect}"
    @event.user = current_user

    respond_to do |format|
      if @event.save
        format.html { redirect_to event_url(@event), notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # def create
  #   @event = Event.new(event_params)
  #   @event.user = current_user
  #   if @event.save
  #     params[:event][:artist_ids].each do |artist_id|
  #       @event.event_artists.create(artist_id: artist_id) unless artist_id.empty?
  #     end
  #     flash[:success] = "Event created successfully."
  #     redirect_to @event
  #   else
  #     render 'new'
  #   end
  # end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    @events = Event.find(params[:id])
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to event_url(@event), notice: "Event was successfully updated." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:user_id, :venue_id, :title, :description, :start_date, :end_date, :photo, :ticket_price, :capacity, artist_ids: [])
    end
end
