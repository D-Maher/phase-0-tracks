class TodoList

  def initialize(item_list)
    @items = item_list
  end

  def get_items
    p @items
  end

  def add_item(item)
    @items << item
  end

  def delete_item(item)
    @items.delete(item)
  end

  def get_item(index)
    @items[index]
  end

end

# DRIVER CODE

  # todolist = TodoList.new(["do the dishes", "mow the lawn"])

  # todolist.get_items
  # todolist.add_item("mop")
  # todolist.delete_item("do the dishes")
  # p todolist.get_item(0)