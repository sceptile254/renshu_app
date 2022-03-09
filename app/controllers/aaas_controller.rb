class AaasController < ApplicationController
  def new
    @aaa = Aaa.new
  end

  def create
    @aaa = Aaa.new(aaa_params)
    if @aaa.save
      redirect_to aaa_path(@aaa.id)
    else
      render :new
    end
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

  def destroy
    aaa = Aaa.find(params[:id]) #データを1件取得
    aaa.destroy #上で取得したデータを削除
    redirect_to '/sakujogo' #削除後の画面へ遷移
  end

# ストロングパラメータ
  private
  def aaa_params
    params.require(:aaa).permit(:title, :body, :date, :image)
  end
end
