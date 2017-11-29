class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    binding.pry
    #convert room_number to integer
  end

  def edit
  end

  def update
  end
end
