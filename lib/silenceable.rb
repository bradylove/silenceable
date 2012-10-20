def Silenceable(&block)
  yield unless ::Silenceable.silenced?
end

module Silenceable
  class << self
    def silenceable
      yield unless silenced?
    end

    def silenced?(file_path = Rails.root + ".silenced")
      File.exists?(file_path)
    end
  end
end

if defined?(Rails)
  require "silenceable/railtie"
end
