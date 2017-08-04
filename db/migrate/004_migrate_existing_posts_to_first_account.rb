class MigrateExistingPostsToFirstAccount < ActiveRecord::Migration[4.2]
  def self.up
    first_account_id = from(:accounts).get(:id)
    
    if first_account_id
      from(:posts).update(account_id: first_account_id)
    end
  end

  def self.down
    from(:posts).update(account_id: nil)
  end
end
