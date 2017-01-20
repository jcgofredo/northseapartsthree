class Biodatum < ApplicationRecord

  include GenericResourceCommon
  setup_model('fa-heart',
              'description',
              @@routes.enterprise_human_resources_employee_accounts_management_biodata_path,
              Enterprise::HumanResources::EmployeeAccountsManagement::BiodataController )

  belongs_to :employee

  validates :employee_id, presence: true, uniqueness: true
  validates :name_of_mother, length: { in: 0..256 }, :allow_nil => true
  validates :name_of_father, length: { in: 0..256 }, :allow_nil => true
  validates :dependents, length: { in: 0..256 }, :allow_nil => true
  validates :complexion, length: { in: 0..64 }, :allow_nil => true
  validates :height, length: { in: 0..64 }, :allow_nil => true
  validates :sex, length: { in: 0..64 }, inclusion: {in: ['FEMALE','MALE','']}, :allow_nil => true
  validates :blood_type, length: { in: 0..64 }, inclusion: {in: ['O+','O-','A+','A-','B+','B-','AB+','AB-','']}, :allow_nil => true
  validates :education, length: { in: 0..256 }, :allow_nil => true
  validates :experience, length: { in: 0..256 }, :allow_nil => true
  validates :notable_accomplishment, length: { in: 0..256 }, :allow_nil => true
  validates :description, length: { in: 0..512 }, :allow_nil => true

  def owner
    Employee.find(employee_id).account_name
  end

  searchable_string(:owner)
  searchable_string(:name_of_mother)
  searchable_string(:name_of_father)
  searchable_string(:dependents)
  searchable_string(:complexion)
  searchable_string(:height)
  searchable_string(:sex)
  searchable_string(:blood_type)
  searchable_date(:date_of_birth)
  searchable_string(:education)
  searchable_string(:experience)
  searchable_string(:notable_accomplishment)
  searchable_string(:description)

end