# encoding: utf-8

require 'redmine'
require_dependency 'redmine_create_issues_for_group/hooks/view_issues_form_details_bottom_hook'
require_dependency 'redmine_create_issues_for_group/hooks/controller_issues_new_after_save_hook'

Redmine::Plugin.register :redmine_create_issues_for_group do
  name 'Redmine Create Issues For Group plugin'
  author 'Juraj Sujan (shivo), AXON PRO s.r.o.'
  description 'Plugin that allows to create subtask for every member of group'
  version '0.1.0'
  url 'https://github.com/axonpro/redmine_create_issues_for_group'
  author_url ''
end
