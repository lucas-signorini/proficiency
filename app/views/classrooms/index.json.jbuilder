json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :student, :course, :entry_at
  json.url classroom_url(classroom, format: :json)
end
