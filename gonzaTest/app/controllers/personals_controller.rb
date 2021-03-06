class PersonalsController < ApplicationController
  before_action :set_personal, only: [:show, :edit, :update, :destroy]

  # GET /personals
  # GET /personals.json
  def index
    byebug
    p cookies
    p session
    @personals = Personal.all
  end

  # GET /personals/1
  # GET /personals/1.json
  def show
    byebug
  end

  # GET /personals/new
  def new
    byebug
    @personal = Personal.new
  end

  # GET /personals/1/edit
  def edit
    byebug
  end

  # POST /personals
  # POST /personals.json
  def create
    byebug
    @personal = Personal.new(personal_params)

    respond_to do |format|
      if @personal.save
        format.html { redirect_to @personal, notice: 'Personal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @personal }
      else
        format.html { render action: 'new' }
        format.json { render json: @personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personals/1
  # PATCH/PUT /personals/1.json
  def update
    byebug
    respond_to do |format|
      if @personal.update(personal_params)
        format.html { redirect_to @personal, notice: 'Personal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personals/1
  # DELETE /personals/1.json
  def destroy
    byebug
    @personal.destroy
    respond_to do |format|
      format.html { redirect_to personals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal
      @personal = Personal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_params
      params.require(:personal).permit(:nombre)
    end
end
