include ApplicationHelper


def valid_signin( user )
  fill_in "Email", with: user.email
  fill_in "Password", with:user.password
  click_button "Sign in"
end

Rspec::Matchers.define :have_error_messages do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text:message )
  end
end


