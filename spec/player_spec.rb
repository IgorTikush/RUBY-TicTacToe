require "spec_helper"

module TicTacToe
    RSpec.describe Player do
        context "#initialize" do

            it "raises an exeception when initialized with {}" do
                expect { Player.new({}) }.to raise_error
            end

            it "does not raise an error when valid input" do
                input = { color: "X", name: "Someone"}
                expect { Player.new(input) }.to_not raise_error
            end

            it "returns the name" do
                input = { color: "X", name: "Someone"}
                player = Player.new(input)
                expect(player.name).to eq "Someone"
            end

            it "returns the color" do
                input = { color: "X", name: "Someone"}
                player = Player.new(input)
                expect(player.color).to eq "X"
            end
        end
    end
end