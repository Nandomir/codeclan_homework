require_relative('../models/host.rb')
require_relative('../models/parasite.rb')
require_relative('../models/infection.rb')

require('pry')

Host.delete_all
Parasite.delete_all
Infection.delete_all

host1 = Host.new(
{
'name' => 'Human', 
'type' => 'mammal'
}
)
host1.save

host2 = Host.new({'name' => 'Beaver', 'type' => 'mammal'})
host2.save

host3 = Host.new({'name' => 'Snail', 'type' => 'Invertebrate'})
host3.save

parasite1 = Parasite.new({'name' => 'Helminth', 'effect' => 'You dinnae want to know'})
parasite1.save

parasite2 = Parasite.new({'name' => 'Lazy John', 'effect' => 'waste of time'})
parasite2.save

parasite3 = Parasite.new({
  'name' => 'Unicorns', 'effect' => 'Psychosis'})
parasite3.save

infection1 = Infection.new( {'name' => 'Johnosis', 
  'method_of_infection' => 'vicinity', 
  'host_id' => host1.id, 
  'parasite_id' => parasite2.id })
infection1.save

infection2 = Infection.new({'name' => 'Beaver worms', 
  'method_of_infection' => 'Fresh water with snails', 
  'host_id' => host2.id, 
  'parasite_id' => parasite1.id })
infection2.save

infection3 = Infection.new({
 'name' => 'Snail worms', 
 'method_of_infection' => 'Fresh water with beavers', 
 'host_id' => host3.id, 
 'parasite_id' => parasite1.id})
infection3.save

infection4 = Infection.new({
  'name' => 'The Horns', 
  'method_of_infection' => 'magic', 
  'host_id' => host1.id, 
  'parasite_id' => parasite3.id})
infection4.save

binding.pry
nil