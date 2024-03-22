#> item_editor:open
#   `(slot: item_slot)`
#
# Opens the editor with the item contained in `slot`. Fails if the editor is 
# already open. Once open you can edit the item in `@e[tag=item_editor] 
# container.0`. When you're done close the editor with `item_editor:close`. This
# will put the item back into it's original slot. Don't have the editor open 
# over multiple ticks.

execute if entity @e[tag=item_editor] run return fail

summon chest_minecart ~ 1000 ~ {Tags: ["item_editor"]}
$item replace entity @e[tag=item_editor,limit=1] container.0 from entity @s $(slot)

$data modify storage item_editor:global slot set value "$(slot)"
