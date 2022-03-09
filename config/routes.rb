Rails.application.routes.draw do
  get 'aaas/new'
  post 'aaas' => 'aaas#create' #新しいデータの作成はpostメソッド
  get 'aaas' => 'aaas#index'
  get 'aaas/edit'
  # :idを使ってみる
  get 'aaas/:id' => 'aaas#show', as: 'aaa' #aaaとしてlists#showの設定を使える
  get 'aaas/:id/edit' => 'aaas#edit', as: 'edit_aaa'
  patch 'aaas/:id' => 'aaas#update', as: 'update_aaa'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'kons#top'
  get 'sub' => 'kons#sub'
  get 'thanks' => 'kons#thanks'
  get 'thanks2' => 'kons#thanks2'
  get 'hoge' => 'kons#hoge'
end
