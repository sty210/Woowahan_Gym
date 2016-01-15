json.id @gym.id
json.name @gym.gym_nm
json.phone_number @gym.gym_tel
json.address @gym.gym_adr
json.reviews @gym.reviews do |review|
  json.id review.id
  json.content review.content
end
