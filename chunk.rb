@start_id = 1
@end_id = 201355
@size = 50000

range_array = []
@start_id.step(@end_id, @size) do |num|
 # end_num = num + @size - 1
 # end_num = @end_id if end_num > @end_id
  to_num = num + @size - 1 > @end_id ? @end_id : num + @size - 1
  range_array << ( num..to_num )
end
p range_array

range_array.each do |range|
  SomeModel.where(id: range, checked_at: nil).update_all(hoge: 1)
end
