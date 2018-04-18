require('sinatra')
require('sinatra/contrib/all')
require ('pry-byebug')

require_relative("./models/student.rb")


#index
get "/student" do
  @students = Student.all()
  erb(:index)
end

#new
get "/student/new" do
  erb(:new)
end

#
# #show
get "/student/:id" do
  @student = Student.find(params[:id] )
  erb(:show)
end
#
#
# #create
post "/student" do
new_student = Student.new(params)
new_student.save()
redirect to "/student"
end
#
# #edit
get "/student/:id/edit" do
  @student = Student.find(params[:id] )
  erb(:edit)
end
#

#update
post "/student/:id/edit" do
  @student = Student.new(params)
  @student.update()
redirect to "/student"
end
# #destroy
post "/student/:id/delete" do
student = Student.find(params[:id] )
student.delete()
redirect to "/student"
end
