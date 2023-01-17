# frozen_string_literal: true

require 'rails_helper'

RSpec.describe NoDiService do
  context 'stubbed logger' do
    it 'logs' do
      expect_any_instance_of(Logger::SimpleLogger).to receive(:log).with('This will get logged by the logger')
      expect(described_class.new.call('This will get logged by the logger')).to eq({ status: 'success', message: 'This will get logged by the logger' })
    end
  end
end
