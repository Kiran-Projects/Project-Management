class ProjectWorkPartiesController < ApplicationController
  before_action :set_project_work_party, only: %i[update destroy]

  def create
    @project_work_party = ProjectWorkParty.new(project_work_party_params)
    redirect_path = project_path(@project_work_party.project)
    if @project_work_party.save
      redirect_with_notice(redirect_path)
    else
      redirect_with_alert(redirect_path)
    end
  end

  def update
    redirect_path = project_path(@project_work_party.project)
    if @project_work_party.update(project_work_party_params)
      redirect_with_notice(redirect_path)
    else
      redirect_with_alert(redirect_path)
    end
  end

  def destroy
    redirect_path = project_path(@project_work_party.project)
    if @project_work_party.destroy
      redirect_with_notice redirect_path, 'unassigned'
    else
      redirect_with_alert redirect_path,'unassign'
    end
  end

  private

  def project_work_party_params
    params.require(:project_work_party).permit(
      :bill_amount, :bill_status, :payment_status, :project_id, :work_party_id, :remarks
    )
  end

  def set_project_work_party
    @project_work_party = ProjectWorkParty.find(params[:id])
  end

  def redirect_with_notice(redirect_path, action = 'assigned')
    redirect_to redirect_path, notice: "Work Party #{action} successfully!"
  end

  def redirect_with_alert(redirect_path, action = 'assign')
    redirect_to redirect_path,
                alert: "Failed to #{action} Work Party!<br>#{@project_work_party.errors.full_messages.join('<br>')}"
  end
end
