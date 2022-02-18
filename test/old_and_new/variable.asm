
variable   old_style_a(3 + (25 * 2) + 3)
variable   new_style_a=3 + (25 * 2) + 3

variable   old_style_b   (   3 + (25 * 2) + 3)
variable   new_style_b   =   3 + (25 * 2) + 3

if old_style_a != new_style_a {
    error "defines are not equal"
}
if old_style_b != new_style_b {
    error "defines are not equal"
}
print "PASS\n"

