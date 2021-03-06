require "display"
require "item"
require "basket"
require "checkout"

describe Display do
  context "welcomes user" do
    it "displays message" do
      output = StringIO.new
      display = Display.new(output)
      display.welcome_message("hello")
      expect(output.string).to eql("hello\n")
    end

    it "prompts for item name" do
      output = StringIO.new
      display = Display.new(output)
      display.user_prompt_name
      expect(output.string).to eql("What is the name?\n")
    end

    it "prompts for item price" do
      output = StringIO.new
      display = Display.new(output)
      display.user_prompt_price
      expect(output.string).to eql("What is the price?\n")
    end
  end
  #
  #   context "user can check what is in the basket" do
  #     it "with no items" do
  #     end
  #     it "with 2 items " do
  #     end
  #   end
end
