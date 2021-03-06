class Admin::RolesController < ApplicationController
  layout 'admin_layout'

  before_action :set_role, only: [:show, :edit, :update, :destroy]

  def index
      @roles = Role.all
  end

  def new
    @role = Role.new
  end

  def show
  end

  def edit
  end

  def create
    @role = Role.new(params_role)
    if @role.save
      redirect_to admin_roles_path
    else
      render :new
    end
  end

  def update
    if @role.update(params_role)
      redirect_to admin_roles_path
    else
      render :edit
    end
  end

  def destroy
    if @role.destroy
      flash[:destroy] = "role #{@role.name} deleted"
    else
      flash[:destroy] = "could not be deleted"
    end
    redirect_to admin_roles_path
  end

  private
  def params_role
    params.require(:role).permit(:name)
  end

  def set_role
    @role = Role.find(params[:id])
  rescue
    flash[:set_role_error] ="could not find the record #{params[:id]}"
    redirect_to admin_roles_path
  end
end
