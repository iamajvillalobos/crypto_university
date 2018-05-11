subjects_hash = [
  { name: "Introduction to Computing I", slug: "CS 21A" },
  { name: "Calculus for Computer Science", slug: "MA 20.2" },
  { name: "Introduction to Computing II", slug: "CS 21B" },
  { name: "Math for Computer Science I", slug: "AMC 124" },
  { name: "Data Structures and Algorithms", slug: "CS 110" },
  { name: "Physics for Computer Scientists", slug: "PS 21" },
  { name: "Data Structures and Algorithms", slug: "CS 110" },
  { name: "Math for Computer Science II", slug: "AMC 125" }
]

professors_hash = [
  { first_name: "Mackenzie", last_name: "Whittaker" },
  { first_name: "Luther", last_name: "Lees" },
  { first_name: "Cathal", last_name: "Handley" },
  { first_name: "Helena", last_name: "Holman" }
]

# create subjects
subjects_hash.each do |subject|
  Subject.create!(name: subject[:name], slug: subject[:slug])
end

# create professors
professors_hash.each do |p|
  Professor.create!(first_name: p[:first_name], last_name: p[:last_name])
end

# add professors to the subjects
Subject.all.each do |subject|
  prof_ids = Professor.pluck(:id)
  prof_ids.sample(2).each do |prof_id|
    subject.professors << Professor.find(prof_id)
  end
end

# assign random ratings to professor subjects
Professor.all.each do |prof|
  prof.subjects.each do |subj|
    Rating.create!(amount: rand(1..5), professor: prof, subject: subj)
  end
end
