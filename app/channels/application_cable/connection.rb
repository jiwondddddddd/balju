module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_owner

    def connect
      self.current_owner = find_verified_user
      logger.add_tags 'ActionCable', current_owner.email
    end

    protected

    def find_verified_user # this checks whether a user is authenticated with devise
      if verified_owner = env['warden'].user
        verified_owner
      else
        reject_unauthorized_connection
      end
    end
  end
end
