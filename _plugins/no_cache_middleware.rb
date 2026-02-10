# no_cache_middleware.rb
class NoCacheMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    if env['PATH_INFO'].end_with?('.mp4')
      headers['Cache-Control'] = 'no-store, no-cache, must-revalidate, max-age=0'
      headers['Pragma'] = 'no-cache'
      headers['Expires'] = 'Fri, 01 Jan 1990 00:00:00 GMT'
    end
    [status, headers, response]
  end
end
