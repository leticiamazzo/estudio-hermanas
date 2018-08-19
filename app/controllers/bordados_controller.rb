class BordadosController < ApplicationController
    def index
        @bordados = Bordado.all
    end

    def new
        @bordado = Bordado.new
    end

    def show
        @bordado = Bordado.find(params[:id])
    end

    def create
        @bordado = Bordado.new(bordado_params)
       
        @bordado.save
        redirect_to @bordado
    end

    def edit
        @bordado = Bordado.find(params[:id])
    end

    def update
        @bordado = Bordado.find(params[:id])
        
        if @bordado.update(bordado_params)
            redirect_to @bordado
        else
            render 'edit'
        end
    end
    
    def destroy
        @bordado = Bordado.find(params[:id])
        @bordado.destroy
       
        redirect_to bordados_path
    end

    private
    def bordado_params
        params.require(:bordado).permit(:title, :text)
    end
end