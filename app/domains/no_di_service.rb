# frozen_string_literal: true

class NoDiService
  def call(msg)
    Logger::SomeLogger.new.log(msg)
    { status: 'success', message: msg }
  end

  def self.call(msg)
    new.call(msg)
  end
end
