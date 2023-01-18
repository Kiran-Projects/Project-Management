module ProjectsHelper
  def project_statuses
    Project.statuses.collect { |k, _v| [k.titleize, k] }
  end

  def project_bill_statuses
    Project.bill_statuses.collect { |k, _v| [k.titleize, k] }
  end

  def project_status_class(project)
    case project.status
    when 'on_hold'
      'secondary'
    when 'completed'
      'success'
    else
      'info'
    end
  end

  def project_bill_status_class(project)
    case project.bill_status
    when 'pending'
      'secondary'
    when 'created'
      'warning'
    when 'submitted'
      'info'
    else
      'success'
    end
  end
end
