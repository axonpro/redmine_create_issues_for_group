module RedmineCreateIssuesForGroup
  module Hooks
    class ViewIssuesFormDetailsBottomHook < Redmine::Hook::ViewListener
      render_on(:view_issues_form_details_bottom, :partial => 'issues/form_create_issues_for_group', :layout => false)
    end
  end
end