class Task
  
  def initialize(name,priority)
    @name = name
    @priority = priority
    @complete = false
  end

  def name
    return @name
  end

  def priority
    return @priority
  end

  def complete
    return @complete
  end

  def info
    return "#{@name}: #{@complete}"
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    if @complete == false
      @complete = true
    elsif @complete == true
      @complete = false
    else
    end
  end
end

# laundry = Task.new("laundry",4)

# p laundry.priority


# garbage = Task.new("garbage")
# p garbage.info
# garbage.toggle_complete!
# p "----------"
# p garbage.info

# dishes = Task.new("dishes")
# p dishes.info
# dishes.toggle_complete!
# p dishes.info
# dishes.toggle_complete!
# p "---------"
# p dishes.info