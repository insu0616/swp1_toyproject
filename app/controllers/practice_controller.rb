class PracticeController < ApplicationController
   before_action :authenticate_user!
    def index
        @note = Note.all.reverse
    
    end
    
    def write
        Note.create(sentence: params[:naeyong], meaning: params[:uime])
        redirect_to :root
    end
    
    def destroy
        nn = Note.find(params[:id])
        nn.destroy
        redirect_to :root
    end
    
    def edit
        @note = Note.find(params[:id])
            
    end
    
    def update
        nn = Note.find(params[:id])
        nn.sentence = params[:naeyong]
        nn.meaning = params[:uime]
        nn.save
        redirect_to :root
    end
    
    
end
