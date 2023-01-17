# frozen_string_literal: true

class Logger::SimpleLogger
  extend Callable
  def initialize(level: :info)
    @level = level
    @logger = Logger.new(STDOUT)
    @logger.level = "Logger::#{level.to_s.upcase}".constantize
    @logger.formatter = proc do |severity, datetime, msg|
      { thing: "#{severity} #{datetime}: #{msg}" }
    end
  end

  def call(msg)
    log(msg)
  end
  def log(msg)
    @logger.public_send(@level, msg)
  end
end
