class QuestionsController < ApplicationController

  def index
    @questions = Question.all.reverse
  end

  # def answers
  #   @question = Question.find(params[:question_id])
  # end

  def show
    @question = Question.find(params[:id])
    render :show
  end

  def new
    @question = Question.new
  end

  def create
    # binding.pry
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = 'Thank you for your question'
      redirect_to @question
    else
      render :new
    end
  end

  def search
    query = "%#{params[:query]}%"
    @Questions = Question
      .where('title ilike ? or description ilike ? or url ilike ?',
             query, query, query)
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      flash[:notice] = 'Thanks for updating!'
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to @question
  end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end

end
