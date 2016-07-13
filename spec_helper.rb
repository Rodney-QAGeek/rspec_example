require 'rspec'
class QabotListener
  def example_finished(notification)
    puts '#####################################################################'
    puts '############ This is the bug in example_finished ####################'
    t = notification.example.execution_result.finished_at.nil?
    puts "notification.example.execution_result.finished_at.nil? returns #{t}"
    s = notification.example.execution_result.status.nil?
    puts "notification.example.execution_result.status.nil? returns #{s}"
    puts '#####################################################################'
  end
end

RSpec.configure do |config|
  config.reporter.register_listener(QabotListener.new, :example_finished)
end