#include "../inc/libmx.h"
int mx_new_strcmp(const char *s1, const char *s2)
{
    for (; mx_tolower(*s1) == mx_tolower(*s2); ++s1, ++s2)
    {
        if (mx_tolower(*s2) == '\0')
            return 0;
    }
    return mx_tolower(*s1) - mx_tolower(*s2);
}
