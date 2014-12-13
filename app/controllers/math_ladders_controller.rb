class MathLaddersController < ApplicationController
  before_action :set_math_ladder, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @math_ladders = MathLadder.all
    #@user_name = User.find(@math_ladder.user_id).name
    respond_with(@math_ladders)
  end

  def show
    respond_with(@math_ladder)
  end

  def new
    @math_ladder = MathLadder.new
    respond_with(@math_ladder)
  end

  def edit
  end

  def create
    @math_ladder = MathLadder.new(math_ladder_params)
    flash[:notice] = 'MathLadder was successfully created.' if @math_ladder.save
    respond_with(@math_ladder)
  end

  def update
    flash[:notice] = 'MathLadder was successfully updated.' if @math_ladder.update(math_ladder_params)
    render :template => '/math_ladders/update.js'
  end

  def destroy
    @math_ladder.destroy
    respond_with(@math_ladder)
  end

  private
    def set_math_ladder
      @math_ladder = MathLadder.find(params[:id])
    end

    def math_ladder_params
      params.require(:math_ladder).permit(:number, :user_id)
    end
end
