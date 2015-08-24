class QuestionsController < ApplicationController
  def index
  end

  #Suppression d'une question dans un arbre de décision.
  #Si on supprime une question (Yes ou No), on doit obligatoirement supprimer l'autre, 
  # ainsi que les dépendance de la question mère
  def delete
    # On récupère la question
    @question = Question.find(params[:id])
    # Si c'est une question Yes , on va attribuer question_2 a la question No
    if @question.question_yes?
      @question_avant = Question.find_by id_route_yes: @question.id
      @question_2 = Question.find_by id: @question_avant.id_route_no
    # Sinon l'inverse
    else
      @question_avant = Question.find_by id_route_no: @question.id
      @question_2 = Question.find_by id: @question_avant.id_route_yes
    end

    # On enleve la dépendance de la question d'avant
    @question_avant.update_attributes(:id_route_yes => "", :id_route_no => "")
   
    # On supprime les 2 question : la Yes et la No
    if @question_2.destroy && @question.destroy
      flash[:notice] = "La question a bien été supprimé."
    else
      flash[:alert] = "La question n'a pas été supprimé."
    end
    redirect_to new_decision_tree_question_path(@question_avant.decision_tree_id)
  end

  # Methode pour afficher la question que le hotlineur a cliquer
  def ajax_titi
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question_avant = Question.find(params[:question_avant])
    if params[:bool] == "yes" #SI user a cliquer sur YES==> fill la question YES
      @question = Question.find_by id: @question_avant.id_route_yes
    end
    if params[:bool] == "no"  #SI user a cliquer sur NO ==> fill la question NO
      @question = Question.find_by id: @question_avant.id_route_no
    end
      respond_to do |format|
        format.json { render :json => {:question => @question ,:question_avant =>@question_avant }}
      end
  end


  def new
    @titre= "Arbre de Décision"
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question = @decision_tree.questions.build
    @question_first = Question.find_by decision_tree_id: @decision_tree.id ,number_question: "1" 
  end

  # Modifier une question
  def edit
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question = Question.find(params[:id])
  end

  # Créer une nouvelle question
  def create
    decision_tree = DecisionTree.find(params[:decision_tree_id])
    if params[:question].nil?
      # Si le nombre de question de l'abre est a 0, ==> c'est la première question , on lui attribu le number_question "1"
      if decision_tree.questions.count == 0
        @question = decision_tree.questions.create(:title_question => params[:title_question], :number_question => "1")
        @question.save
      else
        # Sinon on créer la question sans le number question
        @question = decision_tree.questions.create(:title_question => params[:title_question])
        @question.save
      end
    end
    # On créer la question _Yes 
    @question_yes = decision_tree.questions.create(:title_question => params[:title_questions_yes],
         :question_yes => true)
    # On créer la question _NO
    @question_no = decision_tree.questions.create(:title_question => params[:title_questions_no],
         :question_yes => false)
    @question_yes.save
    @question_no.save
    # On ajoute les dépendance des questions Yes et No a la question qu'on vient de créer 
    if params[:question].nil?
      if @question.update_attributes(:id_route_yes => @question_yes.id, :id_route_no => @question_no.id)
        redirect_to new_decision_tree_question_path
      end
    else
      @question = Question.find(params[:question])
      if @question.update_attributes(:id_route_yes => @question_yes.id, :id_route_no => @question_no.id)
        redirect_to new_decision_tree_question_path
      end
    end

  end
  def show
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question = @decision_tree.questions.find(params[:id])
    @question_new = Question.new
    @question_first = Question.find_by decision_tree_id: @decision_tree.id ,number_question: "1" 
  end

  # Modifier la question
  def update
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question = @decision_tree.questions.find(params[:id])
    if @question.update_attributes(question_params)
      flash[:notice] = "La question a bien été modifié."
      redirect_to new_decision_tree_question_path(@decision_tree, @question)
    else
      flash[:alert] = "La question n'a pas été modifié."
    end 
  end

private
  def question_params
      params.require(:question).permit(:title_question)
  end


end
