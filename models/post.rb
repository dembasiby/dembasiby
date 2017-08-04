class Post < ActiveRecord::Base
  belongs_to :account

  def validate
    super
    validates_presence_of [:title, :body]
  end
end
