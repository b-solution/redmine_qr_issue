Redmine::Plugin.register :redmine_qr_issue do
  name 'Redmine Qr Issue plugin'
  author 'Bilel KEDIDI'
  description 'This is a plugin show a QR code for issue path'
  version '0.0.1'
  author_url 'http://github.com/bilel-kedidi'
end

class Hooks < Redmine::Hook::ViewListener
  # This just renders the partial in
  # app/views/hooks/my_plugin/_view_issues_form_details_bottom.rhtml
  # The contents of the context hash is made available as local variables to the partial.
  #
  # Additional context fields
  #   :issue  => the issue this is edited
  #   :f      => the form object to create additional fields

  render_on :view_issues_show_details_bottom, :partial=> 'issues/issue_qr'
end
