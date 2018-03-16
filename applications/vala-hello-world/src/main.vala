/* main.vala
 *
 * Copyright (C) 2018 Meskó Balázs
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE X CONSORTIUM BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * Except as contained in this notice, the name(s) of the above copyright
 * holders shall not be used in advertising or otherwise to promote the sale,
 * use or other dealings in this Software without prior written
 * authorization.
 */

public static int main (string[] args) {
	Intl.bindtextdomain(Config.GETTEXT_PACKAGE, Config.LOCALEDIR);
	Intl.setlocale(LocaleCategory.ALL, "");
	Intl.textdomain(Config.GETTEXT_PACKAGE);
	Intl.bind_textdomain_codeset(Config.GETTEXT_PACKAGE, "utf-8");

	var app = new Gtk.Application ("org.gnome.Vala-Hello-World", ApplicationFlags.FLAGS_NONE);
	app.activate.connect (() => {
		var win = app.active_window;
		if (win == null) {
			win = new ValaHelloWorld.Window (app);
		}
		win.present ();
	});

	return app.run (args);
}
