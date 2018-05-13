subjects_hash = [
  { 
    name: "Intro To Cryptoeconomics",
    slug: "CE101",
    description: "This course introduces students to the fundamental principles that give blockchains value. We will focus on how core concepts in both cryptography and economics work together to create incentive systems for blockchains. Students will also learn what it means to have a decentralized economy, and will begin to understand the protocols that govern the production, distribution and consumption of goods and services in such an economy."
  },
  {
    name: "Intro to Bitcoin",
    slug: "BTC101",
    description: "In this course, you will learn the core fundamentals about how Bitcoin works. We will look at the infamous proof-of-work consensus algorithm that makes decentralized transactions possible. You will learn a wide range of topics including public and private keys, transactions, mining, blockchain, hard forks, segwit and more. You will also be creating your own Web API wallet for bitcoin that you can showcase to potential employers."
  },
  {
    name: "Intro to Ethereum",
    slug: "ETH101",
    description: "This course prepares you to design, construct and manage enduring systems of smart contracts entrusted with significant value. We unfold essential knowledge and patterns you can use to confidently design and build your signature system."
  },
  { 
    name: "Intro to Blockchain",
    slug: "BC101",
    description: "This course is an introduction to Blockchain Technology, in general, It will teach you about the concepts underlying Blockchain Technology.
The course will also provide an overview of the blockchain: how transactions are stored on the blockchain, how mining works through consensus, the differences between permissioned and permissionless blockchains."
	}
]

professors_hash = [
  { first_name: "Haseeb", last_name: "Rabbani" },
  { first_name: "Ethan", last_name: "Erkiletian" },
  { first_name: "Luther", last_name: "Lees" },
  { first_name: "Mackenzie", last_name: "Whittaker" }
]

# create subjects
subjects_hash.each do |subject|
  Subject.create!(name: subject[:name], slug: subject[:slug], description: subject[:description])
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
