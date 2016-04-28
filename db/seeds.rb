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
	{user_id: users[0].id, title: "hey", body: "heyaaa"},
	{user_id: users[0].id, title: "hello", body: "random post"},
	{user_id: users[1].id, title: "whatup", body: "homerun"},
	{user_id: users[1].id, title: "how are you", body: "double"},
	{user_id: users[2].id, title: "byyee", body: "single"},
	{user_id: users[2].id, title: "bubye", body: "triple"},
	{user_id: users[3].id, title: "seeya", body: "for the cycle"},
	{user_id: users[3].id, title: "cool", body: "gr double"},
	{user_id: users[4].id, title: "nice", body: "strikeout"},
	{user_id: users[4].id, title: "good", body: "walk"},
	{user_id: users[5].id, title: "great", body: "ball"},
	{user_id: users[5].id, title: "grand", body: "steal"}
])





# rake db:seed this populates the database with temporary data
