class UsersController < ApplicationController

  def index
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    
  end

  def update
    @user = User.find(params[:id])
    redirect_to user_path(@user)
  end

  def destroy
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :admin)
  end


# <%= form_for :user do |f| %>
#   <%= f.label :name %>:
#   <%= f.text_field :name %><br>
#   <%= f.label :height %>:
#   <%= f.text_field :height %><br>
#   <%= f.label :happiness %>:
#   <%= f.text_field :happiness %><br>
#   <%= f.label :nausea %>:
#   <%= f.text_field :nausea %><br>
#   <%= f.label :tickets %>:
#   <%= f.text_field :tickets %><br>
#   <%= f.submit 'Create User' %>
# <% end %>

end