class SchoolClassesController < ApplicationController

  def show

  end
  def new
    @school_class = SchoolClass.new
  end

  def create
  #  binding.pry
    @school_class = SchoolClass.new(title: params[:school_class][:title],
                                    room_number: params[:school_class][:room_number]
                                  )
    #binding.pry
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end
end
