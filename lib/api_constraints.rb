# A class for matching api version via the accept header.
class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    @default || req.headers['Accept']
      .include?("application/vnd.business.v#{@version}")
  end
end
