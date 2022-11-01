require './lib/race'
require './lib/candidate'

RSpec.describe Race do
  it 'exists and has attributes' do
    race = Race.new("Texas Governor")

    expect(race).to be_a (Race)
    expect(race.office).to eq ("Texas Governor")
  end

  it 'has no candidates' do
    race = Race.new("Texas Governor")

    expect(race.candidates).to eq ([])
  end

  it 'can register candidates' do
    race = Race.new("Texas Governor")
    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

    expect(race.candidates).to eq ([candidate1])
  end


  it 'can register candidates and return their attributes' do
    race = Race.new("Texas Governor")
    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
    # require 'pry'; binding.pry
    expect(candidate1).to be_a (Candidate)
    expect(candidate1.name).to eq ("Diana D")
    expect(candidate1.party).to eq (:democrat)
    candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
    expect(race.candidates).to eq ([candidate1, candidate2])
  end
end