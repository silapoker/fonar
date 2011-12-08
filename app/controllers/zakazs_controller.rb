class ZakazsController < ApplicationController
  # GET /zakazs
  # GET /zakazs.json
    def new
    @zakaz = Zakaz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zakaz }
    end
    end
    
  def index
    @kolvo = Zakaz.sum( 'kol')
    @zakazs = Zakaz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zakazs }
    end
  end

  # GET /zakazs/1
  # GET /zakazs/1.json
  def show
    @zakaz = Zakaz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zakaz }
    end
  end

  # GET /zakazs/new
  # GET /zakazs/new.json
 \

  # GET /zakazs/1/edit
  def edit
    @zakaz = Zakaz.find(params[:id])
  end

  # POST /zakazs
  # POST /zakazs.json
  def create
    @zakaz = Zakaz.new(params[:zakaz])

    respond_to do |format|
      if @zakaz.save
        format.html { redirect_to @zakaz, notice: 'Zakaz was successfully created.' }
        format.json { render json: @zakaz, status: :created, location: @zakaz }
      else
        format.html { render action: "new" }
        format.json { render json: @zakaz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zakazs/1
  # PUT /zakazs/1.json
  def update
    @zakaz = Zakaz.find(params[:id])

    respond_to do |format|
      if @zakaz.update_attributes(params[:zakaz])
        format.html { redirect_to @zakaz, notice: 'Zakaz was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @zakaz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zakazs/1
  # DELETE /zakazs/1.json
  def destroy
    @zakaz = Zakaz.find(params[:id])
    @zakaz.destroy

    respond_to do |format|
      format.html { redirect_to zakazs_url }
      format.json { head :ok }
    end
  end
end
