class Gist < ActiveRecord::Base

	self.per_page = 10

	def self.search(search, user)
  		if search
    		#find(:all, :conditions => ['(user_id = ? OR status = ?) AND description LIKE ?', user, 'public', "%#{search}%"])
    		where(['(user_id = ? OR status = ?) AND description LIKE ?', user, 'public', "%#{search}%"]).to_a
  		else
    		#find(:all, :conditions => ['user_id = ? OR status = ?', user, 'public'])
    		where(['user_id = ? OR status = ?', user, 'public']).to_a
  		end
	end
end
