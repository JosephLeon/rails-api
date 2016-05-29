class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    # @default || req.headers['Accept'].include?("application/vnd.marketplace.v#{@version}")
    @default || req.headers['Accept'].include?("application/vnd.business.v#{@version}")
  end
end