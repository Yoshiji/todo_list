class V1::TodosController < ActionController::API
  def index
    render json: Todo.order(:id)
  end
end