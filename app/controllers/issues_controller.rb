class IssuesController < ApplicationController
  def new
    @issue = Issue.new
  end

  def create
    category = Category.find_or_initialize_by(name: issue_params[:category_name])
    issue = category.issues.new(title: issue_params[:title], text: issue_params[:text])

    if category.save
      redirect_to issue, flash: { notice: '登録に成功しました' }
    else
      flash.now[:alert] = '登録に失敗しました'
      render :new
    end
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def index
    @categories = Category.eager_load(:issues)
  end

  private

  def issue_params
    params.require(:issue).permit(:category_name, :title, :text)
  end
end
