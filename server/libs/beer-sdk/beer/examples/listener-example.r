Rebol [
	Title: "BEER Listener Example"
	Date: 9-May-2006/18:34:21+2:00
	License: {
Copyright (C) 2005 Why Wire, Inc.

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

Other commercial licenses to this program are available from Why Wire, Inc.
}
]

#do [
	do %../../paths.r
	[]
]

; user database
users: load %users.r
groups: load %groups.r

do %encoding-salt.r
include/check %listener.r
include/check %echo-profile.r

testfiles: either empty? testfiles: ask "test files directory: (%/c/stazeno/AVSDC/):" [
	%/c/stazeno/AVSDC/
] [dirize load testfiles]

open-listener 8000
print "listener's up!"
wait []
