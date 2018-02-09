class HomeController < ApplicationController
  def index

    if params[:search]
      @books = Book.search(permit_params['search'])
    else
      @books = Book.all.order('created_at DESC')
    end

  end


  private

  def permit_params
    params.permit(:search)
  end

end
