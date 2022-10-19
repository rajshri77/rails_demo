class LikesController < ApplicationController
  def create
    puts "Create ************"
    # current_user_id = User.find(current_user.id)
    @art = Art.find(params[:art_id])

    if current_user.arts.present?
      current_user.arts << @art
    else
      current_user.arts = [@art]
    end

    #puts current_user_id
    #puts @art

    redirect_to "/"
  end

  def delete
  end

  def count
    @like_count = Art.find(params[:art_id]).users.count
    puts "Count ********************* #{@like_count}"
  end
end
