require "action_controller/api"

class FoosController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :raise_not_found

  def create
    raise ActiveRecord::RecordNotFound
    head :ok
  end

  def raise_not_found
    raise "What status code?"
  end
end
