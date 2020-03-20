class Api::V1::EmployeesController < ApplicationController
  before_action :set_company

  def index
    @employees = Employee.all
    render json: @employees
  end

  def new
    @employee = @company.employees.build
  end

  def create
    @employee = @company.employees.build
      if @employee.update(employee_params)
          render json: @company
      else
          render json: {error: 'Error creating employee'}
  end
  end

  def show
    @employee = Employee.find(id: params[:id])
       render json: @employee
  end

  def destroy
    @employee = Employee.find(params["id"])
       @company = Company.find(@employee.company_id)
       @employee.destroy
       render json: @company
  end

  private

  def set_company
    @company = Company.find(params[:company_id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :department, :position, :active, :company_id)
  end

end
