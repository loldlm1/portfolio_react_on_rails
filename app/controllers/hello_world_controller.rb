class HelloWorldController < ApplicationController
  def index
    @hello_world_props = { name: "NO-broken" }
  end
end
