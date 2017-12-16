module ApplicationHelper
  def basic_button_tag(content, color: nil, record: nil, force_enable: false)
    disabled =
      if force_enable
        false
      else
        case record
        when Comment
          record.locked?
        when Post
          !record.created_at.today?
        else
          false
        end
      end

    class_name = color ? "btn-#{color}" : 'btn-green'

    button_tag(content, disabled: disabled, class: ['btn', class_name])
  end

  def button_class(color = nil)
    color_class = color ? "btn-#{color}" : 'btn-green'
    ['btn', color_class]
  end
end
