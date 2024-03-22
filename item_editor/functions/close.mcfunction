#> item_editor:close
#
# Puts the item from the editor back into its orignal slot and closes the 
# editor. Fails if no editor is open.

execute unless entity @e[tag=item_editor] run return fail

function item_editor:zprivate/return_item with storage item_editor:global

tp @e[tag=item_editor,limit=1] ~ -1000 ~
