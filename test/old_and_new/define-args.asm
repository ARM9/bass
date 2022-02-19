
define   double_a(i)=(2 * {i})
define   double_b(i)   =   (2 * {i})

if {double_a(12)} != 24 {
    error "Test failed"
}
if {double_b(24)} != 48 {
    error "Test failed"
}
print "PASS\n"

