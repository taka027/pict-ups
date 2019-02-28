class FundamentalController < ApplicationController
    before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

    
    def index
     @photos = Photo.all
    end
    
    def sitepolicy
    end    
    
    def about_site
    end
    
    def trade_law
    end 
    
    def display_photo
    end    
    
    def form
     @form = Form.new
     render :action => 'form'
    end  
  
    def confirm
     @form = Form.new(form_params)
     if @form.valid?
       render :action => 'confirm'
     else
       render :action => 'form'
     end
    end
 
    def sended
     @form = Form.new(form_params)
     if params[:back]
       render :action => 'form'
     else
       FormMailer.received_email(@form).deliver_now
       render :action => 'sended'
     end
    end
  
    private
    def form_params
     params.require(:form).permit(:name, :email, :message)
    end
  
end
