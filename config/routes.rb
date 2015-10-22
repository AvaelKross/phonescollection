Rails.application.routes.draw do
  devise_for :users

  root 'phones_wiki#brands'

  scope '/wiki' do
    get '/' => 'phones_wiki#brands', as: 'brands'
    get '/:brand_id' => 'phones_wiki#phones', as: 'phones'
    get '/:brand_id/new' => 'phones_wiki#new', as: 'new_phone'
    get '/:brand_id/:id' => 'phones_wiki#show', as: 'phone'
    get '/:brand_id/:id/edit' => 'phones_wiki#edit', as: 'edit_phone'
    post '/:brand_id' => 'phones_wiki#show', as: 'create_phone'
    patch '/:brand_id/:id' => 'phones_wiki#update', as: 'update_phone'
    delete '/:brand_id/:id' => 'phones_wiki#destroy', as: 'destroy_phone'
  end

  get '/collections' => 'index#collections', as: 'collections'
end
