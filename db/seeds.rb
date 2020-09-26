require 'csv'

Painter.destroy_all
User.destroy_all
Painting.destroy_all
Favorite.destroy_all

Painter.reset_pk_sequence
User.reset_pk_sequence
Painting.reset_pk_sequence
Favorite.reset_pk_sequence

#shift off the first element to get rid of the column names
def parse_csv_file
    csv_data = CSV.read("db/artists_for_seed_data.csv")
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
            :painting_num => painter_row_arr[6]
        }
            painter_object_array.push(painter_object)  
    end
    painter_object_array.flatten
end

painters = parse_csv_file
# byebug
painters.each do |painter_hash| 
    Painter.create!(painter_hash)
end 

katherine = User.create(username: "Elronia")
patrick = User.create(username: "pierre2")

painting1 = Painting.create(name: "The Jewess", year: "1908", image: "db/paintings_image/Amedeo Modigliani_paintings", painter_id: 1)

favorite1 = Favorite.create(painting_id: 1, user_id: 2)
puts "I have seeded the database"