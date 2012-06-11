class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
    :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :image, :name, :uid

  def self.find_for_twitter_oauth(access_token, signed_in_resource=nil)
    data = access_token.extra.raw_info
    if user = self.where(:name => data.name).first
      user
    else # Create a user with a stub password.
      self.create!(:email => "#{data.name}@twitter.excel.co.jp", :password => Devise.friendly_token[0,20], :uid => data.id,
                 :image => data.profile_image_url, :name => data.name)
    end
  end

  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token.extra.raw_info
    if user = self.where(:name => data.name).first
      user
    else # Create a user with a stub password.
      self.create!(:email => data.email, :password => Devise.friendly_token[0,20], :uid => data.id,
                 :image => access_token.info.image, :name => data.name)
    end
  end
  # ユーザ作成時のメソッドらしい
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.twitter_data"] && session["devise.twitter_data"]["extra"]["raw_info"]
        user.email = data["email"]
      end
    end
  end
end
