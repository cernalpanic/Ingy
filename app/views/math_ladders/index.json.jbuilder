json.array!(@math_ladders) do |math_ladder|
  json.extract! math_ladder, :id, :number, :user_id
  json.url math_ladder_url(math_ladder, format: :json)
end
