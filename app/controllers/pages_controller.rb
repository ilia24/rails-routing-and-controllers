class PagesController < ApplicationController

  def welcome
  @header = "This is the welcome page"
end

 before_action :set_kitten_url, only: [:kitten, :kittens]

  def about
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end


  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end


  def passcheck
    secretcode = params[:magic_word]
    if secretcode == "ainsley"
      redirect_to "/secrets"
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to "/"
    end
  end


end
