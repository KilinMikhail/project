class TestMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    start_time = Time.current
    @status, @headers, @response = @app.call(env)
    end_time = Time.current

    @headers["time"] = end_time - start_time

    [@status, @headers, @response]
  end
end
