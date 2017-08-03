class Post < ActiveRecord::Base
  belongs_to :account

  def validate
    super
    validate_presence_of [:title, :body]
  end
end
