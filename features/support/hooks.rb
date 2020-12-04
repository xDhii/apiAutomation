# frozen_string_literal: true

# require 'report_builder'
# require 'date'


# Before do
#   page.driver.browser.manage.window.maximize
#   @get = get.new
# end

# Before('@login') do
#   new_user = CONFIG['users']['old_user']
#   @login_page.go
#   @login_page.with(new_user['email'], new_user['pass'])
# end

# After do
#   temp_shot = page.save_screenshot('results/temp_shot.png')
#   screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)
#   embed(screenshot, 'image/png', 'Screenshot')
# end

# d = DateTime.now
# @current_date = d.to_s.tr(':', '_')

# at_exit do
#   ReportBuilder.configure do |config|
#     config.input_path = 'results/report.json'
#     config.report_path = 'results/report_' + @current_date
#     config.report_types = %i[retry html]
#     config.report_title = 'Resultados do Teste'
#     config.compress_image = true
#     config.additional_info = { 'App' => 'Web', 'Data de execução' => @current_date }
#     config.color = 'indigo'
#   end
#   ReportBuilder.build_report
# end
