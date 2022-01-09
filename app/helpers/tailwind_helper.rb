module TailwindHelper
  def tailwind_class_for(flash_type)
    {
      success: "text-white bg-green-500",
      error: "text-white bg-red-500",
      alert: "text-white bg-amber-500",
      notice: "text-white bg-green-500"
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end
end
