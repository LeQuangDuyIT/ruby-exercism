class Proverb
  def initialize(*items, qualifier: nil)
    @items = items
    @qualifier = qualifier
  end

  def to_s
    proverb_lines = []
    @items.each_cons(2) do |want, lost|
      proverb_lines << "For want of a #{want} the #{lost} was lost."
    end

    qualifier_part = @qualifier ? "#{@qualifier} " : ""
    proverb_lines << "And all for the want of a #{qualifier_part}#{@items.first}."

    proverb_lines.join("\n")
  end
end