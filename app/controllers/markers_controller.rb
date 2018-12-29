class MarkersController < ApplicationController

  def index
    @markers = Marker.all
  end

  def show
    @marker = Marker.find(params[:id])
  end

  def new
    @marker = Marker.new
  end

  def edit
  end

  def create
    @marker = Marker.new(marker_params)

    respond_to do |format|
      if @marker.save
        format.html { redirect_to "/", notice: 'Marker created.' }
        format.json { render action: 'show', status: :created, location: @marker }
      else
        format.html { render action: 'new' }
        format.json { render json: @marker.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @marker = Marker.find(params[:id])
    respond_to do |format|
      if @marker.update(marker_params)
        format.html { redirect_to @marker, notice: 'Marker was successfully updated.' }
        format.json { render :show, status: :ok, location: @marker }
      else
        format.html { redirect_to @marker }
        format.json { render json: @marker.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @marker = Marker.find(params[:id])
    @marker.destroy
    respond_to do |format|
      format.html { redirect_to "/", notice: 'marker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def marker_params
      params.require(:marker).permit(:lat, :lng)
    end
end