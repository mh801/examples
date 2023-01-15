# frozen_string_literal: true

class DiService
  def initialize(logger: Logger::SomeLogger.new)
    @logger = logger
  end

  def call(msg)
    @logger.log(msg)
    { status: 'success', message: msg}
  end

  def self.call(msg)
    new.call(msg)
  end
end
