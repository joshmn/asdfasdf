module AhoyCaptain
  class RealtimesController < ApplicationController
    def show
      @total = event_query.where('time > ?', 1.minute.ago).distinct(:visit_id).count
    end
  end
end
