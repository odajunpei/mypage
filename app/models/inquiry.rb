class Inquiry < ApplicationRecord
  enum title: {本ウェブサイトの使い方:0, 本ウェブサイトの問題点:1, 本ウェブサイトへの質問:2, 管理者への質問:3, その他:5}

  validates :name, presence: true
  validates :email, presence: true
  validates :inquiry, presence:true
end
