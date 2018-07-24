require_relative "task"

class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def number_of_incomplete_tasks
    incomplete_names = []
    num = 0
    @tasks.each do |task|
      unless task.complete
        num += 1
      end
    end
    return num
  end

  def delete_complete_tasks
    after_delete_names = []
    @tasks.each do |task|
      unless task.complete
        after_delete_names << task.name
      end
    end
    p "this is the new deleted list"
    return after_delete_names
  end

  def sorted_tasks
    blank = []
    key = "name"
    value = "priority"
    dex = 0
    @tasks.each do |task|
      tisk = task.name
      prior = task.priority
      pair = Hash.new
      pair[key] = tisk
      pair[value] = prior
      blank << pair
    end
    rank = blank.sort{|a,b| b["priority"] <=> a["priority"]}
    return rank
  end
end
