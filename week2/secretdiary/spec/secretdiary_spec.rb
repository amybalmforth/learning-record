require "secretdiary"
describe Secretdiary do

  let(:diary) { Secretdiary.new }

  context "new diary" do

    it "has an entries array" do
      expect(diary.entries).to be_an(Array)
    end

    it "has an empty entries array" do
      expect(diary.entries).to be_empty
    end

    it "diary starts off locked" do
      expect(diary.locked).to eq true
    end

    it "unlocking the diary changes locked? to false" do
      diary.unlock
      expect(diary.locked).to eq false
    end

    it "locking the diary changes locked? to true" do
      diary.lock
      expect(diary.locked).to eq true
    end

  end

  context "unlocked diary" do

    let(:entry){ double :entry }
    let(:entries){ double :entries }

    it "responds to add entry" do
      expect(diary).to respond_to(:add_entry)
    end

    it "expect entries to include entry" do
      diary.unlock
      diary.add_entry(entry)
      expect(diary.entries).to include(entry)
    end

    # it 'creates journey record' do
    #   history = { entry: entry_station, exit: exit_station }
    #   journey.touch_in(entry_station, card)
    #   journey.touch_out(exit_station, card)
    #   expect(journey.journeys).to include(history)
    # end

  end

end
