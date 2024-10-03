Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show" })
  get("/delete_user/:toast_id", { :controller => "users", :action => "destroy" })
  post("/insert_user", { :controller => "users", :action => "create" })
  post("/update_user/:user_id", { :controller => "users", :action => "update" })

  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  get("/delete_photo/:toast_id", { :controller => "photos", :action => "destroy" })
  post("/insert_photo", { :controller => "photos", :action => "create" })
  post("/update_photo/:user_id", { :controller => "photos", :action => "update" })
  post("/add_comment", { :controller => "photos", :action => "add_comment"})
end
