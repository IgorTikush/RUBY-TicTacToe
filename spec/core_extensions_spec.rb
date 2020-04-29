require "spec_helper"

RSpec.describe Array do
    context "#all_empty" do
        it "returns true if all elemnts of the Array are empty" do
            expect(["", "", ""].all_empty?).to be true
        end

        it "returns false if some of the Array elements are not empty" do
            expect(["", 1, "", Object.new, :a].all_empty?).to be false
        end

        it "returns true for all empty array" do
            expect([].all_empty?).to be true
        end
    end

    context "#all_same" do
        it "returns false if items are not the same" do
            expect(["bag", 2, ""].all_same?).to be false
        end

        it "returns true if all items are the same" do
            expect(["bag", "bag", "bag"].all_same?).to be true
        end
     end

    context "#none_empty" do
        it "returns false if all cells are empty" do
            expect(["","",""].none_empty?).to be false
        end

        it "returns true if some of cells are not empty" do
            expect(["1","1","1"].none_empty?).to be true
        end

        xit "returns false if for all empty array" do
            expect([].none_empty?).to be false
        end
        
    end

    # context "#any_empty" do
    #     it "returns true for full empty array" do
    #         expect([].any_empty?).to be true
    #     end
    # end



end
        