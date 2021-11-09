class PagesController < ApplicationController
  def home
    cookies[:mi_primera_cookie] = "Hola Mundo"
  end
end
