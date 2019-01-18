
context('Test Functions')

test_that('hrmSetup works',{
    skip_on_travis()
    skip_on_appveyor()
    hrmSetup()
    installedPackages <- tibble::as_tibble(installed.packages())
    expect_true('hrm' %in% installedPackages$Package)
    expect_true('binneR' %in% installedPackages$Package)
    expect_true('FIEmspro' %in% installedPackages$Package)
    expect_true('metaboData' %in% installedPackages$Package)
    expect_true('metabolyseR' %in% installedPackages$Package)
    expect_true('profilePro' %in% installedPackages$Package)
    expect_true('mzAnnotation' %in% installedPackages$Package)
    expect_true('MFassign' %in% installedPackages$Package)
    expect_true('metaboWorkflows' %in% installedPackages$Package)
    expect_true('metaboVis' %in% installedPackages$Package)
    expect_true('impute' %in% installedPackages$Package)
    expect_true('mzR' %in% installedPackages$Package)
    expect_true('xcms' %in% installedPackages$Package)
})

test_that('hrmUpdate works',{
    skip_on_travis()
    hrmUpdate()
})

test_that('hrmAttach works',{
    skip_on_travis()
    hrmAttach()
})