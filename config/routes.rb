Fabericious::Application.routes.draw do

  mount Lti2Tp::Engine, at: '/lti2_tp'

  resources :echoes
  resources :settings
  resources :iresources
  resources :lti_registration_wips

  get 'complete_reregistration' => 'lti_registration_wips#complete_reregistration'

  get 'tool_profile' => 'tool_profiles#get_first'

  post 'lti_registrations' => 'lti_registrations#create', as: 'lti_registration'

  root 'home#index'

end
