json.array!(@practices) do |practice|
  json.extract! practice, :id, :start_time, :end_time, :instrument_id, :user_id, :notes
  json.url practice_url(practice, format: :json)
end
