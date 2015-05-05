class QuestionsController < ApplicationController
  def index
    
    
  end

  def delete
    @question = Question.find(params[:id])
    if @question.question_yes?
      @question_avant = Question.find_by id_route_yes: @question.id
      @question_2 = Question.find_by id: @question_avant.id_route_no
    else
      @question_avant = Question.find_by id_route_no: @question.id
      @question_2 = Question.find_by id: @question_avant.id_route_yes
    end

    @question_avant.update_attributes(:id_route_yes => "", :id_route_no => "")
   

    if @question_2.destroy && @question.destroy
      flash[:notice] = "La question a bien été supprimé."
    else
      flash[:alert] = "La question n'a pas été supprimé."
    end
    redirect_to new_decision_tree_question_path(@question_avant.decision_tree_id)
  end

  def destroy   
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to decision_trees_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

  def ajax_titi
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question_avant = Question.find(params[:question_avant])
    if params[:bool] == "yes" #SI user a cliquer sur YES==> fill la question YES
      @question = Question.find_by id: @question_avant.id_route_yes
      puts "***********QUESTION YES************"
    end
    if params[:bool] == "no"  #SI user a cliquer sur NO ==> fill la question NO
      @question = Question.find_by id: @question_avant.id_route_no
       puts "***********QUESTION NON************"
    end

    # puts "*************************************************************"
    # puts @question.to_yaml
    # puts "*************************************************************"




      respond_to do |format|
        format.json { render :json => {:question => @question ,:question_avant =>@question_avant }}
        # format.json { render :json =>  @question_avant.to_json }
      end

  end


  def new
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    # @question = Question.new
    @question = @decision_tree.questions.build
    # @question_first = Question.find_by_sql("select * from questions where decision_tree_id = #{@decision_tree.id} 
    #   and number_question = '1'")
    @question_first = Question.find_by decision_tree_id: @decision_tree.id ,number_question: "1" 
    puts @question_first.to_yaml
    # puts '444444444444444444444444444444444444'
    if !@question_first.nil?
    # puts @question_first.number_question
      # @question_next_yes =   Question.find_by decision_tree_id: @decision_tree.id ,id: @question_first.id_route_yes 
      # @question_next_no =  Question.find_by decision_tree_id: @decision_tree.id ,id: @question_first.id_route_no
      # puts "********************     Q_YES TITLE     *************************"
      # puts @question_next_yes.title_question
      # puts "********************     FIRST     *************************"
      # puts @question_first.to_yaml
      # puts "********************     2ND_Y     *************************"
      # puts @question_next_yes.to_yaml
      # puts "********************     2ND_N     *************************"
      #  puts @question_next_no.to_yaml
      # puts "**************************************************************"
    end
  end


  def edit
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question = Question.find(params[:id])
  end

  def create
    # puts params[:title_questions]
    decision_tree = DecisionTree.find(params[:decision_tree_id])
    # puts "*********************************************************"
    # puts decision_tree.questions.count 
    # puts "*********************************************************"
    if params[:question].nil?
      if decision_tree.questions.count == 0
        @question = decision_tree.questions.create(:title_question => params[:title_question], :number_question => "1")
        @question.save
      else
        @question = decision_tree.questions.create(:title_question => params[:title_question])
        @question.save
      end
    end
    @question_yes = decision_tree.questions.create(:title_question => params[:title_questions_yes],
         :question_yes => true)
    @question_no = decision_tree.questions.create(:title_question => params[:title_questions_no],
         :question_yes => false)
    @question_yes.save
    @question_no.save
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
  def update
    @decision_tree = DecisionTree.find(params[:decision_tree_id])
    @question = @decision_tree.questions.find(params[:id])
    
    if @question.update_attributes(question_params)
      # puts params
      # puts "*****************************************************"
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
