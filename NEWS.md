# hrm 0.9.0

* Temporarily removed [`metaboReports`](https://github.com/jasenfinch/metaboReports) due to breaking changes in [`metaboWorkflows`](https://jasenfinch.github.io/metaboWorkflows/) v0.9.0.

* Added dependency packages [`chunky`](https://jasenfinch.github.io/chunky/) and [`projecttemplates`](https://jasenfinch.github.io/projecttemplates/) of [`metaboWorkflows`](https://jasenfinch.github.io/metaboWorkflows) to ensure they can be updated using `hrm::hrmUpdate()`.

* Reduced the number of package imports by removing those that are dependencies of other imported packages.

* The loading of [`tidyverse`](https://www.tidyverse.org/) packages is now optional using the `tidyverse` argument in `hrm::hrmAttach()`.

# hrm 0.8.1

* Added a `NEWS.md` file to track changes to the package.

* Removed aberHRML/metabData from `Remotes` field of DESCRIPTION as package [`metaboData`](https://aberhrml.github.io/metaboData/) is now available from CRAN.
