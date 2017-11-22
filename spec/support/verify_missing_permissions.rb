module SpecSupport
  module VerifyMissingPermissionsMethods

    def verify_missing_permissions
      expect(page).to have_content("You are not authorized to access this page.")
    end
  end
end
