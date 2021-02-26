module EventsHelper
  def check_access(event)
    out = ''
    if current_user == event.creator
      out << link_to('Edit', edit_event_path(event))
      out << link_to('Destroy', event, method: :delete, data: { confirm: 'Are you sure?' })
    end
    out.html_safe
  end
end
