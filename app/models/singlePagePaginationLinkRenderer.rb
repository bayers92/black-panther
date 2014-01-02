class Pagination < WillPaginate::ActionView::LinkRenderer

  protected

    def pagination
      [ :previous_page, current_page, :next_page ]
    end

end