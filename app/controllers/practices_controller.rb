class PracticesController < ApplicationController
  before_action :set_practice, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @practices = current_user.practices
    respond_with(@practices)
  end

  def show
    respond_with(@practice)
  end

  def new
    @practice = Practice.new
    @lnstruments = Instrument.all
    respond_with(@practice)
  end

  def edit
  end

  def create
    @practice = Practice.new(practice_params)
    @practice.user_id = current_user.id
    @practice.save
    respond_with(@practice)
  end

  def update
    @practice.update(practice_params)
    respond_with(@practice)
  end

  def destroy
    @practice.destroy
    respond_with(@practice)
  end

  private
    def set_practice
      @practice = Practice.find(params[:id])
    end

    def practice_params
      params.require(:practice).permit(:seconds_elapsed, :instrument_id, :user_id, :notes)
    end
end
