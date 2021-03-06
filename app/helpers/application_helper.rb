module ApplicationHelper

  require 'mab/kernel_method'

  def output_html_structure(html_structure)
    html_structure.to_s.html_safe
  end

  def asset_exist?(path)
    if Rails.configuration.assets.compile
      Rails.application.precompiled_assets.include? path
    else
      Rails.application.assets_manifest.assets[path].present?
    end
  end

  def public_file_exists?(path)
    current_path = Rails.root.to_s + '/public' + path
    File.exists?(current_path)
  end

  def totally_humanize(target_string)
    target_string.to_s.humanize.split.map(&:capitalize)*' '
  end

  def camel_to_human(target_string)
    target_string.to_s.underscore.humanize.split.map(&:capitalize).join(' ')
  end

  def class_to_path(current_class)
    current_class.to_s.pluralize.underscore.gsub('::','/')
  end

  def class_to_human

  end

  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

end
