module ProjectsHelper
  def project_statuses
    Project.statuses.collect { |k, v| [k.titleize, k] }
  end

  def project_status_class(project)
    case project.status
    when 'on_hold'
      'warning'
    when 'completed'
      'success'
    else
      'info'
    end
  end
end
