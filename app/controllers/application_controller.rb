class ApplicationController < ActionController::Base
  # Action을 수행하기 전에 로그인 되었는지 확인할 것
  before_action :authenticate_customer!
end
