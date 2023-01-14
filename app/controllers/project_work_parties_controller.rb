class ProjectWorkPartiesController < ApplicationController
  def create
    @project_work_party = ProjectWorkParty.new(project_work_party_params)
    if @project_work_party.save
      redirect_to project_path(@project_work_party.project), notice: 'Work Party assigned successfully!'
    else
      redirect_to project_path(@project_work_party.project),
                  alert: "Failed to assign Work Party!<br>#{@project_work_party.errors.full_messages.join('<br>')}"
    end
  end

  private

  def project_work_party_params
    params.require(:project_work_party).permit(
      :bill_amount, :bill_status, :payment_status, :project_id, :work_party_id
    )
  end
end
