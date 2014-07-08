require 'spec_helper'

describe Mongoid4::UUID do
  class TestModel
    include Mongoid::Document
    include Mongoid4::UUID
  end

  it 'generates _id using ::UUID.generate' do
    expect(::UUID).to receive(:generate).once

    TestModel.new
  end
end
