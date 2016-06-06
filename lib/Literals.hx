using StringTools;

class Literals {
	public static function doctrim(str:String):String
	{
		var lines = str.split("\n");
		var indent = 0xffff;
		for (li in lines.slice(1)) {
			var tli = StringTools.trim(li);
			if (tli.length == 0)
				continue;
			var ind = li.indexOf(tli);
			if (ind < indent)
				indent = ind;
		}
		if (indent == 0 || indent == 0xffff)
			return str;
		var trimmed = [ for (li in lines)
				if (StringTools.trim(li.substr(0, indent)).length == 0)
					li.substr(indent)
				else
					li
		];
		return StringTools.trim(trimmed.join("\n"));
	}
}

