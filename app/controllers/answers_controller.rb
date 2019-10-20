# frozen_string_literal: true

class AnswersController < ApplicationController
  before_action :set_answer, only: %i[show edit update destroy]
  before_action :set_question, only: %i[new create edit update destroy]

  def index
    @answers = Answer.all
  end

  def show; end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit; end

  # POST /answers
  def create
    @answer = Answer.new(answer_params)
    @answer.question = @question
    if @answer.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  # PATCH/PUT /answers/1
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html do
          redirect_to question_path(@question),
                      notice: 'answer was successfully updated.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /answers/1
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html do
        redirect_to question_path(@question),
                    notice: 'answer was successfully deleted.'
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:name, :code, :correct)
  end
end
