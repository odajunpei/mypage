class Admin::InquiriesController < ApplicationController

  before_action :authenticate_admin!

  def index
      @inquiries = Inquiry.all.page(params[:page]).per(10)
  end

  def edit
    @inquiry = Inquiry.find(params[:id])
  end

  def update
    @inquiry = Inquiry.find(params[:id])
    if @inquiry.update(inquiry_params)
      ReplyMailer.reply_inquiry(@inquiry).deliver
      redirect_to edit_admin_inquiry_path(@inquiry)
    else
      render :edit
    end
  end

  private

    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :title, :inquiry, :reply, :replyok, :id)
    end
end
