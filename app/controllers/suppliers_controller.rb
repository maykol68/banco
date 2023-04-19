class SuppliersController < ApplicationController
    def index
        @suppliers = Supplier.all
    end

    def show
       supplier
    end

    def new
        @supplier = Supplier.new
    end

    def create
        @supplier =  Supplier.new(supplier_params)

        if @supplier.save
           redirect_to suppliers_path, notice: t('.created')
        else
            render :new, status: :unprocessable_entity  
        end
    end

    def edit
        supplier
    end

    def update
        if supplier.update(supplier_params)
            redirect_to suppliers_path, notice: t('.updated')
        else
            render :edit, status: :unprocessable_entity  
        end
    end

    def destroy 
        supplier.destroy

        redirect_to suppliers_path, notice: t('.removed'), status: :see_other
    end


    private

    def supplier_params
        params.require(:supplier).permit(:name, :nit, :Name_of_the_contact_person, :Contact_person_cell_phone_number)
    end

    def supplier
        @supplier = Supplier.find(params[:id])
    end
end