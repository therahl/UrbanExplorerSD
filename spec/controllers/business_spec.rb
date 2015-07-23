require 'rails_helper'

RSpec.describe BusinessesController, type: :controller do
  context "business CRUD" do
    it "persists when saved" do
      b = Business.create(name: "happy moon")
      f = Business.where(name: "happy moon")
      expect(f).to exist
    end

    it "does not save when invalid params" do
      b = Business.create(name: "happy moon", animals: "should not exist")
      expect(b).to raise_error
    end

    it "is deleted" do
    end

    it "is updated" do
    end
  end


end
