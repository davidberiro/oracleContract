This project is an attempt at building a simple decentralized prediction
market. Similar to predictit.com, users can buy up/down shares of a
commodity (such as gold) and will be matched with other buyers/sellers.
Once 24 hours have passed, if the price of the commodity has increased since
the last update (24 hours earlier), the up shares will be valued at 1 unit,
and the down shares will be valued at 0 units (haven't decided yet what a unit is,
but lets say 0.0001 eth), and vice versa is the price decreased.

Heres a simple example. I think its more likely that the price of gold will
increase in the next 24 hours, so at the beginning of the new day I post an offer
to buy up to 200 up shares for 0.52 units each (I believe theres a > 52% chance
that the price will increase at the end of this period). Somebody else believes
the price will decrease and sees my offer, so they offer to buy 100 down shares
for 0.48 units each. We both get matched, so now theres a total of 0.01 eth = 
100 * shares = 100 * 0.0001 eth in the contract, and when the final price is 
determined by the oracle the money is automatically transferred to the winning 
party (with of course some commission or something), and the value of the 100 
up shares which where never matched is returned to the original owner.