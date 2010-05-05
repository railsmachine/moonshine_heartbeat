module Heartbeat

  # Define options for this plugin via the <tt>configure</tt> method
  # in your application manifest:
  #
  #    configure(:heartbeat => {:foo => true})
  #
  # Moonshine will autoload plugins, just call the recipe(s) you need in your
  # manifests:
  #
  #    recipe :heartbeat
  def heartbeat(options = {})
    # define the recipe
    # options specified with the configure method will be 
    # automatically available here in the options hash.
    #    options[:foo]   # => true
  end

end