module DrinksHelper
  def drinks_column_headers
    %i(name).freeze
  end

  def drinks_column_fields
    %i(name).freeze
  end

  def results_limit
    10
  end

  def display_results_header(count)
    if count > results_limit
      "Your first #{results_limit} results out of #{count} total"
    else
      "Your #{pluralize(count, 'result')}"
    end
  end

  def display_sort_column_headers(search)
    drinks_column_headers.reduce(String.new) do |string, field|
      string << (tag.th sort_link(search, field, {}, method: :get))
    end
  end

  def display_search_results(objects)
    objects.limit(results_limit).reduce(String.new) do |string, object|
      string << (tag.tr display_search_results_row(object))
    end
  end

  def display_search_results_row(object)
    drinks_column_fields.reduce(String.new) do |string, field|
      string << (tag.td link_to object.send(field), object)
    end.html_safe
  end
end
