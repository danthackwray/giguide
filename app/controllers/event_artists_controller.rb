class EventArtistsController < ApplicationController
  before_action :set_event_artist, only: %i[ show edit update destroy ]

  # GET /event_artists or /event_artists.json
  def index
    @event_artists = EventArtist.all
  end

  # GET /event_artists/1 or /event_artists/1.json
  def show
    @event_artists = Event_artists.find(params[:id])
  end

  # GET /event_artists/new
  def new
    @event = Event.new
    @event.event_artists << EventArtist.new
  end

  # GET /event_artists/1/edit
  def edit
    @event_artists = Event_artists.find(params[:id])
  end

  # POST /event_artists or /event_artists.json
  def create
    @event = Event.find(params[:event_id])
    @event_artist = EventArtist.new
    @event_artist.event = @event
    @event_artist.artist = Artist.find(params[:artist_id])
    if @event_artist.save
      redirect_to event_path(@event), notice: "Artist was successfully added to this event."
    else
      redirect_to event_path(@event), notice: "Could not add artist to event."
    end
  end
  # def create
  #   @event_artist = EventArtist.new(event_artist_params)
  #   if @event_artist.save
  #     flash[:notice] = "Artist added successfully!"
  #     redirect_to new_event_path  # or edit_event_path(@event_artist.event_id) if you're editing
  #   else
  #     flash[:alert] = "Failed to add the artist!"
  #     redirect_to new_event_path # render new artist form if the creation was unsuccessful
  #   end
  # end

  # PATCH/PUT /event_artists/1 or /event_artists/1.json
  def update
    @event_artists = Event_artists.find(params[:id])
    respond_to do |format|
      if @event_artist.update(event_artist_params)
        format.html { redirect_to event_artist_url(@event_artist), notice: "Event artist was successfully updated." }
        format.json { render :show, status: :ok, location: @event_artist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_artists/1 or /event_artists/1.json
  def destroy
    @event_artist.destroy

    respond_to do |format|
      format.html { redirect_to event_artists_url, notice: "Event artist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_artist
      @event_artist = EventArtist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_artist_params
      params.require(:event_artist).permit(:event_id, :artist_id)
    end
end
