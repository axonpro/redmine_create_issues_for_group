module RedmineCreateIssuesForGroup
  module Hooks
    class ControllerIssuesNewAfterSaveHook < Redmine::Hook::ViewListener
      def controller_issues_new_after_save(context={ })
        if context[:params][:create_issues_for_group] && context[:issue].assigned_to.is_a?(Group)
          context[:issue].assigned_to.users.each do |user|
            new_issue = Issue.new
            new_issue.copy_from(context[:issue])
            new_issue.assigned_to = user
            new_issue.parent_issue_id = context[:issue].id
            new_issue.save
          end
        end
      end
    end
  end
end