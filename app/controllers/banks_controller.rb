class BanksController < ApplicationController
    def index
        @banks = Bank.all
    end

    def show
       bank
    end

    def new
        @bank = Bank.new
    end

    def create
        @bank =  Bank.new(bank_params)

        if @bank.save
           redirect_to banks_path, notice: t('.created')
        else
            render :new, status: :unprocessable_entity  
        end
    end

    def edit
        bank
    end

    def update
        if bank.update(bank_params)
            redirect_to banks_path, notice: t('.updated')
        else
            render :edit, status: :unprocessable_entity  
        end
    end

    def destroy 
        bank.destroy

        redirect_to banks_path, notice: t('.removed'), status: :see_other
    end


    private

    def bank_params
        params.require(:bank).permit(:name, :bank_account_number)
    end

    def bank
        @bank = Bank.find(params[:id])
    end
end