# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DiService do
  # This test stubs the logger and will not use the resources and isolate only the things we really want to be testing
  # This is my preferred way to test
  # All we care about is that the logger is called with the correct message
  let(:logger) { spy(:logger, log: { status: 'success', message: 'This will not get logged by the logger' }) }

  subject { described_class.new(logger: logger) }

  it 'logs' do
    expect(subject.call('This will not get logged by the logger')).to eq({ status: 'success', message: 'This will not get logged by the logger' })
    expect(logger).to have_received(:log).with('This will not get logged by the logger')
  end
end
