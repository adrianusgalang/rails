class KosanController < ApplicationController
  def show
    @kosan = Kosan.find(params[:id])
  end

  def update
    @kosan = Kosan.find(params[:id])
    @kosan.update(kosan_params)
    redirect_to @kosan
  end

  def edit
    @kosan = Kosan.find(params[:id])
  end

  def index
    @kosans = Kosan.all
  end

  def new
  end

  def create
    @kosan = Kosan.new(kosan_params)
    @kosan.save
    redirect_to @kosan
  end

  def destroy
    @kosan = Kosan.find(params[:id])
    @kosan.destroy
    redirect_to action: :index
  end

  private
    def kosan_params
      params.require(:kos).permit(:nama, :lokasi, :deskripsi, :harga, :gambar, :kontak)
    end
end
