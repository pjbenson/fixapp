class TradespeopleController < ApplicationController
	#before_filter :authorise
  # GET /tradespeople
  # GET /tradespeople.json
  
  def search
	@tradespeople = Tradesperson.paginate(:page => params[:page], :per_page => 6).search params[:q]
	render 'index'             
  end

  
  def index
    @tradespeople = Tradesperson.all
	@tradespeople = Tradesperson.paginate(:page => params[:page], :per_page => 6)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tradespeople }
    end
  end

  # GET /tradespeople/1
  # GET /tradespeople/1.json
  def show
    @tradesperson = Tradesperson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tradesperson }
    end
  end

  # GET /tradespeople/new
  # GET /tradespeople/new.json
  def new
    @tradesperson = Tradesperson.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tradesperson }
    end
  end

  # GET /tradespeople/1/edit
  def edit
    @tradesperson = Tradesperson.find(params[:id])
  end

  # POST /tradespeople
  # POST /tradespeople.json
  def create
    @tradesperson = Tradesperson.new(params[:tradesperson])

    respond_to do |format|
      if @tradesperson.save
		Blogmailer.trRegister(@tradesperson).deliver
        format.html { redirect_to @tradesperson, notice: 'Tradesperson was successfully created.' }
        format.json { render json: @tradesperson, status: :created, location: @tradesperson }
      else
        format.html { render action: "new" }
        format.json { render json: @tradesperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tradespeople/1
  # PUT /tradespeople/1.json
  def update
    @tradesperson = Tradesperson.find(params[:id])

    respond_to do |format|
      if @tradesperson.update_attributes(params[:tradesperson])
        format.html { redirect_to @tradesperson, notice: 'Tradesperson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tradesperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tradespeople/1
  # DELETE /tradespeople/1.json
  def destroy
    @tradesperson = Tradesperson.find(params[:id])
    @tradesperson.destroy

    respond_to do |format|
      format.html { redirect_to tradespeople_url }
      format.json { head :no_content }
    end
  end
end
