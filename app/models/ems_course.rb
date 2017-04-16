class EmsCourse < ActiveResource::Base
  self.site = Rails.application.config.ems_base_url
  self.element_name = 'courseterm_student'
  add_response_method :http_response

  def self.headers
    { 'Authorization' => "Token token=#{ENV['EMS_TOKEN']}"}
  end
end
