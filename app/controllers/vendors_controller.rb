class VendorsController < ApplicationController

    def index
        vendors = Vendor.all
        render json: vendors
    end

    def show
        vendor = Vendor.find_by(id: params[:id])
        render json: vendor
    end

    def create
        vendor = Vendor.new(vendor_params)
        if vendor.save
            render json: vendor
        else
            render json: { error: 'could not create vendor'}
        end
    end

    def update
        vendor = Vendor.find_by(id: params[:id])
        if vendor.update(vendor_params)
            render json: vendor
        else
            render json: { error: 'could not update vendor'}
        end
    end

    def destroy
        vendor = Vendor.find_by(id: params[:id])
        vendor.destroy
        render json: { message: "vendor 86'd" }
    end

    private

    def vendor_params
        params.require(:vendor).permit(:name, :representative, :phone, :email)
    end

end
