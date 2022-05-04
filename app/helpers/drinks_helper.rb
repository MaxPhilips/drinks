module DrinksHelper
  def display_results_header(count)
    "#{pluralize(count, 'Drink')} match#{count == 1 ? 'es' : ''}"
  end
end
