class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  helper_method :retrieve_last_index_page_or_default

  def store_last_index_page
    session[:last_index_page] = request.fullpath
  end

  def retrieve_last_index_page_or_default(default_path: root_path)
    session[:last_index_page] || default_path
  end
end
