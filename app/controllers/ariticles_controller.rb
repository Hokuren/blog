class AriticlesController < ApplicationController
    before_action :authenticate_user!, exept: [:show,:index] 
    before_action :set_article, except: [:index,:new,:create]
    #GET /articles
    def index 
        @articles = Ariticle.all
    end

    #GET /articles/:id
    def show
        #@article =Ariticle.find(params[:id])
        @article.update_visits_count
    end

    #GET /articles/new
    def new
        @article = Ariticle.new
    end

    def edit
        #@article = Ariticle.find(params[:id])
    end

    #POST /articles
    def create
        #insert into 
        #@article = Ariticle.new(title: params[:ariticle][:title],body: params[:ariticle][:body]) 
        @article = current_user.ariticles.new(article_params)
        if @article.save
            redirect_to @article
        else
            render :new 
        end

    end
    
    #DELETE /articles/:id/
    def destroy
        # delete from articles 
        #@article = Ariticle.find(params[:id])
        @article.destroy #destroy elimina el objeto de la base de datos 
        redirect_to ariticles_path
    end

    #PUT /articles/:id
    def update
        #update
        # @article.update_attibutes({title: "Nuevo Titulo"})
        @article = Ariticle.find(params[:id])
        if @article.update(article_params)
            redirect_to @article
        else
            render :edit
        end
    end

    private 

    #def validate_user
    #    redirect_to new_user_session_path, notice: "Necesitas Iniciar Sesion"
    #end

    def set_article
        @article = Ariticle.find(params[:id])
    end

    def article_params
        params.require(:ariticle).permit(:title,:body)
    end

end