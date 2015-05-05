TAB[]
Affiche @question_first.title_question
TAB.new(@question_first.id)
@question_next_yes = Question.find_by id: @question_first.id_route_yes
@question_next_no = Question.find_by id: @question_first.id_route_no
margin = 10
while @question_next_yes.id_route_yes?
	if @question_next_yes.id_route_yes?
		margin = margin + 40
		if @question_next_yes.question_yes == true
			affiche	"YES"	@question_next_yes.title_question
		else
			affiche	"NO"	@question_next_yes.title_question
		end
		TAB.new(@question_next_yes.id)
		@question_next_yes = Question.find_by id: @question_next_yes.id_route_yes
	end
end
if @question_next_yes.question_yes == true
	affiche	"YES"	@question_next_yes.title_question
	TAB.new(@question_next_yes.id)
	@question_next_yes = Question.find_by id_route_yes: @question_next_yes.id
	@question_next_yes = Question.find_by id: @question_next_yes.id_route_no
else
	affiche	"NO"	@question_next_yes.title_question
	TAB.new(@question_next_yes.id)
	@question_next_yes = Question.find_by id_route_no: @question_next_yes.id
	@question_next_yes = Question.find_by id: @question_next_yes.id_route_yes
end

if @question_next_yes.question_yes == true
	affiche	"YES"	@question_next_yes.title_question
	TAB.new(@question_next_yes.id)
	@question_next_yes = Question.find_by id_route_yes: @question_next_yes.id
	margin = margin - 40
else
	affiche	"NO"	@question_next_yes.title_question
	TAB.new(@question_next_yes.id)
	@question_next_yes = Question.find_by id_route_no: @question_next_yes.id
	margin = margin - 40
end

while @question_next_yes.id != @question_first.id
	if @question_next_yes.id_route_no?
		if !TAB.contain @question_next_yes.id_route_no
			@question_next_yes = Question.find_by id: @question_next_yes.id_route_no

			while @question_next_yes.id_route_yes?
				if @question_next_yes.id_route_yes?
					margin = margin + 40
					if @question_next_yes.question_yes == true
						affiche	"YES"	@question_next_yes.title_question
					else
						affiche	"NO"	@question_next_yes.title_question
					end
					TAB.new(@question_next_yes.id)
					@question_next_yes = Question.find_by id: @question_next_yes.id_route_yes
				end
			end
			margin = margin + 40
			if @question_next_yes.question_yes == true
				affiche	"YES"	@question_next_yes.title_question
				TAB.new(@question_next_yes.id)
				@question_next_yes = Question.find_by id_route_yes: @question_next_yes.id
				margin = margin - 40
			else
				affiche	"NO"	@question_next_yes.title_question
				TAB.new(@question_next_yes.id)
				@question_next_yes = Question.find_by id_route_no: @question_next_yes.id
				margin = margin - 40
			end
		else
			@question_next_yes = Question.find_by id_route_yes: @question_next_yes.id
			margin = margin - 40
		end
	end
end
# reponse NO a la 1ere question
while @question_next_no.id_route_yes?
	if @question_next_no.id_route_yes?
		margin = margin + 40
		if @question_next_no.question_yes == true
			affiche	"YES"	@question_next_no.title_question
		else
			affiche	"NO"	@question_next_no.title_question
		end
		TAB.new(@question_next_no.id)
		@question_next_no = Question.find_by id: @question_next_no.id_route_yes
	end
end
# AFFICHE QUESTION 2
if @question_next_no.question_yes == true
	affiche	"YES"	@question_next_no.title_question
	TAB.new(@question_next_yes.id)
	@question_next_no = Question.find_by id_route_yes: @question_next_no.id
	@question_next_no = Question.find_by id: @question_next_no.id_route_no
else
	affiche	"NO"	@question_next_no.title_question
	TAB.new(@question_next_no.id)
	@question_next_no = Question.find_by id_route_no: @question_next_no.id
	@question_next_no = Question.find_by id: @question_next_no.id_route_yes
end
# -------------------------------------------
# AFFICHE QUESTION 3
if @question_next_no.question_yes == true
	affiche	"YES"	@question_next_no.title_question
	TAB.new(@question_next_no.id)
	@question_next_no = Question.find_by id_route_yes: @question_next_no.id
	margin = margin - 40
else
	affiche	"NO"	@question_next_no.title_question
	TAB.new(@question_next_no.id)
	@question_next_no = Question.find_by id_route_no: @question_next_no.id
	margin = margin - 40
end
# -------------------------------------------
while @question_next_no.id != @question_first.id
	if @question_next_no.id_route_no?
		if !TAB.contain @question_next_no.id_route_no
			@question_next_no = Question.find_by id: @question_next_no.id_route_no
			while @question_next_no.id_route_yes?
				if @question_next_no.id_route_yes?
					margin = margin + 40
					if @question_next_no.question_yes == true
						affiche	"YES"	@question_next_no.title_question
					else
						affiche	"NO"	@question_next_no.title_question
					end
					TAB.new(@question_next_no.id)
					@question_next_no = Question.find_by id: @question_next_no.id_route_yes
				end
			end
			margin = margin + 40
			if @question_next_no.question_yes == true
				affiche	"YES"	@question_next_no.title_question
				TAB.new(@question_next_no.id)
				@question_next_no = Question.find_by id_route_yes: @question_next_no.id
				margin = margin - 40
			else
				affiche	"NO"	@question_next_no.title_question
				TAB.new(@question_next_no.id)
				@question_next_no = Question.find_by id_route_no: @question_next_no.id
				margin = margin - 40
			end
		else
			if @question_next_no.question_yes == true
				@question_next_no = Question.find_by id_route_yes: @question_next_no.id
			else
				@question_next_no = Question.find_by id_route_no: @question_next_no.id
			end
			margin = margin - 40
		end
	end
end
