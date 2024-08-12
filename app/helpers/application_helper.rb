module ApplicationHelper

  def icon_svg(name, add_class: '')
    file_path = "#{Rails.root}/app/assets/images/icons/#{name}.svg"

    if File.exist?(file_path)
      "<span class='icon #{name} #{add_class}'>#{File.read(file_path)}</span>".html_safe
    end
  end

end
