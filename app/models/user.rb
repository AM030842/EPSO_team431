class User < ApplicationRecord

    devise :omniauthable, omniauth_providers: [:google_oauth2]
    def self.from_googleUser(email:, full_name:, uid:, avatar_url:)
      return nil unless email =~ /@tamu.com\z/
      create_with(uid: uid, full_name: full_name, avatar_url: avatar_url).find_or_create_by!(email: email)
    end
  end