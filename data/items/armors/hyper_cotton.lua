local item, super = Class(Item, "hyper_cotton")

function item:init()
    super.init(self)

    -- Display name
    self.name = "Hyper Cotton"

    -- Item type (item, key, weapon, armor)
    self.type = "armor"
    -- Item icon (for equipment)
    self.icon = "ui/menu/icon/armor"

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = ""
    -- Menu description
    self.description = "A cotton produced by the Gods of Cotton"

    -- Default shop price (sell price is halved)
    self.price = 1000
    -- Whether the item can be sold
    self.can_sell = false

    -- Consumable target mode (ally, party, enemy, enemies, or none)
    self.target = "none"
    -- Where this item can be used (world, battle, all, or none)
    self.usable_in = "all"
    -- Item this item will get turned into when consumed
    self.result_item = nil
    -- Will this item be instantly consumed in battles?
    self.instant = false

    -- Equip bonuses (for weapons and armor)
    self.bonuses = {
        defense = 2,
        magic = 4
    }
    -- Bonus name and icon (displayed in equip menu)
    self.bonus_icon = "ui/menu/icon/cotton"

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {
	dumbie = true,
	}

    -- Character reactions
    self.reactions = {
        dumbie = "Uh, thanks?",
        noel = "Hail the cotton gods!",
		dess = "*sighhHhhhhh* unused",
    }
end

return item