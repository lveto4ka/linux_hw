#!/bin/bash
mkdir -p house/{floor_1/{hall/{wardrobe,key_holder,shoe_rack},bathroom/{sink,toilet,bath,locker},living_room/{TV,sofa,playstation,carpet,TV_stand},kitchen/{oven,sink,stove,microwave_oven,fridge,kitchen_set},storage_room},floor_2/{master_bedroom/{bed,dressing_table,TV,bedside},master_bathroom/{bath,toilet,sink,bidet,locker},balcony/{chair,carpet,lamp,plats},childrens_bedroom/{bed,toy_box,desk,chair,wadrobe},gym/{treadmill,dumbbells,barbell},office/{desk,lamp,laptop},dressing_room,laundary_room/{washing_machine,drying_machine,iron,ironing_board,drying_cabinet}}}


touch house/floor_1/hall/wardrobe/clothes.txt

echo -e "hats\njackets\ncoats" > house/floor_1/hall/wardrobe/clothes.txt
echo -e "cream\nface_washer\ntonic\ntoothpaste" > house/floor_1/bathroom/locker/cosmetics.txt
echo -e "milk\nyougurt\neggs\npasta\nbeef\nchicken\ncheese" > house/floor_1/kitchen/fridge/food.txt

