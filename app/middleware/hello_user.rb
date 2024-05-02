class HelloUser < Coach::Middleware
  uses Authentication
  requires :user  # state that HelloUser requires this data

  def call
    # Can now access `user`, as it's been provided by Authentication
    [ 200, {}, [ "hello #{user.name}" ] ]
  end
end
