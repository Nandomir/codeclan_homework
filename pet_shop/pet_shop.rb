def pet_shop_name(pet)
  return pet[:name]
end 

def total_cash(money)
  return money[:admin][:total_cash]
end

def add_or_remove_cash(money, extra_cash)
  if extra_cash > 0
    money[:admin][:total_cash] += extra_cash
  else
    money[:admin][:total_cash] += extra_cash
  end
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(pets_now, more_pets_sold)
  return pets_now[:admin][:pets_sold] +=more_pets_sold
end

def stock_count(stock)
  return stock[:pets].count
end

def pets_by_breed(hash, breed)
  # pets = hash[:pets]
  breed_hash = []
  for pet_hash in hash[:pets]
    if pet_hash[:breed] == breed
        breed_hash.push(breed)
    end
  end
  return breed_hash
end

def find_pet_by_name(hash, name)
  found_pet = nil
  pet = hash[:pets]
  for pet_hash in pet
    if pet_hash[:name] == name
      found_pet = pet_hash
    end
  end
  return found_pet
end

def remove_pet_by_name(hash, name)
  location = hash[:pets]
  for pet in location
    pet[:name].delete!(name)
  end
end


def add_pet_to_stock(hash, new_pet)
  shop = hash[:pets]
  shop.push(new_pet)
end

def customer_pet_count(pet_location)
  return pet_location[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets].push(new_pet).length
end


