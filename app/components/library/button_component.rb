class Library::ButtonComponent < ApplicationComponent
  def initialize(label:, path:, method: nil, data: {}, type: nil, variant: nil, style: "")
    @label = label
    @path = path
    @method = method
    @data = data
    @type = type
    @variant = variant&.to_sym
    @style = style
  end

  def style
    @style.presence || default_style
  end

  def default_style
    base = "text-gray-800 hover:underline cursor-pointer mr-2"

    if @variant.nil?
      base
    else
      "#{variant_styles[@variant] || variant_styles[:primary]}"
    end
  end

  def variant_styles
    {
      primary: "px-4 py-2 font-semibold text-center text-white bg-indigo-600 rounded-lg hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 transition min-w-[130px]",
      secondary: "px-4 py-2 font-semibold text-center text-indigo-600 border border-indigo-600 rounded-lg hover:bg-indigo-50 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 transition min-w-[100px]",
      danger: "px-4 py-2 font-semibold text-center text-white bg-red-600 rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-offset-2 transition min-w-[250px]",
      link: "text-indigo-600 hover:underline focus:outline-none focus:ring-2 focus:ring-indigo-500 transition",
      link_danger: "text-red-600 hover:underline focus:outline-none focus:ring-2 focus:ring-red-500 transition"
    }
  end
end
