ActiveAdmin.register_page "Dashboard" do
 
 menu priority: 1
  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span ("Welcome to UCSD MUN Admin Panel.")
      end
    end
  end
end
