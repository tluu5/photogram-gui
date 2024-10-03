class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })
    
    render({ :template => "user_templates/index" })
  end

  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username })
    @the_user = matching_usernames.at(0)

    render({ :template => "user_templates/show" })
  end

  def destroy
    the_id = params.fetch("toast_id")
    matching_users = User.where({ :id => the_id })
    the_user = matching_users.at(0)
    the_user.destroy
    redirect_to("/users")
  end

  def create
    input_username = params.fetch("query_username")
    a_new_user = User.new
    a_new_user.username = input_username
    a_new_user.save
    redirect_to("/users/" + a_new_user.username)
  end

  def update
    the_id = params.fetch("user_id")
    new_username = params.fetch("input_username")
    matching_usernames = User.where({ :id => the_id })
    the_user = matching_usernames.at(0)
    the_user.username = new_username
    the_user.save
    redirect_to("/users/" + the_user.username)
  end
end
