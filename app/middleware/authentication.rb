class Authentication < Coach::Middleware
  provides :user  # declare that Authentication provides :user

  def call
    return [ 401, {}, ['Access denied'] ] unless user.present?

    provide(user: user)
    next_middleware.call
  end

  def user
    @user ||= User.find_by(login: params[:login])
  end
end
