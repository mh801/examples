# frozen_string_literal: true

class DiExampleController < ApplicationController
  def di_example
    response = DiService.call('di_example')

    render json: { logger: response }
  end

  def no_di_example
    response = NoDiService.call('no_di_example')
    render json: { logger: response }
  end
end
