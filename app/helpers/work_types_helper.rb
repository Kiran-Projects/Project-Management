module WorkTypesHelper
  def work_types
    WorkType.all.collect { |w| [w.name, w.id] }
  end
end
