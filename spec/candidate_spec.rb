require './lib/candidate'
require './lib/race'

RSpec.describe Candidate do
  it 'exists and has attributes' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana).to be_a (Candidate)
    expect(diana.name).to eq ("Diana D")
    expect(diana.party).to eq (:democrat)
  end

  it 'has no votes' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana.votes).to eq (0)
  end

  it 'has votes' do
    diana = Candidate.new({name: "Diana D", party: :democrat})
    diana.vote_for!
    diana.vote_for!
    diana.vote_for!
    expect(diana.votes).to eq (3)
    diana.vote_for!
    expect(diana.votes).to eq (4)
  end

end