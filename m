Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7688E1BBF77
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 Apr 2020 15:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0vdZ7VnDYavooV5fNtu1pKB4ZPlSW1r2uo025Mb95yc=; b=GnpJPuIc95XQQzRZKYMX/oIwV
	IbX7JJvnbZo0aXF00W3isXMk6Pq39jNE/cR+UYU5BBR6z8bTPu5bJ+CSztZE3Ha21xmBwtcVcDJJe
	+h2T3hqZ2M38RDqgEvvYJ9kyFZUC2E8Fr10H34O17y9n8y2nBxu1oQBJhiQ9nj4tx7KOKF3yeAFWN
	GnKerKSl1e4GYM9JsYhr793uvUCCkXy/RkiDIHIzFFTFEn4i/FDzo7R+/8xexgGrwLphZ9cOlRLPh
	cOy5wEpN4tOMEr7XPzm4MFxD2/GN+LmaHjVa36jz0VDjKOAP/HsDDqV/iOSsufCo516RI0KGtJoGO
	f3B/RURmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQGr-00040R-34; Tue, 28 Apr 2020 13:27:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQEx-0002VH-GZ
 for linux-mediatek@lists.infradead.org; Tue, 28 Apr 2020 13:25:38 +0000
Received: from localhost.localdomain (unknown [151.66.196.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D227206D7;
 Tue, 28 Apr 2020 13:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588080334;
 bh=0lPhBcb+aD0Kw3SuqJQeVHyaKLJFxq/Jb3qyvIBgodA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QR7WgnnrsxWTGO/yF5ghzpjUauLSJNIVJp/QfHK4MvzgxAeV2Laikz68WJTHQvEqb
 0thJDl5Gb749KuqdKcP8KUnd5O11H7x6hXPo2ay485XHJl32wrLVtQVbwZHGy+Y9ib
 qNS4fugxFaokl8N/w7xfSH1rnVNX12JRYO/0HrxU=
Date: Tue, 28 Apr 2020 15:25:28 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] mt76: mt7663: add the possibility to load firmware v2
Message-ID: <20200428132528.GA7716@localhost.localdomain>
References: <db72b648024aba3243ee3b7deceb548c9bc2bdf1.1587911939.git.lorenzo@kernel.org>
 <87ftcnj2be.fsf@tynnyri.adurom.net>
 <fd49291e-173e-20b0-ee67-c4f519ce8419@nbd.name>
 <87k11zlu0k.fsf@codeaurora.org>
MIME-Version: 1.0
In-Reply-To: <87k11zlu0k.fsf@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062535_897679_30F4D575 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-mediatek@lists.infradead.org, lorenzo.bianconi@redhat.com,
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org,
 Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============0582970593588478714=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============0582970593588478714==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pWyiEgJYm5f9v55/"
Content-Disposition: inline


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Felix Fietkau <nbd@nbd.name> writes:
>=20
> > On 2020-04-28 13:07, Kalle Valo wrote:
> >> Lorenzo Bianconi <lorenzo@kernel.org> writes:
> >>=20
> >>> mt7663 firmware v2 is used for embedded devices since it has more com=
pleted
> >>> features in AP mode.
> >>> Add the capability to specify in mt7615 Kconfig which firmware load f=
irst
> >>> (v3 or v2) and fallback to the other one if the selected firmware fai=
ls
> >>> to load
> >>>
> >>> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> >>> ---
> >>>  .../net/wireless/mediatek/mt76/mt7615/Kconfig | 13 +++++
> >>>  .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 50 ++++++++++++++++-=
--
> >>>  .../wireless/mediatek/mt76/mt7615/mt7615.h    |  6 ++-
> >>>  .../net/wireless/mediatek/mt76/mt7615/pci.c   |  2 +
> >>>  .../net/wireless/mediatek/mt76/mt7615/usb.c   |  2 +
> >>>  5 files changed, 65 insertions(+), 8 deletions(-)
> >>>

[...]

>=20
> > If you want to switch without recompiling, you can always just delete
> > the set of firmware files you don't want to use. The driver will fall
> > back to the other type.
>=20
> My problem here is the new Kconfig option and the way I see is that this
> feature doesn't justify the need of a new Kconfig option. A Kconfig
> option shouldn't change the driver behaviour, it should be more about
> enabling and disabling components and other compilation specific
> configuration.
>=20
> What about a module parameter? That would be much better and at least I
> can't think of a technical reason why it wouldn't work.

ack, I will post a v2 adding a kernel parameter and removing the kconfig en=
try

Regards,
Lorenzo

>=20
> --=20
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpa=
tches

--pWyiEgJYm5f9v55/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCXqguxQAKCRA6cBh0uS2t
rFbIAP9x3CzYmvVXxk/OEaW+OMnApbkfueCyHyDBaK0FAGDdkwD9GRbdJg8vZl6D
RGRj2Yw7+Z27ynFxFnq/B8ER2IBg+Qg=
=2hlt
-----END PGP SIGNATURE-----

--pWyiEgJYm5f9v55/--


--===============0582970593588478714==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============0582970593588478714==--

