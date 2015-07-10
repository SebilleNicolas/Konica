class DecisionTreesController < ApplicationController
  def index
    @decision_trees = DecisionTree.all
  end
  def new
    @decision_trees = DecisionTree.new
  end
  def edit
    @decision_tree = DecisionTree.find(params[:id])
  end

  # Ajouter un arbre de décision
  def create
    @time = Time.now
    @hour = @time.strftime("%H")
    @minute = @time.strftime("%M:%S")
    @date = @time.strftime("%Y-%m-%d")
    @decision_tree = DecisionTree.create(decision_tree_params)
    @decision_tree.save
    # Ajouter la tracabilité 
    @user_add_decision_tree = UserAddDecisionTree.create(user_id: current_user.id, 
      decision_tree_id: @decision_tree.id, date_add: @date, hour_add: @hour, minute_add: @minute)
    @user_add_decision_tree.save
    redirect_to new_decision_tree_question_path(@decision_tree)
  end

  # Supprimer un arbre de décision
  def destroy   
    @decision_tree = DecisionTree.find(params[:id])
    @decision_tree.destroy

    respond_to do |format|
      format.html { redirect_to decision_trees_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end


  # Modifier le titre de l'arbre de décision
  def update
    @time = Time.now
    @hour = @time.strftime("%H")
    @minute = @time.strftime("%M:%S")
    @date = @time.strftime("%Y-%m-%d")
    @decision_tree = DecisionTree.find(params[:id])
    if @decision_tree.update_attributes(decision_tree_params)
      @user_update_decision_tree = UserUpdateDecisionTree.create(user_id: current_user.id ,
       decision_tree_id: @decision_tree.id, date_update: @date, hour_update: @hour, minute_update: @minute)
      @user_update_decision_tree.save
      # puts params
      # puts "*****************************************************"
      flash[:notice] = "L'arbre de décision a bien été modifié."
      redirect_to new_decision_tree_question_path(@decision_tree)
    else
      flash[:alert] = "L'arbre de décision n'a pas été modifié."
    end 
  end

private
  def decision_tree_params
    params.require(:decision_tree).permit(:title_decision_tree)
  end

end
