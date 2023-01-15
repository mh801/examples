# frozen_string_literal: true

require 'rails_helper'

RSpec.describe NoDiService do
  # This test will use the resources and will not isolate the things we really want to be testing
  context 'stubbed logger' do
    before do
      # for us to not have the real logger receive the log message
      # we need to stub the logger, IMO, this is a much more convoluted way of testing and if things aren't stubbed
      # correctly or it isnt included like the test below, you will be testing the logger along with the service
      allow_any_instance_of(Logger::SomeLogger).to receive(:log).and_return({ status: 'success', message: 'This will not get logged by the logger' })
    end

    it 'logs' do
      described_class.call('This will get logged by the logger')
      expect_any_instance_of(Logger::SomeLogger).to receive(:log).with('This will get logged by the logger')
      expect(described_class.call('This will get logged by the logger')).to eq({ status: 'success', message: 'This will get logged by the logger' })
    end
  end

  context 'real logger' do
    # This test uses the logger and will log the message to the console
    # When we do this in tests, we are slowing down our tests and testing things that this test is not intended to be testing
    it 'logs' do
      described_class.call('This will get logged by the logger')
      expect_any_instance_of(Logger::SomeLogger).to receive(:log).with('This will get logged by the logger')
      expect(described_class.call('This will get logged by the logger')).to eq({ status: 'success', message: 'This will get logged by the logger' })
    end
  end
end
