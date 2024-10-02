EAPI=8

inherit meson git-r3

DESCRIPTION="This app is a theme changing utility for Linux, BSDs, and whatnots. It lets the user change GTK 2/3/4, Kvantum, icon and cursor themes, even for libadwaita apps, edit GTK CSS with live preview, and set some related options. It also lets the user install icon and widget theme archives."
HOMEPAGE="https://github.com/ALEX11BR/ThemeChanger"
EGIT_REPO_URI="https://github.com/ALEX11BR/ThemeChanger.git"
EGIT_BRANCH="v${PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

BDEPEND="virtual/pkgconfig"
RDEPEND="x11-libs/gtk+:3
         x11-libs/libXcursor
         x11-libs/gdk-pixbuf"
DEPEND="${RDEPEND}"

src_prepare() {
    default
}

src_configure() {
    local mymesonargs=(
        --prefix=/usr
    )
    meson_src_configure
}

src_install() {
    meson_src_install
}

pkg_postinst() {
    elog "ThemeChanger installed successfully."
}

pkg_postrm() {
    elog "ThemeChanger has been removed."
}

