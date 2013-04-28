s=$*
a=$((s*2))
aa=$((a*2))
b=$((s*3))
c=$((s*5))
d=$((s*7))
si=${s}x${s}+
edt="mogrify -crop ${si}"
mkdir minetest
cp terrain.png minetest/default_junglegrass.png
cp gui/items.png minetest/default_apple.png
cp anim/custom_water_flowing.png minetest/default_water_flowing_animated.png
cp anim/custom_water_still.png minetest/default_water_source_animated.png
cp anim/custom_lava_flowing.png minetest/default_lava_flowing_animated.png
cp anim/custom_lava_still.png minetest/default_lava_source_animated.png
cd minetest
echo folder created
echo copy textures...

for obcts in default_dirt default_clay default_chest_front wool_white
	do cp default_junglegrass.png ${obcts}.png
done

mogrify -crop $((2*b))x${b}+0 default_dirt.png
for of in gravel cobble grass stone grass_side bookshelf sand wood tree tree_top mossycobble obsidian mineral_coal mineral_iron mineral_gold
	do cp default_dirt.png default_${of}.png
done

mogrify -crop $((3*b))x${a}+${s}+$b default_clay.png
for plant in glass leaves dry_shrub papyrus cactus_top cactus_side stone_brick mineral_diamond
	do cp default_clay.png default_${plant}.png
done

for ob in jungletree sandstone sapling torch_on_floor ladder brick junglewood steel_block gold_block diamond_block
	do cp default_junglegrass.png default_${ob}.png
done

mogrify -crop $((2*b))x${b}+$((3*b))+$s default_chest_front.png
for ca in chest_side chest_top furnace_bottom furnace_front furnace_front_active furnace_side
	do cp default_chest_front.png default_${ca}.png
done

echo -n blocks, 


mogrify -crop ${a}x$((4*a))+$s+$d wool_white.png
for name in grey black red yellow green cyan blue magenta orange violet brown pink dark_grey dark_green
	do cp wool_white.png wool_${name}.png
done

echo -n wools, 


for it in book clay_brick clay_lump coal_lump paper steel_ingot stick
	do cp default_apple.png default_${it}.png
done
cp default_apple.png tools.png

echo -n items, 


mogrify -crop ${c}x${c}+0+${aa} tools.png
for types in steel stone wood
	do for to in axe pick shovel sword
		do cp tools.png default_tool_${types}${to}.png
	done
done
rm tools.png

echo tools


echo edit them...

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
${edt}0+$a default_mineral_gold.png
${edt}$a+$b default_mineral_diamond.png
${edt}$((2*b))+$s default_steel_block.png
${edt}$d+$s default_gold_block.png
${edt}$((4*a))+$s default_diamond_block.png

${edt}${aa}+$a default_mossycobble.png
${edt}$((3*b))+${aa} default_papyrus.png
${edt}0+$((4*b)) default_sandstone.png
${edt}$((3*c)) default_sapling.png
${edt}0+$c default_torch_on_floor.png
${edt}$c+$a default_obsidian.png
${edt}$d+$((4*b)) default_junglewood.png
${edt}$((2*b))+$b default_stone_brick.png

${edt}$((2*d))+$b default_furnace_bottom.png
cp default_furnace_bottom.png default_furnace_top.png
${edt}$((4*b))+$a default_furnace_front.png
${edt}$((13*s))+$b default_furnace_front_active.png
${edt}$((13*s))+$a default_furnace_side.png
${edt}$b+$c default_ladder.png
${edt}$((11*s))+$s default_chest_front.png
${edt}$((2*c))+$s default_chest_side.png
${edt}$((3*b))+$s default_chest_top.png

echo -n blocks, 


${edt}$s+$d wool_black.png
${edt}$s+$((4*a)) wool_red.png
${edt}$s+$((3*b)) wool_dark_green.png
${edt}$s+$((2*c)) wool_brown.png
${edt}$s+$((11*s)) wool_blue.png
${edt}$s+$((4*b)) wool_violet.png
${edt}$s+$((13*s)) wool_cyan.png
${edt}$s+$((2*d)) wool_white.png
${edt}$a+$d wool_grey.png
${edt}$a+$((4*a)) wool_pink.png
${edt}$a+$((3*b)) wool_green.png
${edt}$a+$((2*c)) wool_yellow.png
rm wool_dark_grey.png
${edt}$a+$((4*b)) wool_magenta.png
${edt}$a+$((13*s)) wool_orange.png

echo -n wools, 


${edt}$((2*c)) default_apple.png
${edt}$((11*s))+$b default_book.png
${edt}$((2*b))+$s default_clay_brick.png
${edt}$((3*b))+$b default_clay_lump.png
${edt}$d default_coal_lump.png
${edt}$((2*c))+$b default_paper.png
${edt}$d+$s default_steel_ingot.png
${edt}$c+$b default_stick.png

echo -n items, 


${edt}$a+$d default_tool_steelaxe.png
${edt}$a+$((2*b)) default_tool_steelpick.png
${edt}$a+$c default_tool_steelshovel.png
${edt}$a+$((2*a)) default_tool_steelsword.png
${edt}$s+$d default_tool_stoneaxe.png
${edt}$s+$((2*b)) default_tool_stonepick.png
${edt}$s+$c default_tool_stoneshovel.png
${edt}$s+$((2*a)) default_tool_stonesword.png
${edt}0+$d default_tool_woodaxe.png
${edt}0+$((2*b)) default_tool_woodpick.png
${edt}0+$c default_tool_woodshovel.png
${edt}0+$((2*a)) default_tool_woodsword.png

echo -n tools,

k=$((1600/s))
for liquids in water_flowing water_source lava_flowing lava_source
	do mogrify -resize ${k}% default_${liquids}_animated.png
done

echo liquids

for i in *.png
	do convert $i +repage $i
done

echo textures repaged
