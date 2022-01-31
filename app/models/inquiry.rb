class Inquiry < ApplicationRecord
  enum title: {本ウェブサイトへの質問:0, 管理者への質問:1, その他:2}

  validates :name, presence: true
  validates :email, presence: true
  validates :inquiry, presence:true
end
