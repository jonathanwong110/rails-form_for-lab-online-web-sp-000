class SchoolClassesController < ApplicationController
	def index
		@school_classes = SchoolClass.all
	end

	def show
		@school_class = SchoolClass.find(params[:id])
	end

	def new
		@school_class = SchoolClass.new
	end

  def create
    @school_class = SchoolClass.new(student_params(:first_name, :last_name))
    @school_class.save
    redirect_to student_path(@school_class)
  end
   
  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(student_params(:first_name))
    redirect_to student_path(@school_class)
  end

	def edit
	  @school_class = SchoolClass.find(params[:id])
	end
	
	private
	
  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
end
