module EventsHelper
  def check_access(event, current_user)
    out = ''
    if current_user == event.creator
      out << link_to('Edit', edit_event_path(event))
      out << link_to('Destroy', event, method: :delete, data: { confirm: 'Are you sure?' })
    elsif event.attendees.include?(current_user)
      out << link_to('Cancel Enrollment', cancel_enrollment_event_path, class: 'enrollment-btn')
    else
      out << link_to('Enrollment', enrollment_event_path, class: 'enrollment-btn') unless event.date_time < Time.now 
    end
    out.html_safe
  end

  def check_attendees(event)
    out = ''
    if event.attendees.empty?
      out << '<p> This event has no attendees yet </p>'
    else
      event.attendees.each do |attendee|
        out << "<p>#{attendee.name}</p>"
      end
    end
    out.html_safe
  end

  def check_event(event)
    out = ''
    out << '<p> Registration for this event is now closed </p>' if event.date_time < Time.now
    out.html_safe
  end
end
