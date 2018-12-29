class MainController < ApplicationController
  def index
  end


  def createmarker

  	@lat = params[:lat]
  	@lng = params[:lng]

  	@m = Marker.create(lat: @lat, lng: @lng)
  	@m.save

  	respond_to do |format|
    	format.text { render plain: "Marker created" }
    end

  end


  def checkmarkers

  	@m = Marker.last

  	respond_to do |format|
    	format.text { render json: {lat: @m.lat, lng: @m.lng} }
    end
  end

end
