class BillsController < ApplicationController
  def index
    @bills = Bill.showbills
  end

end
