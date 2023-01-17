# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DiService do
  let(:logger) { spy(:logger) }
  subject { described_class.new(logger: logger) }

  it 'logs' do
    expect(subject.call('This will not get logged by the logger')).to eq({ status: 'success', message: 'This will not get logged by the logger' })
    expect(logger).to have_received(:call).with('This will not get logged by the logger')
  end
end
