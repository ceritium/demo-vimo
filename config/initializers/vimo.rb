Vimo.configure do |config|

  # The name of the before filter we'll call to authenticate the current user.
  # Defaults to :login_required
  config.authentication_method = :authenticate_user!

  # The name of the controller method we'll call to return the owner for
  # the virtual models.
  config.owner_method = :current_user
end
