class EmployeeDetailsController < ApplicationController
  def new 
    @mf = EmployeeDetail.new()
  end

  def create 
    @mf = EmployeeDetail.new(edparams)
    @mf.save
    render plain: @mf.errors.inspect
  end

  def edparams 
    params.permit(:contact_no, :emplyee_id, :emergency_contact_no, :designation_id, :manager_id, :blood_group, :project_id, :experience)
  end
      # def create
  #   @article = Article.new(article_params)
  #   if @article.save
  #     flash[:notice] = "Article saved Successfully!"
  #     redirect_to @article
  #   else  
  #     render 'new'
  #   end
  # end

   #params.require(:article).permit(:title, :description)
   #params.permit(:contact_no, :emergency_contact_number, :designation, :employee_id, :manager_id, :blood_group, :project_id, :expirence)
end
