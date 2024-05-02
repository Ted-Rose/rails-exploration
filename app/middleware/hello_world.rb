class Authentication < Coach::Middleware
  def call
    unless User.exists?(login: params[:login])
      return [ 401, {}, ['Access denied'] ]
    end

    next_middleware.call
  end
end

class HelloWorld < Coach::Middleware
  uses Authentication

  def call
    [ 200, {}, ['hello world'] ]
  end
end