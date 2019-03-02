@user = User.create(email: "test@test.com",
										password: "asdfasdf",
										password_confirmation: "asdfasdf",
										first_name: "Jon",
										last_name: "Snow",
										phone: "4322386131")

puts "1 User created"

AdminUser.create(email: "admin@admin.com",
								password: "asdfasdf",
								password_confirmation: "asdfasdf",
								first_name: "Admin",
								last_name: "User",
								phone: "4322386131")

puts "1 Admin User created"

50.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", user_id: @user.id, overtime_request: 2.5)
end

puts "50 Posts have been created"

50.times do |audit_log|
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "50 Audit Logs have been created"