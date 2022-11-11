Rails.application.routes.draw do

  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users do
    collection { post :import }
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
      # 1ヶ月分の変更申請
      get 'attendances/edit_one_month'
      patch 'attendances/update_one_month'
      # 1ヶ月分の勤怠申請
      get 'attendances/edit_one_month_request'
      patch 'attendances/update_one_month_request'
      # アコーディオンフォーム
      get 'accordion_form'
      # 出勤中社員
      get 'employee_at_work_index'

    end
    resources :attendances, only: :update
    member do
      # 残業申請 
      get 'edit_overwork'
      patch 'update_overwork'
      # 残業承認
      get 'edit_overwork_notice'
      patch 'update_overwork_notice'
      # 勤怠承認
      get 'edit_attendance_change'
      patch 'update_attendance_change'
      # １ヶ月分の承認
      get 'edit_one_month_approval'
      patch 'update_one_month_approval'
      #  勤怠ログ
      get 'log_page'
    end
  end

  resources :bases
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
