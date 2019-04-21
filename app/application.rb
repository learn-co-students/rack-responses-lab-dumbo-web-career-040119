class Application
  def call(arg)
    rack_resp = Rack::Response.new
    current_time = Time.now
    if current_time.hour >= 12
      rack_resp.write "Good Afternoon"
    else
      rack_resp.write "Good Morning"
    end
    rack_resp.finish
  end
end
