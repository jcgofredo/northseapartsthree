class Employee < ApplicationRecord

  include GenericResourceCommon

  setup_model('fa-black-tie',
              'account_name',
              @@routes.enterprise_human_resources_employee_accounts_management_employees_path,
              Enterprise::HumanResources::EmployeeAccountsManagement::EmployeesController)

  belongs_to :system_account
  validates_presence_of :system_account

  belongs_to :branch
  validates_presence_of :branch

  has_many :employee_statuses

  def account_name
    SystemAccount.find_by_id(system_account_id).name
  end

  def current_state
    employee_status = EmployeeStatus.where(employee_id: id)
    unless employee_status.empty?
      employee_status.order('implemented_at DESC').first.state.to_s
    else
      'N/A'
    end
  end

  searchable_string(:account_name)

end
