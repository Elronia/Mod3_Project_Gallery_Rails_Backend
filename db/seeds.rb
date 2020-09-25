require 'csv'

Painter.destroy_all

Painter.reset_pk_sequence

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
painters.each do |painter_hash| 
    Painter.create!(painter_hash)
end 


