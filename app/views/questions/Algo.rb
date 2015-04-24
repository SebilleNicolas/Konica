TAB[]
Affiche @question_first.title_question
TAB.new(@question_first.id)
@Q_n_y = Question.find_by id: @Q_n_y.id_route_yes
@Q_n_y = Question.find_by id: @Q_n_y.id_route_no
margin = 10
while @Q_n_y.id_route_yes?
	if @Q_n_y.id_route_yes?
		margin = margin + 40
		if @Q_n_y.question_yes == true
			affiche	"YES"	@Q_n_y.title_question
		else
			affiche	"NO"	@Q_n_y.title_question
		end
		TAB.new(@Q_n_y.id)
		@Q_n_y = Question.find_by id: @Q_n_y.id_route_yes
	end
if @Q_n_y.question_yes == true
	affiche	"YES"	@Q_n_y.title_question
	TAB.new(@Q_n_y.id)
	@Q_n_y = Question.find_by id_route_yes: @Q_n_y.id
	@Q_n_y = Question.find_by id: @Q_n_y.id_route_no
else
	affiche	"NO"	@Q_n_y.title_question
	TAB.new(@Q_n_y.id)
	@Q_n_y = Question.find_by id_route_no: @Q_n_y.id
	@Q_n_y = Question.find_by id: @Q_n_y.id_route_yes
end

if @Q_n_y.question_yes == true
	affiche	"YES"	@Q_n_y.title_question
	TAB.new(@Q_n_y.id)
	@Q_n_y = Question.find_by id_route_yes: @Q_n_y.id
else
	affiche	"NO"	@Q_n_y.title_question
	TAB.new(@Q_n_y.id)
	@Q_n_y = Question.find_by id_route_no: @Q_n_y.id
end

while @Q_n_y.id != @question_first.id
	if !TAB.contain @Q_n_y.id_route_no
		@Q_n_y = Question.find_by id: @Q_n_y.id_route_no
		while @Q_n_y.id_route_yes?
			if @Q_n_y.id_route_yes?
				margin = margin + 40
				if @Q_n_y.question_yes == true
					affiche	"YES"	@Q_n_y.title_question
				else
					affiche	"NO"	@Q_n_y.title_question
				end
				TAB.new(@Q_n_y.id)
				@Q_n_y = Question.find_by id: @Q_n_y.id_route_yes
			end
		if @Q_n_y.question_yes == true
			affiche	"YES"	@Q_n_y.title_question
			TAB.new(@Q_n_y.id)
			@Q_n_y = Question.find_by id_route_yes: @Q_n_y.id
		else
			affiche	"NO"	@Q_n_y.title_question
			TAB.new(@Q_n_y.id)
			@Q_n_y = Question.find_by id_route_no: @Q_n_y.id
		end
		
	else
		@Q_n_y = Question.find_by id_route_yes: @Q_n_y.id
	end


