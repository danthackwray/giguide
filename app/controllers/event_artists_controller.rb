class EventArtistsController < ApplicationController
  before_action :set_event_artist, only: %i[ show edit update destroy ]

  # GET /event_artists or /event_artists.json
  def index
    @event_artists = EventArtist.all
  end

  # GET /event_artists/1 or /event_artists/1.json
  def show
  end

  # GET /event_artists/new
  def new
    @event_artist = EventArtist.new
  end

  # GET /event_artists/1/edit
  def edit
  end

  # POST /event_artists or /event_artists.json
  def create
    @event_artist = EventArtist.new(event_artist_params)

    respond_to do |format|
      if @event_artist.save
        format.html { redirect_to event_artist_url(@event_artist), notice: "Event artist was successfully created." }
        format.json { render :show, status: :created, location: @event_artist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_artists/1 or /event_artists/1.json
  def update
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
