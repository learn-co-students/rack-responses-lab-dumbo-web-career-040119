class Application

  def call(env)
    resp = Rack::Response.new
    #The Time class represents dates and times in Ruby. Time.now will produce the current time:
    # Mon Jun 02 12:02:39 -0700 2008. now.hour will give us the hour specifically on a 24 hour clock. 
    now = Time.now
    if now.hour >=12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end

end
