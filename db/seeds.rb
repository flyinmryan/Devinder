# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
# #
#   users = User.create([{ name: 'Ji' }, { name: 'Copenhagen' }])
  User.create(name: "Bill Nye", email: "bn@gmail.com", password: "123", role:
"Developer", title: "Full Stack Developer", description: "I used to teach science, now I write code", rating: 43, total_ratings:
 10, photo: "men/18")

 User.create(name: "Neil Tyson", email: "nt@gmail.com", password: "123", role:
 "Developer", title: "Database Minimalization", description: "I concentrate on compression.  The same DB can store a lot more information if files are compressed", rating: 48, total_ratings:
 10, photo: "men/13")

 User.create(name: "Carl Seagram", email: "cs@gmail.com", password: "123", role:
"Developer", title: "Front End Angular", description: "Focused on User Interface and User Experience.  I have experience with many different front end frameworks.", rating: 34, total_ratings:
10, photo: "men/14")

User.create(name: "Sunshine Construction", email: "sc@gmail.com", password: "123", role:
"Client", title: "Sunshine Contruction", description: "We do everything from filling pot holes to constructing entire community centers", rating: 34, total_ratings:
10, photo: "men/15")

User.create(name: "Safeway", email: "s@gmail.com", password: "123", role: "Client", title: "Safeway", description: "We do neighborhood groceries", rating: 24, total_ratings:
10, photo: "women/15")

Project.create(title: "Need website built", description: "We are a small startup, trying to create an online precense. Looking for a full stack
developer.")

Project.create(title: "iOS app for Safeway", description: "We are looking to integrate an iOS app experience for our customers.  We would like the app built completely include back and front end technologies.")

ProjectDetail.create(user_id: 4, project_id: 1)
ProjectDetail.create(user_id: 5, project_id: 2)
