Rails.application.routes.draw do
  # namespace :api do
  #   get 'messages/reply'
  # end
  # get 'messages/reply'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/messages" => "messages#create"
    get "/places" => "places#index"
    get "/places/:id" => "places#show"

    get "/zips" => "zips#index"
    get "/zips/:id" => "zips#show"
  end

  resource :messages do
  collection do
    post 'reply'
  end
end
end
