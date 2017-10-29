Rails.application.routes.draw do
  devise_for :users

  if Rails.env.development?
    authenticate :user do
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    end
  end

  post "/graphql", to: "graphql#execute"

  # catchall
  match '*path', to: redirect('/'), via: :all
end
