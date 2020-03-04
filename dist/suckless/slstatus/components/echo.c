/* See LICENSE file for copyright and license details. */
#include <stdio.h>
#include <string.h>

#include "../util.h"

const char *
echo(const char *text)
{
	snprintf(buf, sizeof(buf), "%s", text);

	return buf[0] ? buf : NULL;
}
