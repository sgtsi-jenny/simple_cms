class AdminUser < ActiveRecord::Base

	#To configure a different table name:
	#self.table_name = "admin_users"

	# short way
	attr_accessor :first_name

	

end
