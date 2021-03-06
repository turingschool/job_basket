class CommentsController < AuthorizationController
  def index
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @company = Company.find(params[:id])
    @comment = @company.comments.create(comment_params)
    redirect_to(:back)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content, :author)
  end


end
