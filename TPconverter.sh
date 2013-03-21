s=$*
a=$((s*2))
aa=$((a*2))
b=$((s*3))
c=$((s*5))
d=$((s*7))
si=${s}x${s}+
edt="mogrify -crop ${si}"
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

cp obj.png pla.png
mogrify -crop $((3*b))x${a}+${s}+$b pla.png
for plant in clay glass leaves dry_shrub papyrus cactus_top cactus_side
do cp pla.png default_${plant}.png
done
rm pla.png

for ob in junglegrass jungletree sandstone sapling steel_block torch_on_floor ladder brick
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

mogrify -crop ${c}x${c}+0+${aa} tools.png
for to in steelaxe steelpick
do cp tools.png default_tool_${to}.png
done
rm tools.png

echo item textures copied

${edt}0 default_grass.png
${edt}$a default_dirt.png
${edt}$b+$s default_gravel.png
${edt}0+$s default_cobble.png
${edt}$s default_stone.png
${edt}$b default_grass_side.png
${edt}$b+$a default_bookshelf.png
${edt}$a+$s default_sand.png
${edt}$d default_brick.png
${edt}$((2*b))+${aa} default_cactus_side.png
${edt}$c+${aa} default_cactus_top.png
${edt}${aa} default_wood.png
${edt}${aa}+$s default_tree.png
${edt}$c+$s default_tree_top.png
${edt}$((4*a))+${aa} default_clay.png
${edt}$s+$b default_glass.png
${edt}$d+$a default_junglegrass.png
${edt}$((3*b))+$((3*b)) default_jungletree.png
${edt}${aa}+$b default_leaves.png
${edt}$d+$b default_dry_shrub.png
${edt}$a+$a default_mineral_coal.png
${edt}$s+$a default_mineral_iron.png
${edt}${aa}+$a default_mossycobble.png
${edt}$((3*b))+${aa} default_papyrus.png
${edt}0+$((4*b)) default_sandstone.png
${edt}$((3*c)) default_sapling.png
${edt}$((2*b))+$s default_steel_block.png
${edt}0+$c default_torch_on_floor.png
${edt}$((2*d))+$b default_furnace_bottom.png
cp default_furnace_bottom.png default_furnace_top.png
${edt}$((4*b))+$a default_furnace_front.png
${edt}$((13*s))+$b default_furnace_front_active.png
${edt}$((13*s))+$a default_furnace_side.png
${edt}$b+$c default_ladder.png
${edt}$((11*s))+$s default_chest_front.png
${edt}$((2*c))+$s default_chest_side.png
${edt}$((3*b))+$s default_chest_top.png

echo block textures edited

${edt}$((2*c)) default_apple.png
${edt}$((11*s))+$b default_book.png
${edt}$((2*b))+$s default_clay_brick.png
${edt}$((3*b))+$b default_clay_lump.png
${edt}$d default_coal_lump.png
${edt}$((2*c))+$b default_paper.png
${edt}$d+$s default_steel_ingot.png
${edt}$c+$b default_stick.png
${edt}$a+$d default_tool_steelaxe.png
${edt}$a+$((2*b)) default_tool_steelpick.png

echo item textures edited
