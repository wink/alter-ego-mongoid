module AlterEgo
  module MongoidAdapter

    def self.included klass
      klass.field :state
      klass.after_initialize do |r|
        r.state = r.state
      end
    end

    # # rails needs this method to be defined for the
    # # class method after_initialize to be able to take a block
    # # this is because of some performance optimization
    # def after_initialize; end

    # Override methods from AlterEgo to store state
    # in @attributes["state"] instead of @state
    def state=(identifier)
      # state needs to always be stored as a string - symbol serialization is strange
      self[:state] = identifier.to_s unless identifier.nil?
    end

    def state
      result = self[:state] || self.class.default_state
      result = result.to_sym unless result.nil?
      assert(result.nil? || self.class.states.keys.include?(result))
      result
    end

  end
end
