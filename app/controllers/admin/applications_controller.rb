class Admin::ApplicationsController < ApplicationController

  before_action :authenticate_admin!

  def new
    @application = Application.new
  end

  def index
    @applications = Application.all
  end

  def create
    @application = Application.new(application_params)
    if @application.save
      redirect_to admin_application_path(@application), notice: "商品を登録しました。"
    else
      render :new
    end
  end

  def show
    @application = Application.find(params[:id])
  end

  def edit
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.find(params[:id])
    if @application.update(application_params)
      redirect_to admin_application_path(params[:id]), notice:"商品情報を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @application = Application.find(params[:id])
    @application.destroy
    redirect_to admin_applications_path
  end

private

    def application_params
      params.require(:application).permit(:url, :giturl, :introduction, :image, :name)
    end

end
