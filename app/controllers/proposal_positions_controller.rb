class ProposalPositionsController < ApplicationController
  before_action :set_proposal_position, only: [:show, :edit, :update, :destroy]

  # GET /proposal_positions
  # GET /proposal_positions.json
  def index
    @proposal_positions = ProposalPosition.all
  end

  # GET /proposal_positions/1
  # GET /proposal_positions/1.json
  def show
  end

  # GET /proposal_positions/new
  def new
    @proposal_position = ProposalPosition.new
  end

  # GET /proposal_positions/1/edit
  def edit
  end

  # POST /proposal_positions
  # POST /proposal_positions.json
  def create
    @proposal_position = ProposalPosition.new(proposal_position_params)

    respond_to do |format|
      if @proposal_position.save
        format.html { redirect_to @proposal_position, notice: 'Proposal position was successfully created.' }
        format.json { render :show, status: :created, location: @proposal_position }
      else
        format.html { render :new }
        format.json { render json: @proposal_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposal_positions/1
  # PATCH/PUT /proposal_positions/1.json
  def update
    respond_to do |format|
      if @proposal_position.update(proposal_position_params)
        format.html { redirect_to @proposal_position, notice: 'Proposal position was successfully updated.' }
        format.json { render :show, status: :ok, location: @proposal_position }
      else
        format.html { render :edit }
        format.json { render json: @proposal_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposal_positions/1
  # DELETE /proposal_positions/1.json
  def destroy
    @proposal_position.destroy
    respond_to do |format|
      format.html { redirect_to proposal_positions_url, notice: 'Proposal position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposal_position
      @proposal_position = ProposalPosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposal_position_params
      params.require(:proposal_position).permit(:proposal_id, :price_item_id, :template_position_id, :price, :change_marker)
    end
end
