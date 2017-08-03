class Post < ActiveRecord::Base
  belongs_to :account

  plugin :validation_helpers
  def validate
    super
    validate_presence [:title, :body]
  end
end
