class HelloWorld < Coach::Middleware
  uses Authentication

  def call
    [ 200, {}, ['hello world'] ]
  end
end