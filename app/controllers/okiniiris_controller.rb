class OkiniirisController < ApplicationController
  def create
     micropost = Micropost.find(params[:micropost_id])
    current_user.likes(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to root_url
  
  end
end
