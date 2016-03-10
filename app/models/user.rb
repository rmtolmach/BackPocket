class User
  include Mongoid::Document
  field :uid, type: String
  field :username, type: String
  field :email, type: String
  field :oauth_token, type: String
  field :oauth_expires_at, type: Time
  validates_presence_of :username
  has_and_belongs_to_many :games

  def self.from_omniauth(auth)
    where(uid: auth.uid).first_or_create do |user|
      user.uid = auth.uid
      user.username = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
