class Api::V1::BusinessesController < ApplicationController
	respond_to :json

	  def show
	    respond_with Business.find(params[:id])
	  end
end
