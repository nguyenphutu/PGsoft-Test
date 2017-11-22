module SpecSupport
  module LoginMethods
    @@user = {'email' => 'kien.hoang@powergatesoftware.com', 'password' => 'Hoangkien123'}
    @@path = 'http://store.demoqa.com/wp-login.php'
    def user_login(user=@@user, path_login=@@path)
      visit path_login
      fill_in "user_login",   with: user['email']
      fill_in "user_pass", with: user['password']
      find("#wp-submit").click
      expect(page).to have_content("My account")
    end
  end

  module RegisterMethods
    @@user = {'email' => 'kien.hoang@powergatesoftware.com', 'name' => 'Hoangkien'}
    @@path = 'http://store.demoqa.com/wp-login.php?action=register'
    def new_user(user=@@user, path_login=@@path)
      visit path_login
      fill_in "user_login",   with: user['name']
      fill_in "user_email", with: user['email']
      find("#wp-submit").click
      expect(page).to have_content("My account")
    end
  end
end
