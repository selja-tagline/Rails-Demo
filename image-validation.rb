# p "Enter Length of Image (between 0 to 100) :-"
# length = gets.chomp.to_i
# if length > 100 then
#     p "Image Length not valid"
# else
#     p "Length = #{length}"
#     p "Enter Total Image No.(between 0 to 5) :-"
#     imagecount = gets.chomp.to_i
#     if imagecount > 5 then
#         p "Image number only allows less then 5"
#     else
#         p "Total Image = #{imagecount}"
#         imagecount.times do |i|
#             p "Enter Dimention of image (WxH) #{i+1} :-"
#             diamention = gets.chomp
#             diaArr = diamention.split(" ").map(&:to_i)
#             if diaArr.length == 2
#                 if diaArr.any?{|x| x < length}  == true
#                     p "Image not Valid"  
#                 else
#                     if diaArr.all? {|x| x == diaArr[0]} == true
#                         p "perfect"
#                     else
#                         p "Crop and Accept"
#                     end
#                 end  
#             else
#                 p "Please enter both Width & Height"  
#             end              
#         end         
#     end
# end


a = 1212

p a.to_s == a.to_s.reverse ? true : false

