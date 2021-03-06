# encoding: utf-8
class KoordinatorsController < ApplicationController
  def create
    @odeme_program = Odeme::Program.find(params[:program_id])
    @koordinator = @odeme_program.koordinators.create(params[:koordinator])
    if @koordinator.save
      @odeme_program.update_attribute(:krd,true)
      redirect_to "/odeme/programs"
      flash[:notice] = "Başarılı bir şekilde kaydedildi."
    else
      redirect_to "/odeme/programs"
      flash[:notice] = "Kayıt işlemi sırasında hata oluştu."
    end
  end
end
