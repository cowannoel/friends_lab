def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, snack_to_find)
  for snack in person[:favourites][:snacks]
    if snack == snack_to_find
      return true
    end
  end
  return false
end
