class BanksController < ApplicationController
    def index
        @banks = Bank.all
    end

    def show
       @bank = Bank.find(params[:id])
    end

    def new
        @bank = Bank.new
    end

    def create
        @bank =  Bank.new(bank_params)

        if @bank.save
           redirect_to banks_path, notice: 'Tu banco se ha creado correctamente'
        else
            render :new, status: :unprocessable_entity  
        end
    end

    def edit
        @bank = Bank.find(params[:id])
    end

    def update
        @bank = Bank.find(params[:id])

        if @bank.update(bank_params)
            redirect_to banks_path, notice: 'Tu banco se ha actualizado correctamente'
        else
            render :edit, status: :unprocessable_entity  
        end
    end

    def destroy 
        @bank = Bank.find(params[:id])
        @bank.destroy

        redirect_to banks_path, notice: 'Tu banco se ha elimnado correctamente', status: :see_other
    end


    private

    def bank_params
        params.require(:bank).permit(:name, :bank_account_number)
    end
end