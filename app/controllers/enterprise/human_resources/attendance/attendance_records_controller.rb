class Enterprise::HumanResources::Attendance::AttendanceRecordsController < GenericResourceController

  def setup_controller
    setup_variables( AttendanceRecord,
                     'Attendance Record',
                     'Record of Presence',
                     [],
                     [],
                     @@routes.enterprise_human_resources_attendance_path)
  end

  def process_form(my_attendance_record, current_params, wizard_mode = nil)

    attendance_records_processing = Proc.new do

      my_attendance_record.save!
    end

    setup_process(my_attendance_record, attendance_records_processing, wizard_mode)
  end

end
