//Check that files exists (may not if never saved game before)
if file_exists("Inventory.sav")
{
    file_delete("Inventory.sav")
}