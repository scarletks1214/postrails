@employee = Employee.create(email: "test@test.com",
										password: "asdfasdf",
										password_confirmation: "asdfasdf",
										first_name: "Jon",
										last_name: "Snow",
										phone: "2091666945")

puts "1 Employee created"

AdminUser.create(email: "admin@admin.com",
								password: "asdfasdf",
								password_confirmation: "asdfasdf",
								first_name: "Admin",
								last_name: "User",
								phone: "2091666945")

puts "1 Admin User created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

50.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", user_id: @employee.id, overtime_request: 2.5)
end

puts "50 Posts have been created"
