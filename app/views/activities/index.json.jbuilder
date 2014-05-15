json.array!(@activities) do |activity|
  json.extract! activity, :id, :title_fa, :title_en, :title_ar, :description_fa, :description_en, :description_ar
  json.url activity_url(activity, format: :json)
end
