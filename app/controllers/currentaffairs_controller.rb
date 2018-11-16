class CurrentaffairsController < ApplicationController
  before_action :set_currentaffair, only: [:show, :edit, :update, :destroy,:donecurrent]

  # GET /currentaffairs
  # GET /currentaffairs.json
  def index
    @currentaffairs = Currentaffair.all
    @currentaffair = Currentaffair.new
  end

  # GET /currentaffairs/1
  # GET /currentaffairs/1.json
  def show
  end

  # GET /currentaffairs/new
  def new
    @currentaffair = Currentaffair.new
  end

  def donecurrent
    @currentaffair.update_attribute(:done,true)
    redirect_to request.referrer

  end

  # GET /currentaffairs/1/edit
  def edit
  end

  # POST /currentaffairs
  # POST /currentaffairs.json
  def create
    @currentaffair = Currentaffair.new(currentaffair_params)

    respond_to do |format|
      if @currentaffair.save
        format.html { redirect_to  request.referrer, notice: 'Currentaffair was successfully created.' }
        format.json { render :show, status: :created, location: @currentaffair }
      else
        format.html { render :new }
        format.json { render json: @currentaffair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /currentaffairs/1
  # PATCH/PUT /currentaffairs/1.json
  def update
    respond_to do |format|
      if @currentaffair.update(currentaffair_params)
        format.html { redirect_to @currentaffair, notice: 'Currentaffair was successfully updated.' }
        format.json { render :show, status: :ok, location: @currentaffair }
      else
        format.html { render :edit }
        format.json { render json: @currentaffair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currentaffairs/1
  # DELETE /currentaffairs/1.json
  def destroy
    @currentaffair.destroy
    respond_to do |format|
      format.html { redirect_to currentaffairs_url, notice: 'Currentaffair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currentaffair
      @currentaffair = Currentaffair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def currentaffair_params
      params.require(:currentaffair).permit(:name,:source,:done,:todo)
    end
end
