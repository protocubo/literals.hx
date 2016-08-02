import utest.Assert.*;
using Literals;

class Test {
	function new() {}

	function test_doctrim()
	{
		equals("foo\nbar\nred",
			"foo
			bar
			red".doctrim());
		equals("foo\nbar\nred", "
			foo
			bar
			red
			".doctrim());

		equals("foo\n\tbar\nred",
			"foo
				bar
			red".doctrim());
		equals("foo\n\tbar\nred", "
			foo
				bar
			red
			".doctrim());
	}

	static function main()
	{
		var r = new utest.Runner();
		r.addCase(new Test());
		utest.ui.Report.create(r);
		r.run();
	}
}

