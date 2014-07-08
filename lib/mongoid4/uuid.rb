require "mongoid4/uuid/version"
require "uuid"

module Mongoid4
  module UUID
    def self.included(model)
      model.field(
        :_id,
        pre_processed: true,
        overwrite: true,
        type: ::UUID
      )
    end

    model.class_eval do
      # Prevent id's from returning on documents that were not actually
      # created.
      def insert(options = {})
        self.id = ::UUID.generate

        document = super(options)

        self.id = nil if self.errors.present?

        document
      end
    end
  end
end
