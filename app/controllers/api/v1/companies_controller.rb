class Api::V1::CompaniesController < ApplicationController

  def index
    @companies = Company.all
    render json: @companies
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      render json: @company
    else
      render json: {error: 'Error creating company'}
    end

  end

  def show
    @company = Company.find(params[:id])
    render json: @company
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end

end
