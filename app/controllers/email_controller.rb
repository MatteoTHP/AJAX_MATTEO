class EmailController < ApplicationController

  def new
  end

  def create
    @email = Email.create(object:Faker::Book.title, body: Faker::ChuckNorris.fact)
    respond_to do |format|
      format.html { 
        
        flash[:notice] = "new email recieved"}
      format.js { 
       
        flash.now[:notice] = "new email recieved"}
          
    end
  end

  def index
    @emails = Email.all
  end

  def show 
    @email = Email.find_by(id: params[:id])
    @emails = Email.all

    respond_to do |format|
      format.html { 
        
        flash[:notice] = "new email recieved"}
      format.js { 
       
        flash.now[:notice] = "new email recieved"}
    end
  end

  def destroy
    @email = Email.find_by(id: params[:id])

    respond_to do |format|
      format.html { 
          
        flash[:notice] = "new email recieved"}
      format.js { 
         
        flash.now[:notice] = "new email recieved"}
    end
  end

  
end