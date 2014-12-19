json.array!(@practices) do |practice|
  json.extract! practice, :id, :seconds_elapsed, :instrument_id, :user_id, :notes
  json.url practice_url(practice, format: :json)
end
