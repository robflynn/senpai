class ApplicationController < ActionController::Base
	prepend_view_path Rails.root.join('app/javascript/senpai/')

	before_action :require_logged_in

	helper_method :current_user, :current_account, :current_scope

	protected

	# TODO: Don't hardcode me
	def current_user
		@current_user ||= User.find_by(email: "rob@deliverypath.com")
	end

	def current_account
		@current_account ||= current_user.account
	end

	def current_scope
		current_account
	end

	# TODO: Implement me
	def require_logged_in
		return !@current_user.nil?
	end
end
