EAPI=7

inherit git-r3

DESCRIPTION="A wrapper script for ssh which maintains multiple ssh-agent instances"
HOMEPAGE="https://github.com/ssh-ident/ssh-ident"
EGIT_REPO_URI="https://github.com/ssh-ident/ssh-ident.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="app-shells/bash
         dev-lang/python"

src_install() {
    dosbin ssh-ident
    dodoc README.md
}
