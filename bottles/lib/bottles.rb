class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    case number
    when 0
      "#{amount(number).capitalize} #{container(number)} of beer on the wall, #{amount(number)} #{container(number)} of beer.\n#{action(number)}, #{amount(99)} #{container(number-1)} of beer on the wall.\n"
    else
      "#{amount(number).capitalize} #{container(number)} of beer on the wall, #{amount(number)} #{container(number)} of beer.\n#{action(number)}, #{amount(number-1)} #{container(number-1)} of beer on the wall.\n"
    end
  end

  def successor(number)
    number - 1
  end

  def action(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def amount(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
     "one"
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

end
