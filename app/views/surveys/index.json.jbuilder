json.array!(@surveys) do |survey|
  json.extract! survey, :id, :subj, :crsenum, :sect, :coursetitle, :credits, :instrfirst, :instrlast, :q1text, :q1num, :q2text, :q2num, :q3text, :q3num, :q4text, :q4num, :q5text, :q5num, :q6text, :q6num, :q7text, :q7num, :q8text, :q8num, :q9text, :q9num, :q10text, :q10num, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10
  json.url survey_url(survey, format: :json)
end
