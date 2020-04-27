class CategoriesController < ApplicationController
  def edit
    @category = Category.find(params[:id])
  end

  def update
    category = Category.find(params[:id])

    if category.update(category_params)
      redirect_to category, flash: { notice: '更新に成功しました' }
    else
      flash.now[:alert] = '更新に失敗しました'
      render :edit
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:description)
  end
end
