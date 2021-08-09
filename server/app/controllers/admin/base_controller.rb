class Admin::BaseController < ApplicationController
  layout 'admin_application'
  before_action :authenticate_admin!
end
