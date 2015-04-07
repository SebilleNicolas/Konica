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

  def create
    @decision_tree = DecisionTree.create(decision_tree_params)
    @decision_tree.to_yaml
    # puts '********************************************************'
    # @decision_tree.save
    # @questions = Questions.new
    redirect_to new_decision_tree_question_path(@decision_tree)
  end
  def show
  end


  def destroy   
    @decision_tree = DecisionTree.find(params[:id])
    @decision_tree.destroy

    respond_to do |format|
      format.html { redirect_to decision_trees_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end
  def add_title_first_question_decision_tree
    # puts "************************************************"
    # puts params.to_yaml
    # puts decision_tree_params.to_yaml

    # ArgumentError (When assigning attributes, you must pass a hash as an argument.):
    # @decision_trees = DecisionTree.create(params[:title_decision_tree])

    # ArgumentError (When assigning attributes, you must pass a hash as an argument.):
    @decision_trees = DecisionTree.create(decision_tree_params)


    # puts "************************************************"
    @list_decision_tree = DecisionTree.all
    result = @list_decision_tree.collect do |t|
      {title_decision_tree: t.title_decision_tree}
    end
    # puts @decision_tree.to_yaml
    # if @decision_tree.save
      respond_to do |format|
        format.json { render :json => result.to_json }
      end
    # end
  end
  def update
    @decision_tree = DecisionTree.find(params[:id])
    if @decision_tree.update_attributes(decision_tree_params)
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
