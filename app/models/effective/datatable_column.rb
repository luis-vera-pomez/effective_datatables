module Effective
  class DatatableColumn
    attr_accessor :attributes

    delegate :[], :[]=, to: :attributes

    def initialize(attributes)
      @attributes = attributes
    end

    def format(&block)
      @attributes[:format] = block; self
    end

    def search(&block)
      @attributes[:search_method] = block; self
    end

    def sort(&block)
      @attributes[:sort_method] = block ; self
    end

  end
end
