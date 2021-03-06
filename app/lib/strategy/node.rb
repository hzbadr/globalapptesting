module Strategy
  class Node
    MAGIC_NUMBER = 100.0

    def initialize(url = "http://time.com")
      @url = url
    end

    def calculate_price
      page.count_nodes / MAGIC_NUMBER
    end

    private
      def page
        Page::Html.new(Page::Fetcher.fetch(@url))
      end
  end
end
