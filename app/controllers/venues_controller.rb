class VenuesController < ApplicationController
  before_action :set_venue, only: %i[show edit update destroy]

  # GET /venues or /venues.json
  def index
    @venues = Venue.all
    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {venue: venue})
      }
    end
  end

  # GET /venues/1 or /venues/1.json
  def show
    @venue
  end

  # GET /venues/new
  def new
    @venue = Venue.new
  end

  # GET /venues/1/edit
  def edit
    @venue = Venue.find(params[:id])
  end

  # POST /venues or /venues.json
  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
      redirect_to @venue, notice: "Venue was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /venues/1 or /venues/1.json
  def update
    @venue = Venue.find(params[:id])
    respond_to do |format|
      if @venue.update(venue_params)
        format.html { redirect_to venue_url(@venue), notice: "Venue was successfully updated." }
        format.json { render :show, status: :ok, location: @venue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venues/1 or /venues/1.json
  def destroy
    @venue.destroy

    respond_to do |format|
      format.html { redirect_to venues_url, notice: "Venue was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_venue
    @venue = Venue.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def venue_params
    params.require(:venue).permit(:user_id, :name, :latitude, :longitude, :phone_number, :email, :website, :photo, :capacity)
  end
end
