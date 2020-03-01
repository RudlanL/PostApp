class TestmousesController < ApplicationController
  before_action :set_testmouse, only: [:show, :edit, :update, :destroy]

  # GET /testmouses
  # GET /testmouses.json
  def index
    @testmouses = Testmouse.all
  end

  # GET /testmouses/1
  # GET /testmouses/1.json
  def show
  end

  # GET /testmouses/new
  def new
    @testmouse = Testmouse.new
  end

  # GET /testmouses/1/edit
  def edit
  end

  # POST /testmouses
  # POST /testmouses.json
  def create
    @testmouse = Testmouse.new(testmouse_params)

    respond_to do |format|
      if @testmouse.save
        format.html { redirect_to @testmouse, notice: 'Testmouse was successfully created.' }
        format.json { render :show, status: :created, location: @testmouse }
      else
        format.html { render :new }
        format.json { render json: @testmouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testmouses/1
  # PATCH/PUT /testmouses/1.json
  def update
    respond_to do |format|
      if @testmouse.update(testmouse_params)
        format.html { redirect_to @testmouse, notice: 'Testmouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @testmouse }
      else
        format.html { render :edit }
        format.json { render json: @testmouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testmouses/1
  # DELETE /testmouses/1.json
  def destroy
    @testmouse.destroy
    respond_to do |format|
      format.html { redirect_to testmouses_url, notice: 'Testmouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testmouse
      @testmouse = Testmouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testmouse_params
      params.fetch(:testmouse, {})
    end
end
