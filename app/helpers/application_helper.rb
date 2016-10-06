module ApplicationHelper
  def document_title
    if @title.present?
      "#{@title} - Employee Management"
    else
      "Employee Management"
    end
  end
end
