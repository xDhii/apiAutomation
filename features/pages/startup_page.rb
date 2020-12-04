class Startup
  include HTTParty
  require_relative '../hooks/startup_hook'
  base_uri 'http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/'

  def initialize(body)
    @options = {body: body}
    @options2 = {}
  end

  def postStartup
    self.class.post('/startup', @options)
  end

  def getStartup(id)
    self.class.get("/startup/#{id}", @options)
  end

  def putStartup(id)
    self.class.put("/startup/#{id}", @options)
  end

  def deleteStartup(id)
    self.class.delete("/startup/#{id}", @options2)
  end
end

class Cleaner
  include HTTParty
  require_relative '../hooks/startup_hook'
  base_uri 'http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/'

  def clean_startup(id=1)
    result = self.class.get("/startup/")
    while result.to_s != '[]'
      self.class.delete("/startup/#{id}")
      result = self.class.get("/startup/")
      sleep 2
      id += 1
    end
  end

  def get_api
    self.class.get("/startup/")
  end
end
