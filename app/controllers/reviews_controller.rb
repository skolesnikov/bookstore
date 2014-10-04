class ReviewsController < ApplicationController
  before_action :set_book

  def index
    @reviews = @book.reviews.order('created_at desc')
  end

  def new
    @review = @book.reviews.new
  end

  def create
    @review = @book.reviews.new(review_params)
    if @review.save
      redirect_to book_reviews_path(@book), notice: 'Review saved!'
    else
      render :new
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def review_params
  	params.require(:review).permit(:stars, :name, :comment)
  end
end
