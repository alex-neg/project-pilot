class Library::ButtonComponent < ApplicationComponent
  def initialize(label:, path:, method: nil, data: {}, variant: :primary)
    @label = label
    @path = path
    @data = data
    @variant = variant
  end

  def classes
    return base_classes if @variant.nil?

    variant_classes[@variant] || base_classes
  end

  def base_classes
    "text-gray-800 hover:underline cursor-pointer mr-2"
  end

  def variant_classes
    {
      primary: "px-4 py-2 font-semibold text-center text-white bg-indigo-600 rounded-lg hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 transition min-w-[130px]",
      secondary: "px-4 py-2 font-semibold text-center text-indigo-600 border border-indigo-600 rounded-lg hover:bg-indigo-50 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 transition min-w-[100px]",
      danger: "px-4 py-2 font-semibold text-center text-white bg-red-600 rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-offset-2 transition min-w-[100px]",
      link: "text-indigo-600 hover:underline focus:outline-none focus:ring-2 focus:ring-indigo-500 transition",
      link_danger: "text-red-600 hover:underline focus:outline-none focus:ring-2 focus:ring-red-500 transition"
    }
  end
end
