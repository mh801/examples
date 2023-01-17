# frozen_string_literal: true

class NoDiService
  extend Callable

  def call(msg)
    Logger::SimpleLogger.new.call(msg)
    { status: 'success', message: msg }
  end
end

