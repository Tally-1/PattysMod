private _owners = [];
{
	_owners pushBackUnique (_x get "owner")
}forEach(_self get "all");

_owners;