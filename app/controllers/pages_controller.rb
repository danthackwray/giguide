class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @events = Event.search_by_title_and_description(params[:query])
    else
      @events = Event.all
    end
  end
end
