class QueryComparator
  attr_reader :test_query, :standart_query, :query_number,
              :test_query_result, :standart_query_result,
              :query_errors, :result

  def initialize(test_query:, standart_query:, number:)
    @test_query = test_query
    @standart_query = standart_query
    @query_number = number
    @query_errors = {}
  end

  def process
    exec_standart_query
    exec_test_query
    @result = query_errors.blank? && (test_query_result&.rows == standart_query_result.rows)
  end

  private

  def exec_standart_query
    @standart_query_result = exec_query(standart_query)
  rescue ActiveRecord::StatementInvalid => exception
    @query_errors[:standart] = exception.message
  end

  def exec_test_query
    return unless test_query

    @test_query_result = exec_query(test_query)
  rescue ActiveRecord::StatementInvalid => exception
    @query_errors[:test] = exception.message
  end

  def exec_query(query)
    ActiveRecord::Base.connection.exec_query(query)
  end
end
