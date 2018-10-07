class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    render :show
  end

  def create
    @question = Question.new(question_params)
    binding.pry
    if @question.save
      flash[:notice] = 'Thank you for your question'
      redirect_to @question
    else
      render action :new
    end
  end

  def delete
    
  end

end
