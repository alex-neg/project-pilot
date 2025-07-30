class Library::ButtonComponent < ApplicationComponent
  def initialize(label:, path:, method: nil, data: {}, variant: nil, style: "")
    @label = label
    @path = path
    @method = method
    @data = data
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
      primary: "px-4 py-2 font-medium text-center text-white bg-indigo-400 rounded-lg border w-1/6 hover:bg-indigo-500",
      secondary: "flex justify-center items-center px-5 py-2 w-24 h-10 text-sm text-white bg-indigo-400 rounded hover:bg-indigo-500",
      link_danger: "text-red-700 hover:underline cursor-pointer mr-2",
      danger: "flex justify-center items-center px-5 py-2 w-24 h-10 text-sm text-white bg-red-400 rounded hover:bg-red-500"
    }
  end
end
