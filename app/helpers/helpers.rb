class Helpers
  def self.current_user(session)
    User.find_by(id: session[:id])
  end

  def self.is_logged_in?(session)
    if User.find_by(id: session[:id])
      true
    else
      false
    end
  end
end
