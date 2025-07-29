SimpleForm.setup do |config|
  config.wrappers :default, class: "mb-4", # margin bottom for spacing between fields
    hint_class: "text-gray-500 text-sm", 
    error_class: "border-red-500", # adds red border on error to input wrapper
    valid_class: "border-green-500" do |b|

    b.use :html5
    b.use :placeholder

    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly

    # Label with Tailwind classes
    b.use :label, class: "block text-gray-700 font-semibold mb-2"

    # Input with base Tailwind classes, plus error border if error_class applies
    b.use :input, class: "w-full px-3 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-indigo-500"

    # Hint text below input
    b.use :hint, wrap_with: { tag: :p, class: "text-gray-500 text-sm mt-1" }

    # Error message below input, red and smaller text
    b.use :error, wrap_with: { tag: :p, class: "text-red-600 text-sm mt-1" }
  end

  config.default_wrapper = :default
  config.boolean_style = :nested
  config.button_class = 'bg-indigo-600 hover:bg-indigo-700 text-white font-semibold px-4 py-2 rounded transition'
  config.error_notification_tag = :div
  config.error_notification_class = 'mb-4 p-3 bg-red-100 text-red-700 rounded'
  config.browser_validations = false
  config.boolean_label_class = 'inline-flex items-center space-x-2'
end
