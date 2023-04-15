class PagesController < ApplicationController
  def index
  end

  def service
  end

  def about_us
  end

  def enquiry
    @message = Feedback.new
  end

  def contact
  end

  def message_create
    @message = Feedback.new(message_params)
    if @message.save
      redirect_to '/enquiry', flash: {success: "Submitted Successfully"}
    else
      redirect_to '/enquiry', flash: {danger: "All fields are required & should be a valid one"}
    end

  end


  private
  def message_params
    params.require(:feedback).permit(:name,:number,:message,:email,:subject)
  end
end
