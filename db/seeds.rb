# User.delete_all
# Post.delete_all



users = User.create([
	{email: "arod@nyy.com", fname: "Alex", lname: "Rodriguez", username: "NeverCaught", password: ""},
	{email: "csab@nyy.com", fname: "CC", lname: "Sabathia", username: "CleanLife", password: "12345"},
	{email: "rcano@nyy.com", fname: "Robinson", lname: "Cano", username: "DontChaknow", password: "12345"},
	{email: "nswish@nyy.com", fname: "Nick", lname: "Swisher", username: "SwishTheDish", password: "12345"},
	{email: "Jchamb@nyy.com", fname: "Joba", lname: "Chamberlin", username: "JobaTheHut", password: "12345"},
	{email: "djeeter@nyy.com", fname: "Derek", lname: "Jeeter", username: "Jeets", password: "12345"}
	])

Post.create([
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"},
	{user_id: users[0].id, title: "djhfakd", body: "hdkflah"}
])





# rake db:seed this populates the database with temporary data
