class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user)
    # user_attributes.values.each do |user_attribute|
    if (user.values - [""]).any?
      self.user = User.find_or_create_by(user)
      self.save
    end
    # end
  end
end
