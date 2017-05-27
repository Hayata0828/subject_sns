class AddNicknameToTweets < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :nickname, :string
  end
end
