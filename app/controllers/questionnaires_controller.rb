class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]

  # GET /questionnaires
  def index
    @questionnaires = Questionnaire.all
  end

  # GET /questionnaires/1
  def show
    item_names = []
    @point_max = [0, 0, 0, 0]
    nb_point = [0, 0, 0 ,0]

    Item.all.each do |i|
      item_names << i.two_line_name

      i.questions.each do |q|
        case 
          when i.id == 1
            @point_max[0] += q.answers.maximum(:points)
          when i.id == 2
            @point_max[1] += q.answers.maximum(:points)
          when i.id == 3
            @point_max[2] += q.answers.maximum(:points)
          else
            @point_max[3] += q.answers.maximum(:points)
        end
      end
    end

    @questionnaire.answers.each do |a|
      x = a.question.item_id
      case 
        when x == 1
          nb_point[0] += a.points
        when x == 2
          nb_point[1] += a.points
        when x == 3
          nb_point[2] += a.points
        else
          nb_point[3] += a.points
      end
    end
    
    @data = {
      labels: item_names,
      datasets: [
        {
            backgroundColor: "rgba(78,185,128,0.2)",
            borderColor: "#4EB980",
            data: nb_point
        }
      ]
     }

    @option = {
      responsive: true,
      maintainAspectRatio: false,
      title: {
        display: true,
        text: 'Votre résultat',
        fontSize: 20,
      },
      legend: {
          display: false
      },
      scale: {
          ticks: {
              beginAtZero: true,
              max: @point_max.max
          },
          pointLabels: {
            fontSize: 15
          }
      }
    }
  end

  # GET /questionnaires/new
  def new
    @questionnaire = Questionnaire.new
  end

  # POST /questionnaires
  def create
    if params[:question]
      answer_ids = []

      params[:question].each do |key,value|
        answer_ids << value
      end

      params[:answer_ids] = answer_ids
    end

    @questionnaire = Questionnaire.new(questionnaire_params)

    if @questionnaire.save
      redirect_to @questionnaire, notice: 'Questionnaire was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /questionnaires/1
  def update
    if @questionnaire.update(questionnaire_params)
      redirect_to @questionnaire, notice: 'Questionnaire was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /questionnaires/1
  # DELETE /questionnaires/1.json
  def destroy
    @questionnaire.destroy
      redirect_to questionnaires_url, notice: 'Questionnaire was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionnaire_params
      params.permit(:question => [], :answer_ids => [])
    end
end
