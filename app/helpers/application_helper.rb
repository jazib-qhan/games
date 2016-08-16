##
# Public module acting as helper for all the basic page
# through out the app.

module ApplicationHelper

  def is_devise_controller?
    if params[:controller].to_s.split('/')[0] === 'devise' || params[:controller] === "registrations" || params[:controller] === "sessions"
      true
    else
      false
    end
  end

  def devise_error_message!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t('errors.messages.not_saved',
                      count: resource.errors.count,
                      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
     <div class="session-alerts alert alert-dismissable alert-danger"> <button type="button"
      class="close" data-dismiss="alert">x</button>
      #{messages}
     </div>
    HTML

    html.html_safe
  end

  def body_class(controller)
    if controller === "devise/sessions" || controller === "devise/registrations" || controller === "devise/passwords"
      'contrast-red login contrast-background'
    end
  end

  def base_url
    request.base_url
  end

  ##
  # Public method returns user time
  # zone to be used on app level.

  def any_user_zone(id)
    if user_signed_in?
      patient_check_ins = PatientCheckIn.where.not(at_datetime: nil).first
      local_time(patient_check_ins.at_datetime, format: "%Z", id: "#{id}", class: "#{id}", title: "")
    end
  end


  #
  # Public method to set the title
  # for the app in different env

  def title_for_app
    "gMaps"
  end

  ##
  # Public method which shows all the possible apis as Array of
  # hashes.

  def api_options
    options = [{id: "challenge_apis", title: "Customers"},{id: 'patient_challenge_apis', title: "Advertisements"}].sort_by { |k| k[:title]}
  end


end