json.array!(@templates) do |template|
  json.extract! template, :id, :owner, :schoolname, :q1, :qtype1, :q2, :qtype2, :q3, :qtype3, :q4, :qtype4, :q5, :qtype5, :q6, :qtype6, :q7, :qtype7, :q8, :qtype8, :q9, :qtype9, :q10, :qtype10, :isActive
  json.url template_url(template, format: :json)
end
