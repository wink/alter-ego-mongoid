class TrafficSignal
  include Mongoid::Document
  
  field :state
  
  include AlterEgo
  include AlterEgo::MongoidAdapter
  
  state :proceed, :default=>true do
    handle :color do
      "green"
    end
    transition :to => :caution, :on => :cycle!
  end

  state :caution do
    handle :color do
      "yellow"
    end
    transition :to => :stop, :on => :cycle!
  end

  state :stop do
    handle :color do
      "red"
    end
    transition :to => :proceed, :on => :cycle!
  end

end
