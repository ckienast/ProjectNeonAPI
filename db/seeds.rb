times = []

10.times do |i|
  times << {
    start_time: "13.10.2018 1#{i}:00",
    end_time: "13.10.2018 1#{i}:30"
  }
  times << {
    start_time: "13.10.2018 1#{i}:30",
    end_time: "13.10.2018 1#{i}:00"
  }
end

20.times do |i|
  name = Faker::Name.name

  Speaker.create(
    name: name,
    description: Faker::Lorem.paragraph,
    twitter_handle: '@' + name.parameterize.underscore
  )

  talk = Talk.create(
    start_time: times[i][:start_time],
    end_time: times[i][:end_time],
    description: Faker::Lorem.paragraph,
    topic: Faker::Lorem.sentence
  )

  Speaker.where(id: i + 1).first.talks << talk
end
