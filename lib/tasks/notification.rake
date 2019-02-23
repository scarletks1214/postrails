namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime or not"

  task sms: :environment do
    puts 'I am in a rake task!'
    # 1. Schedul to run at sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip AdminUsers
    # 4. Send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
  end

end
