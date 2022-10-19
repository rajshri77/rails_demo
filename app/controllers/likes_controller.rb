class LikesController < ApplicationController
  def create
    puts "Create ************"
    # current_user_id = User.find(current_user.id)
    @art = Art.find(params[:art_id])
    puts " #{@art } *******************"

    current_user.arts = [@art]

    #puts current_user_id
    #puts @art

    redirect_to "/"
  end

  def delete
    puts "Delete ******************"
  end

  def count
    puts "Count *********************"
  end
end
