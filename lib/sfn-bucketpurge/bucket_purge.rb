require 'sfn'

module Sfn
  class Callback
    class BucketPurge < Callback
      def before_destroy(args)
        stack = args[:api_stack]
        stack.resources.all.each do |r|
          begin
            resource = r.expand
          rescue
            next
          end
          next unless resource.is_a?(Miasma::Models::Storage::Bucket)
          files = resource.files.all
          next if files.empty?
          ui.warn "Removing all files in #{resource.name}..."
          files.map(&:destroy)
        end
      end
    end
  end
end
