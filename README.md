# qbs-kf5
QBS modules for development with KDE Frameworks 5.

This set of modules is not yet complete, and those which are implemented are very rough and have not all been tested. Those
that have been tested work on Manjaro 17.1.10 and Ubuntu 18.04.

Modules for all KF5 tier 1 frameworks have been implemented.
Modules for most KF5 tier 2 frameworks have been implemented.
Modules for some KF5 tier 3 frameworks have been implemented.

These modules have been developed following the model used for
Qt's own QBS modules. Dependencies have been assessed by
consulting the [KDE API docs](https://api.kde.org/ "Go to the KDE API docs."). The base paths to the KDE headers and libraries is
gathered from the output of `kde-config`. The names of the
libraries and the subdirectories for the headers for each
framework are based on how Manjaro's packages structure them.
I've yet to determine whether this is relatively standard or
not.