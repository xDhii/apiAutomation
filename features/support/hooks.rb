require 'report_builder'
require 'date'

d = DateTime.now
@current_date = d.to_s.tr(':', '_')

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'results/report.json'
    config.report_path = 'results/report_' + @current_date
    config.report_types = %i[retry html]
    config.report_title = 'Resultados do Teste'
    config.additional_info = { 'App' => 'API', 'Data de execução' => @current_date }
    config.color = 'indigo'
  end
  ReportBuilder.build_report
end
