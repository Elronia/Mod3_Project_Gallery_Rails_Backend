require 'csv'

Painter.destroy_all
User.destroy_all
Painting.destroy_all
Favorite.destroy_all

Painter.reset_pk_sequence
User.reset_pk_sequence
Painting.reset_pk_sequence
Favorite.reset_pk_sequence

################################################################
#method to parse painter csv file
def parse_painter_csv_file
    csv_data = CSV.read("db/painter_seed_data.csv")
    csv_data.shift
    # iterate over each element and send back a hash 
    # need to shift again at the beginning to get rid of id on the row
    painter_object_array = []
    csv_data.each do |painter_row_arr|
        painter_row_arr.shift
        painter_object = {
            :name => painter_row_arr[0],
            :years => painter_row_arr[1],
            :genre => painter_row_arr[2],
            :nationality => painter_row_arr[3],
            :bio => painter_row_arr[4],
            :painting_num => painter_row_arr[6],
            :portrait => painter_row_arr[7]
        }
            painter_object_array.push(painter_object)  
    end
    painter_object_array.flatten
end

###############################################################
# parsing paintings csv
def parse_painting_csv_file
    csv_data = CSV.read("db/csv_paintings.csv")
    csv_data.shift
    # iterate over each element and send back a hash 
    # need to shift again at the beginning to get rid of id on the row
    painting_object_array = []
    csv_data.each do |painting_row_arr|
        painting_row_arr.shift
        painting_object = {
            :name => painting_row_arr[0],
            :image => painting_row_arr[1],
            :year => painting_row_arr[2],
            :painter_id => painting_row_arr[3]
        }
        painting_object_array.push(painting_object)  
    end
    painting_object_array.flatten
end


##########################################################
#adding records to users table
katherine = User.create(username: "Elronia")
patrick = User.create(username: "pierre2")

#adding records to painter table
painters = parse_painter_csv_file
painters.each do |painter_hash| 
    Painter.create!(painter_hash)
end 

#adding records to painting table

paintings = parse_painting_csv_file
paintings.each do |painting_hash|
    Painting.create!(painting_hash)
end

#adding record to Favorite Table
favorite1 = Favorite.create(painting_id: 1, user_id: 2)
favorite2 = Favorite.create(painting_id: 22, user_id: 2)
favorite3 = Favorite.create(painting_id: 45, user_id: 2)
favorite4 = Favorite.create(painting_id: 120, user_id: 2)
favorite5 = Favorite.create(painting_id: 6, user_id: 2)
favorite6 = Favorite.create(painting_id: 80, user_id: 2)

puts "I have seeded the database"