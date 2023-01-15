# frozen_string_literal: true

class Logger::SomeLogger

  def initialize
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::INFO
    @logger.formatter = proc do |severity, datetime, progname, msg|
      { thing: "#{severity} #{datetime}: #{msg}" }
    end
  end

  def log(msg)
    @logger.info(msg)
  end
end
