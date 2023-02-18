# frozen_string_literal: true

# app/controllers/work_parties_controller
class WorkPartiesController < ApplicationController
  before_action :set_work_party, only: %i[show edit update destroy]

  # GET /work_parties or /work_parties.json
  def index
    @work_parties = WorkParty.all
  end

  # GET /work_parties/1 or /work_parties/1.json
  def show; end

  # GET /work_parties/new
  def new
    @work_party = WorkParty.new
  end

  # GET /work_parties/1/edit
  def edit; end

  # POST /work_parties or /work_parties.json
  def create
    @work_party = WorkParty.new(work_party_params)

    respond_to do |format|
      if @work_party.save
        format.html { redirect_to work_party_url(@work_party), notice: 'Work party was successfully created.' }
        format.json { render :show, status: :created, location: @work_party }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_parties/1 or /work_parties/1.json
  def update
    respond_to do |format|
      if @work_party.update(work_party_params)
        format.html { redirect_to work_party_url(@work_party), notice: 'Work party was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_party }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_parties/1 or /work_parties/1.json
  def destroy
    @work_party.destroy

    respond_to do |format|
      format.html { redirect_to work_parties_url, notice: 'Work party was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_work_party
    @work_party = WorkParty.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def work_party_params
    params.require(:work_party).permit(:name, :work_type_id)
  end
end
