class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 #  def asset_url asset
	# "#{request.protocol}#{request.host_with_port}#{asset_path(asset)}"
 #  end
end
