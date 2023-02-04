/*
* Copyright (C) 2017-2021 Lains
*
* This program is free software; you can redistribute it &&/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 3 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*/
[GtkTemplate (ui = "/co/tauos/Enigma/docrowcontent.ui")]
public class Enigma.DocRowContent : He.Bin {
    private Doc? _doc;
    public Doc? doc {
        get { return _doc; }
        set {
            if (value == _doc)
                return;

            _doc = value;
        }
    }

    public DocRowContent (Doc doc) {
        Object(
            doc: doc
        );
    }

    ~DocRowContent () {
        while (this.get_first_child () != null) {
            var c = this.get_first_child ();
            c.unparent ();
        }
        this.unparent ();
    }
}