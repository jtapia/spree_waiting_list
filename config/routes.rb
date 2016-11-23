Spree::Core::Engine.routes.draw do
  resources :stock_requests

  get "/admin/reports/stock_requests", to: "admin/reports#stock_requests", as: "stock_requests_admin_reports"
end
