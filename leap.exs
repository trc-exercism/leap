defmodule Year do
  @doc """
  Returns whether 'year' is a leap year.

  A leap year occurs:

  on every year that is evenly divisible by 4
    except every year that is evenly divisible by 100
      unless the year is also evenly divisible by 400
  """
  @spec leap_year?(non_neg_integer) :: boolean
  def leap_year?(year) do
    _leap_year?(rem(year, 4) == 0, rem(year, 100) == 0, rem(year, 400) == 0)
  end

  defp _leap_year?(false, _, _), do: false
  defp _leap_year?(_, false, false), do: true
  defp _leap_year?(_, _, false), do: false
  defp _leap_year?(_, _, true), do: true
  
end
