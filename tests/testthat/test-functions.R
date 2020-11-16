
context('Test Functions')


test_that('hrmUpdate works',{
    expect_invisible(hrmUpdate())
})

test_that('hrmAttach works',{
    expect_invisible(hrmAttach())
})

test_that('hrmPackages works',{
    expect_length(hrmPackages(),10)
})