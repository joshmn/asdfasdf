module AhoyCaptain
  module Stats
    class TotalVisitsController < BaseController
      def index
        @stats = lazy_window(AhoyCaptain::Stats::TotalVisitorsQuery.call(params).with_lazy_comparison(compare_mode?).group_by_period(selected_interval, :started_at).count)
        @label = "Visitors"
      end
    end
  end
end
