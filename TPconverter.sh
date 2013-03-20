s=$*
a=$((s*2))
b=$((s*3))
c=$((s*5))
d=$((s*7))
si=${s}x${s}+
mkdir minetest
cp terrain.png minetest/obj.png
cp gui/items.png minetest/items.png
cd minetest
echo folder created

cp obj.png oftn.png
mogrify -crop $((2*b))x${b}+0 oftn.png
for of in dirt gravel cobble grass stone grass_side bookshelf sand wood tree tree_top mineral_coal mineral_iron mossycobble
do cp oftn.png default_${of}.png
done
rm oftn.png

for ob in clay glass junglegrass jungletree leaves dry_shrub papyrus sandstone sapling steel_block torch_on_floor ladder cactus_top cactus_side brick
do cp obj.png default_${ob}.png
done
cp obj.png caf.png
rm obj.png

mogrify -crop $((2*b))x${b}+$((3*b))+$s caf.png
for ca in chest_front chest_side chest_top furnace_bottom furnace_front furnace_front_active furnace_side
do cp caf.png default_${ca}.png
done
rm caf.png

echo block textures copied

for it in apple book clay_brick clay_lump coal_lump paper steel_ingot stick
do cp items.png default_${it}.png
done
cp items.png tools.png
rm items.png

mogrify -crop ${c}x${c}+0+$((2*a)) tools.png
cp tools.png default_tool_steelaxe.png
cp tools.png default_tool_steelpick.png
rm tools.png

echo item textures copied

mogrify -crop ${si}0 default_grass.png
mogrify -crop ${si}$a default_dirt.png
mogrify -crop ${si}$b+$s default_gravel.png
mogrify -crop ${si}0+$s default_cobble.png
mogrify -crop ${si}$s default_stone.png
mogrify -crop ${si}$b default_grass_side.png
mogrify -crop ${si}$b+$a default_bookshelf.png
mogrify -crop ${si}$a+$s default_sand.png
mogrify -crop ${si}$d default_brick.png
mogrify -crop ${si}$((3*a))+$((2*a)) default_cactus_side.png
mogrify -crop ${si}$c+$((2*a)) default_cactus_top.png
mogrify -crop ${si}$((2*a)) default_wood.png
mogrify -crop ${si}$((2*a))+$s default_tree.png
mogrify -crop ${si}$c+$s default_tree_top.png
mogrify -crop ${si}$((4*a))+$((2*a)) default_clay.png
mogrify -crop ${si}$s+$b default_glass.png
mogrify -crop ${si}$d+$a default_junglegrass.png
mogrify -crop ${si}$((3*b))+$((3*b)) default_jungletree.png
mogrify -crop ${si}$((2*a))+$b default_leaves.png
mogrify -crop ${si}$d+$b default_dry_shrub.png
mogrify -crop ${si}$a+$a default_mineral_coal.png
mogrify -crop ${si}$s+$a default_mineral_iron.png
mogrify -crop ${si}$((2*a))+$a default_mossycobble.png
mogrify -crop ${si}$((3*b))+$((2*a)) default_papyrus.png
mogrify -crop ${si}0+$((6*a)) default_sandstone.png
mogrify -crop ${si}$((5*b)) default_sapling.png
mogrify -crop ${si}$((2*b))+$s default_steel_block.png
mogrify -crop ${si}0+$c default_torch_on_floor.png
mogrify -crop ${si}$((2*d))+$b default_furnace_bottom.png
cp default_furnace_bottom.png default_furnace_top.png
mogrify -crop ${si}$((4*b))+$a default_furnace_front.png
mogrify -crop ${si}$((13*s))+$b default_furnace_front_active.png
mogrify -crop ${si}$((13*s))+$a default_furnace_side.png
mogrify -crop ${si}$b+$c default_ladder.png
mogrify -crop ${si}$((11*s))+$s default_chest_front.png
mogrify -crop ${si}$((2*c))+$s default_chest_side.png
mogrify -crop ${si}$((3*b))+$s default_chest_top.png
mogrify -crop ${si}$((2*c))+0 default_apple.png
mogrify -crop ${si}$((11*s))+$b default_book.png
mogrify -crop ${si}$((2*b))+$s default_clay_brick.png
mogrify -crop ${si}$((3*b))+$b default_clay_lump.png
mogrify -crop ${si}$d default_coal_lump.png
mogrify -crop ${si}$((2*c))+$b default_paper.png
mogrify -crop ${si}$d+$s default_steel_ingot.png
mogrify -crop ${si}$c+$b default_stick.png
mogrify -crop ${si}$a+$d default_tool_steelaxe.png
mogrify -crop ${si}$a+$((2*b)) default_tool_steelpick.png

echo textures edited
