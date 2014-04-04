require "mongoid4/uuid/version"
require "uuid"

module Mongoid4
  module Uuid
    # Your code goes here...
    def self.included(model)
      model.field(
        :_id,
        default: -> { ::UUID.generate },
        pre_processed: true,
        overwrite: true,
        type: ::UUID
      )
    end
  end
end
