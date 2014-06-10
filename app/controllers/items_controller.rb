class ItemsController < ApplicationController

  def create
    @project = Project.find(params[:id])
    @item = @project.items.create(item_params)

    redirect_to project_path(@project)
  end

  private

    def item_params
      params[:item].permit(:title)
    end

end