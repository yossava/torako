class HomeitemsController < ApplicationController
  before_action :set_homeitem, only: [:show, :edit, :update, :destroy]

  # GET /homeitems
  # GET /homeitems.json
  def index
    @homeitems = Homeitem.all
  end

  # GET /homeitems/1
  # GET /homeitems/1.json
  def show
  end

  # GET /homeitems/new
  def new
    @homeitem = Homeitem.new
  end

  # GET /homeitems/1/edit
  def edit
  end

  # POST /homeitems
  # POST /homeitems.json
  def create
    @homeitem = Homeitem.new(homeitem_params)

    respond_to do |format|
      if @homeitem.save
        format.html { redirect_to :back, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @homeitem }
      else
        format.html { render :new }
        format.json { render json: @homeitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homeitems/1
  # PATCH/PUT /homeitems/1.json
  def update
    respond_to do |format|
      if @homeitem.update(homeitem_params)
        format.html { redirect_to :back, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @homeitem }
      else
        format.html { render :edit }
        format.json { render json: @homeitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homeitems/1
  # DELETE /homeitems/1.json
  def destroy
    @homeitem.destroy
    respond_to do |format|
      format.html { redirect_to homeitems_url, notice: 'Homeitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homeitem
      @homeitem = Homeitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homeitem_params
      params.require(:homeitem).permit(:title, :description, :img1, :img2, :img3, :img4, :img5, :img6, :img7, :img8, :img9, :remove_img1, :remove_img2, :remove_img3, :remove_img4, :remove_img5, :remove_img6, :remove_img7, :remove_img8, :remove_img9)
    end
end
