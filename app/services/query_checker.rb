class QueryChecker
  attr_reader :file_path, :results

  def initialize(params)
    @queries = params[:queries]
    @file_path = "tmp/#{Time.now.to_i}.yml"
  end

  def call
    parse_queries
    compare_results
    save_results

    @results
  end

  private

  def parse_queries
    @test_queries = {}
    @queries.split("\n").each.with_index(1) do |query, i|
      @test_queries[i] = query
    end
  end

  def compare_results
    @results =
      Constants::Queries::STANDART.map do |key, standart_query|
        comparator = QueryComparator.new(
          test_query: @test_queries[key], standart_query: standart_query, number: key
        )
        comparator.process
        comparator
      end
  end

  def save_results
    File.open(file_path, 'w') { |file| file.write(results.to_yaml) }
  end
end
