class QuestionsController < ApplicationController
  def index

  end
  def new
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    # @question = Question.new
    @question = @decision_tree.questions.build
  end


  def create
    decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question = decision_tree.questions.create(question_params)
    @question.save
    if @question.save
      flash[:notice] = "La question a bien été créé."
      redirect_to decision_tree_question_path(decision_tree, @question)
    else
      flash[:alert] = "La question n'a pas été créé"
    end 
  end
  def show
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question = @decision_tree.questions.find(params[:id])

  end
  def update
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question = @decision_tree.questions.find(params[:id])
    if @question.update_attributes(question_params)
      flash[:notice] = "La question a bien été modifié."
      redirect_to decision_tree_question_path(@decision_tree, @question)
    else
      flash[:alert] = "La question n'a pas été modifié."
    end 
  end

private
  def question_params
    params.require(:question).permit(:title_question)
  end
end
