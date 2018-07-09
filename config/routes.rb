Rails.application.routes.draw do
  get 'calculator/cal' => 'calculator#cal'
  get 'calculator' => 'calculator#index'
  get 'calculator/cal' => 'calculator#index'

  #get 'calculator', controller: 'calculator', action: 'index'
  #get('calculator', {:controller=> 'calculator', :action => 'index'})
end
