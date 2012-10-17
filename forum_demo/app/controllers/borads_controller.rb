class BoradsController < ApplicationController
  # GET /borads
  # GET /borads.json
  def index
    @borads = Borad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @borads }
    end
  end

  # GET /borads/1
  # GET /borads/1.json
  def show
    @borad = Borad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @borad }
    end
  end

  # GET /borads/new
  # GET /borads/new.json
  def new
    @borad = Borad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @borad }
    end
  end

  # GET /borads/1/edit
  def edit
    @borad = Borad.find(params[:id])
  end

  # POST /borads
  # POST /borads.json
  def create
    @borad = Borad.new(params[:borad])

    respond_to do |format|
      if @borad.save
        format.html { redirect_to @borad, :notice => 'Borad was successfully created.' }
        format.json { render :json => @borad, :status => :created, :location => @borad }
      else
        format.html { render :action => "new" }
        format.json { render :json => @borad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /borads/1
  # PUT /borads/1.json
  def update
    @borad = Borad.find(params[:id])

    respond_to do |format|
      if @borad.update_attributes(params[:borad])
        format.html { redirect_to @borad, :notice => 'Borad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @borad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /borads/1
  # DELETE /borads/1.json
  def destroy
    @borad = Borad.find(params[:id])
    @borad.destroy

    respond_to do |format|
      format.html { redirect_to borads_url }
      format.json { head :no_content }
    end
  end
end
