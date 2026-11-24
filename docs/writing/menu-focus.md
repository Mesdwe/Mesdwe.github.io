# Where Should Menu Focus Go?

*November 24, 2026 · UI & Tools*

Open an inventory with a controller, select an item, and bring up its action menu. If you close that menu without choosing anything, the next press of the D-pad should move from the item you were looking at. Losing focus here can make a working controller feel unresponsive.

## Give each screen a starting point

When a screen opens, choose a focus target based on what the player can do there. In an inventory, that might be the last selected item or the first available slot. In a confirmation dialog for discarding an item, start on **Cancel** so that a second press of the confirm button does not discard it by accident.

## Restore focus when a dialog closes

Save the logical ID of the control that opened the dialog. An inventory grid may rebuild its widgets while the dialog is open, so look up the ID in the current view when it closes. If the item was removed, select the next available item in the list, then the previous one if there is no next item. If the list is empty, focus a control such as **Back**.

## Test the transitions

Use only a controller to open the inventory, move to an item, open its action menu, and cancel. Repeat the sequence and discard the item this time. In both cases, check that the focus indicator is visible and that the next directional input moves from the highlighted control. Repeat with the last item in the inventory to exercise the empty state.
