Rails.application.routes.draw do
  # Create
  get("/photos/new", {:controller => "photos", :action => "new_form"})
  get("/create_photo", {:controller => "photos", :action => "create_row"})

  # READ
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:da_id", {:controller => "photos", :action => "show"}) # The order is important

  # Update
  get("/photos/:da_id/edit", {:controller => "photos", :action => "edit_form"})
  get("/update_photo/:da_id", {:controller => "photos", :action => "update_row"})

  # DELETE
  get("/delete_photo/:da_id", {:controller => "photos", :action => "destroy_row"})

end
