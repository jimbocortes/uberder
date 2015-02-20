module ApplicationHelper
  def nav_link_state(controller, action) 
    "active" if current_page?(controller: controller, action: action)
  end
end
