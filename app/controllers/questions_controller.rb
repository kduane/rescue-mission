class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    # @questions.order(timestamp: :desc)
  end

  def show
    @question = Question.find(params[:id])
    render :show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      flash[:notice] = 'Thank you for your question'
      redirect_to @question
    else
      render action :new
    end
  end

  def search
    query = "%#{params[:query]}%"
    @Questions = Question
      .where('title ilike ? or description ilike ? or url ilike ?',
             query, query, query)
  end

end
