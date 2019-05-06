Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF781556C
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 May 2019 23:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5zMvE8OY1hCwSgVXgs7MpV3Avba92yTGWrvPEx3opUs=; b=Vry/XWtRZramPF
	wS4C1NSdH7hbwoiBkVJvzAARsKcmJ57UjXyafAdgHRkBmgxasaixh3R2eNsKCQAz8pF+POEq6o1Yg
	Fe/XESFDptl0hl6we5zrhg0E/Fxr+Tx9MVBIaVmqNzxKut0LT9Km7PINpt4q9hLE0/zQlra70ZdiC
	StuY0jTIpb5tXOVBIH7+6yxgSxPJ4rB3erZZyc9UJThbMMqW2yJam6WFb/0bepfyUox8INqp3aAHs
	XSf1wBUmRHrNSa+MsD36bdgts1wLtYCCbaTBwpqcxSQapgEs1ZLAASyRpOR0UIALuj4R0iUK9q3vp
	3R8W1J00ujFQ4246MGcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNl6x-0002wu-BZ; Mon, 06 May 2019 21:25:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNl6n-0002pL-30; Mon, 06 May 2019 21:25:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 058C75099;
 Mon,  6 May 2019 23:25:08 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a62b6721;
 Mon, 6 May 2019 23:25:07 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
Date: Mon,  6 May 2019 23:24:43 +0200
Message-Id: <1557177887-30446-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_142513_283704_21FC7386 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBpcyBhbiBhdHRlbXB0IHRvIGZpeCB0aGUgbWVzcywgSSd2
ZSBzb21laG93IG1hbmFnZWQgdG8KaW50cm9kdWNlLgoKRmlyc3QgcGF0Y2ggaW4gdGhpcyBzZXJp
ZXMgaXMgZGVmYWN0byB2NSBvZiB0aGUgcHJldmlvdXMgMDUvMTAgcGF0Y2ggaW4gdGhlCnNlcmll
cywgYnV0IHNpbmNlIHRoZSB2NCBvZiB0aGlzIDA1LzEwIHBhdGNoIHdhc24ndCBwaWNrZWQgdXAg
YnkgdGhlCnBhdGNod29yayBmb3Igc29tZSB1bmtub3duIHJlYXNvbiwgdGhpcyBwYXRjaCB3YXNu
J3QgYXBwbGllZCB3aXRoIHRoZSBvdGhlcgo5IHBhdGNoZXMgaW4gdGhlIHNlcmllcywgc28gSSdt
IHJlc2VuZGluZyBpdCBhcyBhIHNlcGFyYXRlIHBhdGNoIG9mIHRoaXMKZml4dXAgc2VyaWVzIGFn
YWluLgoKU2Vjb25kIHBhdGNoIGlzIGEgcmVzdWx0IG9mIHRoaXMgcmViYXNlIGFnYWluc3QgbmV0
LW5leHQgdHJlZSwgd2hlcmUgSSB3YXMKY2hlY2tpbmcgYWdhaW4gYWxsIGN1cnJlbnQgdXNlcnMg
b2Ygb2ZfZ2V0X21hY19hZGRyZXNzIGFuZCBmb3VuZCBvdXQsIHRoYXQKdGhlcmUncyBuZXcgb25l
IGluIERTQSwgc28gSSd2ZSBjb252ZXJ0ZWQgdGhpcyB1c2VyIHRvIHRoZSBuZXcgRVJSX1BUUgpl
bmNvZGVkIGVycm9yIHZhbHVlIGFzIHdlbGwuCgpUaGlyZCBwYXRjaCB3aGljaCB3YXMgc2VudCBh
cyB2NSB3YXNuJ3QgY29uc2lkZXJlZCBmb3IgbWVyZ2UsIGJ1dCBJIHN0aWxsCnRoaW5rLCB0aGF0
IHdlIG5lZWQgdG8gY2hlY2sgZm9yIHBvc3NpYmxlIE5VTEwgdmFsdWUsIHRodXMgY3VycmVudCBJ
U19FUlIKY2hlY2sgaXNuJ3Qgc3VmZmljaWVudCBhbmQgd2UgbmVlZCB0byB1c2UgSVNfRVJSX09S
X05VTEwgaW5zdGVhZC4KCkZvdXJ0aCBwYXRjaCBmaXhlcyB3YXJuaW5nIHJlcG9ydGVkIGJ5IGti
dWlsZCB0ZXN0IHJvYm90LgoKQ2hlZXJzLAoKUGV0cgoKUGV0ciDFoHRldGlhciAoNCk6CiAgbmV0
OiBldGhlcm5ldDogc3VwcG9ydCBvZl9nZXRfbWFjX2FkZHJlc3MgbmV3IEVSUl9QVFIgZXJyb3IK
ICBuZXQ6IGRzYTogc3VwcG9ydCBvZl9nZXRfbWFjX2FkZHJlc3MgbmV3IEVSUl9QVFIgZXJyb3IK
ICBzdGFnaW5nOiBvY3Rlb24tZXRoZXJuZXQ6IEZpeCBvZl9nZXRfbWFjX2FkZHJlc3MgRVJSX1BU
UiBjaGVjawogIG5ldDogdXNiOiBzbXNjOiBmaXggd2FybmluZyByZXBvcnRlZCBieSBrYnVpbGQg
dGVzdCByb2JvdAoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2Flcm9mbGV4L2dyZXRoLmMgICAgICAg
ICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvYWxsd2lubmVyL3N1bjRpLWVt
YWMuYyAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9hbHRlcmEvYWx0ZXJh
X3RzZV9tYWluLmMgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2FyYy9lbWFj
X21haW4uYyAgICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvYXVy
b3JhL25iODgwMC5jICAgICAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9icm9hZGNvbS9iY21zeXNwb3J0LmMgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2Jyb2FkY29tL2JnbWFjLWJjbWEuYyAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvYnJvYWRjb20vYmdtYWMtcGxhdGZvcm0uYyAgICAgICAgfCAyICstCiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9icm9hZGNvbS9nZW5ldC9iY21nZW5ldC5jICAgICAgICB8IDIgKy0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2Nhdml1bS9vY3Rlb24vb2N0ZW9uX21nbXQuYyAgICAgIHwg
MiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2F2aXVtL3RodW5kZXIvdGh1bmRlcl9iZ3guYyAg
ICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9kYXZpY29tL2RtOTAwMC5jICAgICAgICAg
ICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2V0aG9jLmMgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvZXpjaGlwL25wc19lbmV0
LmMgICAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUv
ZmVjX21haW4uYyAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVz
Y2FsZS9mZWNfbXBjNTJ4eC5jICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
ZnJlZXNjYWxlL2ZtYW4vbWFjLmMgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9mcmVlc2NhbGUvZnNfZW5ldC9mc19lbmV0LW1haW4uYyB8IDIgKy0KIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ZyZWVzY2FsZS9naWFuZmFyLmMgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL3VjY19nZXRoLmMgICAgICAgICAgICAgfCAyICstCiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9oaXNpbGljb24vaGlzaV9mZW1hYy5jICAgICAgICAgICB8IDIg
Ky0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2hpc2lsaWNvbi9oaXg1aGQyX2dtYWMuYyAgICAgICAg
IHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbGFudGlxX3hyeDIwMC5jICAgICAgICAgICAg
ICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tYXJ2ZWxsL212NjQzeHhfZXRoLmMg
ICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21hcnZlbGwvbXZuZXRhLmMg
ICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWFydmVsbC9weGEx
NjhfZXRoLmMgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tYXJ2ZWxs
L3NreTIuYyAgICAgICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21l
ZGlhdGVrL210a19ldGhfc29jLmMgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJu
ZXQvbWljcmVsL2tzODg1MS5jICAgICAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9taWNyZWwva3M4ODUxX21sbC5jICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMv
bmV0L2V0aGVybmV0L254cC9scGNfZXRoLmMgICAgICAgICAgICAgICAgICAgIHwgMiArLQogZHJp
dmVycy9uZXQvZXRoZXJuZXQvcXVhbGNvbW0vcWNhX3NwaS5jICAgICAgICAgICAgICAgfCAyICst
CiBkcml2ZXJzL25ldC9ldGhlcm5ldC9xdWFsY29tbS9xY2FfdWFydC5jICAgICAgICAgICAgICB8
IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3JlbmVzYXMvcmF2Yl9tYWluLmMgICAgICAgICAg
ICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvcmVuZXNhcy9zaF9ldGguYyAgICAgICAg
ICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9zYW1zdW5nL3N4Z2JlL3N4Z2Jl
X3BsYXRmb3JtLmMgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3NvY2lvbmV4dC9zbmlf
YXZlLmMgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9z
dG1tYWMvc3RtbWFjX21haW4uYyAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9j
cHN3LmMgICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0
L3RpL25ldGNwX2NvcmUuYyAgICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRo
ZXJuZXQvd2l6bmV0L3c1MTAwLmMgICAgICAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25l
dC9ldGhlcm5ldC94aWxpbngvbGxfdGVtYWNfbWFpbi5jICAgICAgICAgICB8IDIgKy0KIGRyaXZl
cnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfYXhpZW5ldF9tYWluLmMgICAgIHwgMiArLQog
ZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jICAgICAgICAgfCAy
ICstCiBkcml2ZXJzL25ldC91c2Ivc21zYzc1eHguYyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDIgKy0KIGRyaXZlcnMvbmV0L3VzYi9zbXNjOTV4eC5jICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgMiArLQogZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jICAgICAgICAg
ICAgICAgICAgICAgfCAyICstCiBuZXQvZHNhL3NsYXZlLmMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IDIgKy0KIG5ldC9ldGhlcm5ldC9ldGguYyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQogNDkgZmlsZXMgY2hhbmdlZCwgNDkgaW5zZXJ0
aW9ucygrKSwgNDkgZGVsZXRpb25zKC0pCgotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QK
TGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
