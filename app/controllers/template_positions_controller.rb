class TemplatePositionsController < ApplicationController
  before_action :set_template_position, only: [:show, :edit, :update, :destroy]

  # GET /template_positions
  # GET /template_positions.json
  def index
    @template_positions = TemplatePosition.all
  end

  # GET /template_positions/1
  # GET /template_positions/1.json
  def show
  end

  # GET /template_positions/new
  def new
    @template_position = TemplatePosition.new
  end

  # GET /template_positions/1/edit
  def edit
  end

  # POST /template_positions
  # POST /template_positions.json
  def create
    @template_position = TemplatePosition.new(template_position_params)

    respond_to do |format|
      if @template_position.save
        format.html { redirect_to @template_position, notice: 'Template position was successfully created.' }
        format.json { render :show, status: :created, location: @template_position }
      else
        format.html { render :new }
        format.json { render json: @template_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_positions/1
  # PATCH/PUT /template_positions/1.json
  def update
    respond_to do |format|
      if @template_position.update(template_position_params)
        format.html { redirect_to @template_position, notice: 'Template position was successfully updated.' }
        format.json { render :show, status: :ok, location: @template_position }
      else
        format.html { render :edit }
        format.json { render json: @template_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_positions/1
  # DELETE /template_positions/1.json
  def destroy
    @template_position.destroy
    respond_to do |format|
      format.html { redirect_to template_positions_url, notice: 'Template position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_position
      @template_position = TemplatePosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_position_params
      params.require(:template_position).permit(:title, :price_item_id, :template_id, :template_item_id, :order)
    end
end
