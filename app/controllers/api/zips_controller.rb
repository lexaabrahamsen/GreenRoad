class Api::ZipsController < ApplicationController
  def index
    if params[:search]
      @zips = Zip.where("zip_code LIKE ?", "%#{params[:search]}%")
    else
      @zips = Zip.all
    end

    @zips = @zips.order(:id => :asc)
    render "index.json.jb"
  end

  def show
    @zip = Zip.find_by(id: params[:id])
    render "show.json.jb"
  end
end
