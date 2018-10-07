require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  # As a user
  # I want to answer another user's question
  # So that I can help them solve their problem
  describe "answering a question" do
    visit user_questions_path
  end
  #   As a user
  # I want to view the answers for a question
  # So that I can learn from the answer


  #   As a user
  # I want to edit a question
  # So that I can correct any mistakes or add updates
  #
  # As a user
  # I want to delete a question
  # So that I can delete duplicate questions
end
