/*	XMAS.C

    PCW XMAS Tree for MESCC.
    Copyright (c) 2022 Jos Vermoesen.

    This program is free software; you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by the
    Free Software Foundation; either version 2, or (at your option) any
    later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.

    hint:
    Use a submit batch file to compile
     cc xmas
     zsm xmas
     hextocom xmas
     xmas
*/

/* Some defs. to save memory
 */
#define CC_NO_ARGS // To exclude ARGC & ARGV code.

/* Standard libraries
 */
#include <mescc.h>
#include <printf.h>

int main()
{
    int x, y, spaces, stars, height;
    height = 27;
    stars = 1;

    for (x = 0; x < height; x++)
    {
        spaces = height - x;
        for (y = 0; y < spaces; y++)
        {
            putchar(' ');
        }
        for (y = 0; y < stars; y++)
        {
            putchar('*');
        }
        putchar('\n');
        stars += 2;
    }

    return (0);
}
