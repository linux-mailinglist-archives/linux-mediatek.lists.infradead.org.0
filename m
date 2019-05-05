Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E4014081
	for <lists+linux-mediatek@lfdr.de>; Sun,  5 May 2019 17:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0qIYspgsuJgglZg6v0M7iahDrJLohnHqVQ25y9DNi6k=; b=Anhr9n2JHMJPhL8ygCCk9CKbM
	3PJQYzRbWtaK2pN2b6pdvVun8+rdanvJ8HIjb4nDS/7DXsobSiYjtncQ22G/3TCvOM4VrIrhxYfRd
	c/9twHwHp0ukTkcc28YoiTHRtEXwH34ZFMltMywxrF1sy/b5AoLjsE26BptuuF/FE/huJv/LoaViy
	AkVGKhRgxZoNvjUODd8SaZvITVGL1OueSP360tbgraBjxK4QDv3aiMSXYfqRQf1G2otrNfIAmVr+Y
	HR/y+KBIacIXarr82Uoh2iYzDunI06uka7q0ODRC1p8zmU+az6IgvkEPX4JUqwkWHWkt6Cm+o8yrF
	OBN6nCtGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNIjh-0006F6-2G; Sun, 05 May 2019 15:07:29 +0000
Received: from 7.mo7.mail-out.ovh.net ([46.105.43.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNIjJ-0005Yy-1j
 for linux-mediatek@lists.infradead.org; Sun, 05 May 2019 15:07:10 +0000
Received: from player763.ha.ovh.net (unknown [10.109.159.68])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id B630C110413
 for <linux-mediatek@lists.infradead.org>;
 Sun,  5 May 2019 17:06:51 +0200 (CEST)
Received: from RCM-web2.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player763.ha.ovh.net (Postfix) with ESMTPSA id 2611156C66C8;
 Sun,  5 May 2019 15:06:37 +0000 (UTC)
MIME-Version: 1.0
Date: Sun, 05 May 2019 17:06:36 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: xiaolei li <xiaolei.li@mediatek.com>
Subject: Re: [RFC PATCH v3 1/1] mtd: rawnand: mtk: Re-license MTK NAND driver
 as Dual MIT/GPL
In-Reply-To: <1557047534.26455.81.camel@mhfsdcap03>
References: <20190429085116.60081-1-xiaolei.li@mediatek.com>
 <20190429085116.60081-2-xiaolei.li@mediatek.com>
 <82cc648b1e92d5ed6876b025a2da1821@milecki.pl>
 <1557047534.26455.81.camel@mhfsdcap03>
Message-ID: <79539034414767c95e456a79391a18e7@milecki.pl>
X-Sender: rafal@milecki.pl
User-Agent: Roundcube Webmail/1.3.9
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 18161328451412790815
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrjeehgdeludcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_080705_352572_B4828957 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.43.131 listed in list.dnswl.org]
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
Cc: daniel.thompson@linaro.org, ryder.lee@mediatek.com,
 srv_heupstream@mediatek.com, richard@nod.at, miquel.raynal@bootlin.com,
 jorge.ramirez-ortiz@linaro.org, yingjoe.chen@mediatek.com,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 yellowriver2010@hotmail.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gMjAxOS0wNS0wNSAxMToxMiwgeGlhb2xlaSBsaSB3cm90ZToKPiBVcCB0byBub3csCj4gWGlh
b2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+ICh0aGUgYXV0aG9yIGFuZCBtYWpvciAK
PiBjb250cmlidXRvciksCj4gSm9yZ2UgUmFtaXJlei1PcnRpeiA8am9yZ2UucmFtaXJlei1vcnRp
ekBsaW5hcm8ub3JnPiAodGhlIGF1dGhvciBhbmQKPiBtYWpvciBjb250cmlidXRvciksCj4gUnlk
ZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPiAoZGV2ZWxvcGVyKSwKPiBSYWZhxYIgTWnF
gmVja2kgPHJhZmFsQG1pbGVja2kucGw+IChkZXZlbG9wZXIpCj4gc2VudCBBQ0sgZm9yIHRoaXMg
UkZDIHBhdGNoLgo+IAo+IE1heSBJIGFzayBpZiBpdCBpcyBlbm91Z2ggdG8gYWNjZXB0IHRoaXMg
Y2hhbmdlPyBPciBzaG91bGQgSSB3YWl0IGZvcgo+IG90aGVyIGRldmVsb3BlcidzIHJlc3BvbnNl
PwoKSSBjYW4ndCBpbWFnaW5lIHJlLWxpY2Vuc2luZyBzb21lb25lJ3Mgd29yayB3aXRob3V0IGEg
cGVybWlzc2lvbi4KClRoZSBiZXN0IHlvdSBjYW4gZG8gaXMgaWdub3JpbmcgY29udHJpYnV0b3Jz
IHRoYXQgc3VibWl0dGVkIGNoYW5nZXMgdGhhdAphcmVuJ3QgcmVhbGx5IGNvcHlyaWdodGFibGUg
KHNvbWV0aGluZyBsaWtlIGZpeGluZyBhIGNvbW1lbnQgdHlwbywgc29tZQphdXRvLWdlbmVyYXRl
ZCBkaWZmLXMpLgoKSSB1c2VkIGZvbGxvd2luZyBjb21tYW5kIHRvIGNoZWNrIG10a19uYW5kLmMg
ZmlsZSBoaXN0b3J5OgojIGdpdCBsb2cgLS1mb2xsb3cgZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRr
X25hbmQuYyB8IGdyZXAgCiJTaWduZWQtb2ZmLWJ5IiB8IHNvcnQgfCB1bmlxIC1jIHwgc29ydCAt
ciAtbgogICAgICAxOSAgICAgU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJh
eW5hbEBib290bGluLmNvbT4KICAgICAgMTggICAgIFNpZ25lZC1vZmYtYnk6IEJvcmlzIEJyZXpp
bGxvbiA8Ym9yaXMuYnJlemlsbG9uQGJvb3RsaW4uY29tPgogICAgICAxNSAgICAgU2lnbmVkLW9m
Zi1ieTogQm9yaXMgQnJlemlsbG9uIAo8Ym9yaXMuYnJlemlsbG9uQGZyZWUtZWxlY3Ryb25zLmNv
bT4KICAgICAgIDYgICAgIFNpZ25lZC1vZmYtYnk6IFhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVk
aWF0ZWsuY29tPgogICAgICAgMyAgICAgU2lnbmVkLW9mZi1ieTogUm9nZXJDQyBMaW4gPHJvZ2Vy
Y2MubGluQG1lZGlhdGVrLmNvbT4KICAgICAgIDIgICAgIFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBS
YXluYWwgCjxtaXF1ZWwucmF5bmFsQGZyZWUtZWxlY3Ryb25zLmNvbT4KICAgICAgIDEgICAgIFNp
Z25lZC1vZmYtYnk6IFdlaSBZb25nanVuIDx3ZWl5b25nanVuMUBodWF3ZWkuY29tPgogICAgICAg
MSAgICAgU2lnbmVkLW9mZi1ieTogUnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgog
ICAgICAgMSAgICAgU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tp
LnBsPgogICAgICAgMSAgICAgU2lnbmVkLW9mZi1ieTogUGV0ZXIgUGFuIDxwZXRlcnBhbmRvbmdA
bWljcm9uLmNvbT4KICAgICAgIDEgICAgIFNpZ25lZC1vZmYtYnk6IE1hc2FoaXJvIFlhbWFkYSAK
PHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQuY29tPgogICAgICAgMSAgICAgU2lnbmVkLW9mZi1i
eTogSm9yZ2UgUmFtaXJlei1PcnRpeiAKPGpvcmdlLnJhbWlyZXotb3J0aXpAbGluYXJvLm9yZz4K
CklkZWFsbHkgeW91IHNob3VsZCBzdGlsbCBnZXQgYWNrcyBmcm9tOgoKMSkgTWlxdWVsCkNvbnRy
aWJ1dG9yIG9mIDIxIGNoYW5nZXMKCjIpIEJvcmlzCkNvbnRyaWJ1dG9yIG9mIDMzIGNoYW5nZXMK
CjMpIFJvZ2VyQ0MKQ29udHJpYnV0b3Igb2YgMyBjaGFuZ2VzOgo5OGRlYThkNzE5MzEgKCJtdGQ6
IG5hbmQ6IG10azogU3VwcG9ydCBNVDc2MjIgTkFORCBmbGFzaCBjb250cm9sbGVyLiIpCmI0NWVl
NTUwMWVkZSAoIm10ZDogbmFuZDogbXRrOiBTdXBwb3J0IGRpZmZlcmVudCBNVEsgTkFORCBmbGFz
aCAKY29udHJvbGxlciBJUCIpCjU1OWU1OGU3ZWQyZCAoIm10ZDogbmFuZDogZml4IGNoYW5jZXMg
dG8gY3JlYXRlIGluY29tcGxldGUgRUNDIGRhdGEgd2hlbiAKd3JpdGluZyIpCgo0KSBXZWkKQ29u
dHJpYnV0b3Igb2YgMSBjaGFuZ2U6CjA3Zjc2NDQzZWY4MSAoIm10ZDogbmFuZDogbWVkaWF0ZWs6
IHJlbW92ZSByZWR1bmRhbnQgZGV2X2VyciBjYWxsIGluIAptdGtfbmZjX3Byb2JlKCkiKQoKNSkg
UGV0ZXIKQ29udHJpYnV0b3Igb2YgMSBjaGFuZ2U6CmQ0MDkyZDc2YTRhNCAoIm10ZDogbmFuZDog
UmVuYW1lIG5hbmQuaCBpbnRvIHJhd25hbmQuaCIpCgo2KSBNYXNhaGlybwpDb250cmlidXRvciBv
ZiAxIGNoYW5nZToKZjBkYmU0YWEzNWU3ICgibXRkOiBuYW5kOiBtZWRpYXRlazogcmV0dXJuIGVy
cm9yIGNvZGUgb2YgCm5hbmRfc2Nhbl9pZGVudC90YWlsKCkgb24gZXJyb3IiKQoKSSBndWVzcyB3
ZSBjb3VsZCBhY2NlcHQgeW91ciBwYXRjaCB3aXRob3V0IGFja3MgZnJvbSBXZWksIFBldGVyIGFu
ZCAKTWFzYWhpcm8uCgpZb3UgZGVmaW5pdGVseSBuZWVkIGFuIGFwcHJvdmFsIGZyb20gTWlxdWVs
LCBCb3JpcyBhbmQgUm9nZXJDQy4KCkl0IGRvZXNuJ3Qgc2VlbSB5b3UgdG9vayB0aGlzIHJlLWxp
Y2Vuc2luZyB0YXNrIHRvbyBzZXJpb3VzbHkuCgpQbGVhc2UgcGF5IG1vcmUgYXR0ZW50aW9uIHRv
IHRoaXMgbGljZW5zaW5nIHByb2JsZW0sIHlvdSBjYW4gc3RhcnQgd2l0aCAKZG9pbmcKYSBzaW1p
bGFyIHJlc2VhcmNoIGZvciBtdGtfZWNjLmMgYW5kIG10a19lY2MuaC4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcg
bGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
