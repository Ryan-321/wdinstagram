require "pg"
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "instagram_db"
)

if defined? Sinatra
	after do
	  ActiveRecord::Base.connection.close
	end
end
