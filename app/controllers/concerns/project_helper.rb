module ProjectHelper

  def sorted_work_parties
    sort_params = params[:sort]&.to_sym || :work_party_name
    sorted_list = @project.project_work_parties.sort_by { |pwp| sort_value(pwp.send(sort_params)) }
    return sorted_list unless session[:order] == 'desc'

    sorted_list.reverse
  end

  def sort_value(sort_value)
    return sort_value unless sort_value.is_a? String

    sort_value.downcase
  end
end