class ConformidadesController < ApplicationController

  before_filter :authenticate_usuario!, except: [:index, :show]
  # GET /conformidades
  # GET /conformidades.json
  def index
    @conformidades = Conformidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conformidades }
    end
  end

  # GET /conformidades/1
  # GET /conformidades/1.json
  def show
    @conformidade = Conformidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conformidade }
    end
  end

  # GET /conformidades/new
  # GET /conformidades/new.json
  def new
    @conformidade = Conformidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conformidade }
    end
  end

  # GET /conformidades/1/edit
  def edit
    @conformidade = Conformidade.find(params[:id])
  end

  # POST /conformidades
  # POST /conformidades.json
  def create
    @conformidade = Conformidade.new(params[:conformidade])

    respond_to do |format|
      if @conformidade.save
        format.html { redirect_to @conformidade, notice: 'Conformidade was successfully created.' }
        format.json { render json: @conformidade, status: :created, location: @conformidade }
      else
        format.html { render action: "new" }
        format.json { render json: @conformidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conformidades/1
  # PUT /conformidades/1.json
  def update
    @conformidade = Conformidade.find(params[:id])

    respond_to do |format|
      if @conformidade.update_attributes(params[:conformidade])
        format.html { redirect_to @conformidade, notice: 'Conformidade was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @conformidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conformidades/1
  # DELETE /conformidades/1.json
  def destroy
    @conformidade = Conformidade.find(params[:id])
    @conformidade.destroy

    respond_to do |format|
      format.html { redirect_to conformidades_url }
      format.json { head :ok }
    end
  end
end
