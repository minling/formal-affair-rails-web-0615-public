class ConcretesController < ApplicationController
  def new
    @concrete = Concrete.new
  end

  def create
    @concrete = Concrete.new
    @concrete.mix_type = params[:concrete][:mix_type]
    @concrete.color = params[:concrete][:color]
    @concrete.psi = params[:concrete][:psi]
    @concrete.cost_per_yard = params[:concrete][:cost_per_yard]
    @concrete.save 
    render nothing: true
  end

  def edit
    @concrete = Concrete.find(params[:id])
  end

  def update
    render nothing: true
  end
end
