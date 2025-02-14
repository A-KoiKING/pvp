# プレイヤーのニックネームをpvp:uuid this.Nameに保存
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot pvp:player_head
data modify storage pvp:uuid this.Name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.tag.SkullOwner.Name