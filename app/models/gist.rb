class Gist < ActiveRecord::Base

	self.per_page = 10

	def self.search(search, user)
  		if search
    		find(:all, :conditions => ['(user_id = ? OR status = ?) AND description LIKE ?', user, 'public', "%#{search}%"])
  		else
    		find(:all, :conditions => ['user_id = ? OR status = ?', user, 'public'])
  		end
	end
end
