def sweets(buy, *brands)
  p brands if buy
end
sweets true, 'snickers', 'twix', 'bounty'
# ["snickers", "twix", "bounty"]
