class AaasController < ApplicationController
  def new
    @aaa = Aaa.new
  end

  def create
    aaa = Aaa.new(aaa_params)
    aaa.save
    redirect_to aaa_path(aaa.id)
  end

  def index
    @aaas = Aaa.all
  end

  def show
    @aaa = Aaa.find(params[:id])
  end

  def edit
    @aaa = Aaa.find(params[:id])
  end

  def update
    aaa = Aaa.find(params[:id])
    aaa.update(aaa_params)
    redirect_to aaa_path(aaa.id)
  end

# ストロングパラメータ
  def aaa_params
    params.require(:aaa).permit(:title, :body, :date)
  end
end
