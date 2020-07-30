class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @garages = Garage.search_by_title_and_address(params[:query])
    else
      @garages = Garage.all
    end
  end

end
