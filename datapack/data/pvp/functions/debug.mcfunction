# デバッグというかメモ帳

#$data modify storage pvp:uuid "$(UUID)" set value "$(UUID)"

#[I;1049169656,-128497396,-1631299112,946408593]

#1049169656  -128497396  -1631299112  946408593

#data modify storage pvp:uuid "[I;1049169656,-128497396,-1631299112,946408593]" set value 1


#data modify entity @e[type=armor_stand,limit=1,sort=nearest] CustomName set string storage pvp:uuid "[I;1049169656,-128497396,-1631299112,946408593]"

#$execute as @a run summon armor_stand ~ ~ ~ {CustomName:'{"text":"$(PlayerName)"}',CustomNameVisible:1b}

#"[I;1794444188,-1153940077,-1518136705,1802933569]"

#$tell @s "$(player_name)"

