class StockRequestsController < Spree::BaseController 
  def new
    @stock_request = StockRequest.new
  end

  def create
    @stock_request = StockRequest.create(params[:stock_request])

    if @stock_request.valid?
      redirect_to root_path, :notice => t(:successful_stock_request)
    else
      render :action => 'new'
    end
  end
end
