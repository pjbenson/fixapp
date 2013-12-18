class PagesController < ApplicationController

  def home
  end

  def about
  end
  
  def tradespeopleRequests
	@tradesperson = Tradesperson.find(session[:tr_id])
	
	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end
  
  def viewRequests
	@customer = Customer.find(session[:customer_id])
	
	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end
end
