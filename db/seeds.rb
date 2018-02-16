User.destroy_all

u1 = User.create name: 'User 1'
u2 = User.create name: 'User 2'

u1.follow u2
pry
