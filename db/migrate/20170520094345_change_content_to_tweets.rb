class ChangeContentToTweets < ActiveRecord::Migration[5.1]
  def change
    def up
      change_column :tweets, :content, :text
    end

    #変更前の型
    def down
      change_column :tweets, :content, :string
    end
  end
end
