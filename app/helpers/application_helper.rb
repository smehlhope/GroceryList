module ApplicationHelper

	def sortable(column, title = nil)
	  title ||= column.titleize
	  css_class = column == sort_column ? "current #{sort_direction}" : nil
	  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	  #params.merge allows all parameters that are outside of sorting/direction to be carried across - but don't want page to be carried across so page is nil	
	  link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
	end

end
