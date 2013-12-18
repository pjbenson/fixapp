class SessionsController < ApplicationController
  def new
  end

  def create
	customer = Customer.find_by_name(params[:name])
	if customer && customer.authenticate(params[:password])
		session[:customer_id] = customer.id
		redirect_to customer #redirect_to session[:return_to] || root_path
	else
		flash[:error] = "Invalid name/password combination."
		render 'new'
	end
  end

  def destroy
	if signed_in?
		session[:customer_id] = nil
	else
		flash[:notice] = "You need to sign in first"
	end
	redirect_to root_path
  end
  
  def newtr
  end

  def createtr
	tr = Tradesperson.find_by_name(params[:name])	
	if tr 
		session[:tr_id] = tr.id
		redirect_to tr
	else
		flash[:error] = "Invalid name/password combination."
		render 'new'
	end
  end

  def destroytr
	if trsigned_in?	
		session[:tr_id] = nil
	else
		flash[:notice] = "You need to sign in first"
	end
	redirect_to root_path
  end
end
