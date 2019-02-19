class UserFile < ApplicationRecord
  has_one_attached :user_file

  validate :user_file?

  def user_file?
    errors[:base] << 'Please attach a file to upload' unless user_file.attached?
  end
end
