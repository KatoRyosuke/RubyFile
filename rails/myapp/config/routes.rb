Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  
  
  # ���[�e�C���O����
  # ������'katotestweb1/index'��URL�̃p�X�ŁA����'katotestweb1#index'�̓R���g���[���[��#�A�N�V�������Ƃ����悤�ȈӖ�
  get 'katotestweb1/index' => 'katotestweb1#index'
  
end
