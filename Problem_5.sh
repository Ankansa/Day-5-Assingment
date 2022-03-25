one_ft=12		# 1 foot = 12 inch
read -p "Enter the inch value to know the feet value : " input
feet=$(( $input / $one_ft ))
rest_of_inch=$(( $input % $one_ft ))
echo "The feet value of $input inch is $feet ft and $rest_of_inch in"

one_meter=3.28084	# 1 meter = 3.28084 foot
area_ft=$(( 60 * 40 ))
area_mtr=$(echo "scale=3;$area_ft/$one_meter" |bc)
echo "The area of plot 60 ft X 40 ft in meter is $area_mtr sq_meter"

acre=4046.86	# 1 acre = 4046.86 sq_meter
total_area=$(echo "scale=3;$area_mtr*25" |bc)
total_acre=$(echo "scale=3;$total_area/$acre" |bc)
echo "The 25 such plot are in $total_acre acres"
