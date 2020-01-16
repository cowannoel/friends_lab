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


def add_friend(person, new_friend)
  person[:friends].push(new_friend)
end

def remove_friend(person, friend_to_remove)
  person[:friends].delete(friend_to_remove)
end

def count_money_total(people)
  total_money = 0

  for person in people
    total_money += person[:monies]
  end
  return total_money
end


def loan_money(lender, lendee, ammount)
  if
    ammount < lender[:monies]
    lender[:monies] -= ammount
    lendee[:monies] += ammount
  end
end
