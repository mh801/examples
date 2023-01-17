# frozen_string_literal: true

class DiService
  extend Callable
  def initialize(logger: Logger::SimpleLogger)
    @logger = logger
  end

  def call(msg)
    @logger.new(level: :fatal).call(msg)
    { status: 'success', message: msg}
  end
end
