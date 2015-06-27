module ApplicationHelper

  def form_options(options = {})
    html = { class: 'form-horizontal', role: 'form' }
    html.merge!(multipart: options[:multipart]) if options.has_key?(:multipart)
    result = { html: html }
    result.merge!(url: options[:url]) if options.has_key?(:url)
    result.merge!(method: options[:method]) if options.has_key?(:method)
    result
  end

end
