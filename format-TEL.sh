#!/bin/sh
#
# NAME
#        format-TEL.sh - Format TEL property values
#
# SYNOPSIS
#        format-TEL.sh [OPTION...] FILE...
#
# DESCRIPTION
#        Uses the national telephone number formatting rules as defined in
#        <http://en.wikipedia.org/wiki/National_conventions_for_writing_telephone_numbers>.
#
# BUGS
#        https://github.com/l0b0/vcard/issues
#
# COPYRIGHT
#        Copyright (C) 2013 Victor Engmark
#
#        This program is free software: you can redistribute it and/or modify
#        it under the terms of the GNU General Public License as published by
#        the Free Software Foundation, either version 3 of the License, or
#        (at your option) any later version.
#
#        This program is distributed in the hope that it will be useful,
#        but WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#        GNU General Public License for more details.
#
#        You should have received a copy of the GNU General Public License
#        along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
################################################################################

# Sorted by country code
replacements='/^TEL[;:]/{
    # NANP countries
    s/\(+1\)\([0-9]\{3\}\)\([0-9]\{3\}\)\([0-9]\{4\}

    # Netherlands
    s/\(+31\)\(6\)\([0-9]\{8\}

    # Belgium
    s/\(+32\)\(4[0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}

    # France
    s/\(+33\)\([0-9]\)\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}

    # Denmark
    s/\(+45\)\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}

    # Norway
    s/\(+47\)\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}

    # Germany (DIN 5008)
    s/\(+49\)\([0-9]\{4\}\)\([0-9]\{6\}
}'

sed "$replacements" "$@"