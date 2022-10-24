class Feedback
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :message, type: String
  field :number, type: Integer
  field :subject, type: String
  field :email, type: String

  validates :number, presence: true, length: { minimum: 8, maximum: 16 }
end
