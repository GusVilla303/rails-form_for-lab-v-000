class SchoolClassesController < ApplicationController

  def show

  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end


  # def create
  #   @post = Post.new(post_params(:title, :description))
  #   @post.save
  #   redirect_to post_path(@post)
  # end
  #
  # def update
  #   @post = Post.find(params[:id])
  #   @post.update(post_params(:title))
  #   redirect_to post_path(@post)
  # end
  #
  # private
  #
  #
  # # We pass the permitted fields in as *args;
  # # this keeps `post_params` pretty dry while
  # # still allowing slightly different behavior
  # # depending on the controller action
  # def post_params(*args)
  #   params.require(:post).permit(*args)
  # end
  #


end
