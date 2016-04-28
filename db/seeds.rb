# User.delete_all
# Post.delete_all



users = User.create([
	{email: "arod@nyy.com", fname: "Alex", lname: "Rodriguez", username: "NeverCaught", password: ""},
	{email: "csab@nyy.com", fname: "CC", lname: "Sabathia", username: "CleanLife", password: "12345"},
	{email: "jells@nyy.com", fname: "Jacoby", lname: "Ellsbury", username: "EllsburyDoughBoy", password: "12345"},
	{email: "bgard@nyy.com", fname: "Brett", lname: "Gardner", username: "BrettDaJet", password: "12345"},
	{email: "amill@nyy.com", fname: "Andrew", lname: "Miller", username: "LightsOut", password: "12345"},
	{email: "mtan@nyy.com", fname: "Masahiro", lname: "Tanaka", username: "", password: "12345"}
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
