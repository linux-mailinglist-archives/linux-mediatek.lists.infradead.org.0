Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61BDDF4F
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 11:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDXXSL6yoBiTjXl4n9dB+CV0TiK+9aZz/nUmfmrCPms=; b=V0f8/xW6Ca7OAL
	FvG4fhO5bt/k4nz1rFO7wTl9kdeBqznGOPW+JWivJV0M+nW+Q5FkYGW2tAKejVeypcGL5+NVaTZgB
	saHuNpN3v4IjyNFoFLJFTwgcxbUqFR5AkHPYMvrAzyUkP6akf6lmhC9YcjxCHFI6jOJH8OhkheC7F
	HOhyeWJkb3De60IcyIT/JI2ybsS5bYMTMHDF8DAhbM9nhbptOz6CFQ5Zsmw3eNs/JO4hH0giOE8Gy
	deq0dq1arT6LjqLc19wuhefLXSVfJhdQbqi8MgtcsGi1xNSCLhcEnr3fpxrysxeCpHQ8O9UXmNMsi
	xqz7+qJ/SMQIyOxqbqlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL2UD-0002xt-76; Mon, 29 Apr 2019 09:22:09 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL2U8-0002xI-1o; Mon, 29 Apr 2019 09:22:06 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 513621C0013;
 Mon, 29 Apr 2019 09:22:00 +0000 (UTC)
Date: Mon, 29 Apr 2019 11:22:00 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>
Subject: Re: [PATCH 5/5] mtd: rawnand: mtk: Setup empty page threshold
 correctly
Message-ID: <20190429112200.42a86815@xps13>
In-Reply-To: <20190429063834.45967-6-xiaolei.li@mediatek.com>
References: <20190429063834.45967-1-xiaolei.li@mediatek.com>
 <20190429063834.45967-6-xiaolei.li@mediatek.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_022204_245126_2244A78E 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, linux-mediatek@lists.infradead.org,
 linux-mtd@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgWGlhb2xlaSwKClhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPiB3cm90ZSBv
biBNb24sIDI5IEFwciAyMDE5IDE0OjM4OjM0CiswODAwOgoKPiBNVEsgTkFORCBDb250cm9sbGVy
IGhhcyB0aGUgYWJpbGl0eSB0byBjaGVjayB3aGV0aGVyIHJlYWQgZGF0YSBhcmUKPiBtb3N0bHkg
MHhmZiBieSBjb21wYXJpbmcgemVybyBiaXQgY29udXQgb2YgcmVhZCBkYXRhIHdpdGggZW1wdHkK
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvdW50ID8gCj4gdGhyZXNob2xk
IGF1dG9tYXRpY2FsbHkuCj4gCj4gQnV0IG5vdyB3ZSBuZXZlciBzZXQgdGhpcyB0aHJlc2hvbGQg
YW5kIGFsd2F5cyBtYWtlIGl0IGJlIGRlZmF1bHQgdmFsdWUKPiB3aGljaCBpcyAxMC4KPiAKPiBU
aGlzIHBhdGNoIGZpeGVzIHRoaXMgcHJvYmxlbSBieSBzZXR0aW5nIGVtcHR5IHRocmVzaG9sZCBh
cyB0aGUgcHJvZHVjdAo+IG9mIHJlYWQgc2VjdG9yIGNvdW50IGFuZCBlY2Mgc3RyZW5ndGguCgpE
byB3ZSB1c2UgdGhlc2UgZmVhdHVyZSB5ZXQ/CgpzL2VjYy9FQ0MvCgo+IAo+IEZpeGVzOiA5M2Ri
NDQ2YTQyNGMgKCJtdGQ6IG5hbmQ6IG1vdmUgcmF3IE5BTkQgcmVsYXRlZCBjb2RlIHRvIHRoZSBy
YXcvIHN1YmRpciIpCgpEaXR0by4KCj4gU2lnbmVkLW9mZi1ieTogWGlhb2xlaSBMaSA8eGlhb2xl
aS5saUBtZWRpYXRlay5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L210a19uYW5k
LmMgfCA1ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX25hbmQuYyBiL2RyaXZlcnMvbXRkL25h
bmQvcmF3L210a19uYW5kLmMKPiBpbmRleCBjZjVlNTBlNzA0YWUuLjY3NWQ0ZmFhMzQ4MCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jCj4gKysrIGIvZHJpdmVy
cy9tdGQvbmFuZC9yYXcvbXRrX25hbmQuYwo+IEBAIC05NCw2ICs5NCw3IEBACj4gICNkZWZpbmUg
TkZJX01BU1RFUl9TVEEJCSgweDIyNCkKPiAgI2RlZmluZQkJTUFTVEVSX1NUQV9NQVNLCQkoMHgw
RkZGKQo+ICAjZGVmaW5lIE5GSV9FTVBUWV9USFJFU0gJKDB4MjNDKQo+ICsjZGVmaW5lCQlFTVBU
WV9USFJFU0hfTUFTSwlHRU5NQVNLKDcsIDApCj4gIAo+ICAjZGVmaW5lIE1US19OQU1FCQkibXRr
LW5hbmQiCj4gICNkZWZpbmUgS0IoeCkJCQkoKHgpICogMTAyNFVMKQo+IEBAIC05MzEsNiArOTMy
LDEwIEBAIHN0YXRpYyBpbnQgbXRrX25mY19yZWFkX3N1YnBhZ2Uoc3RydWN0IG10ZF9pbmZvICpt
dGQsIHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4g
IAo+ICsJLyogU2V0dXAgZW1wdHkgdGhyZXNob2xkICovCj4gKwlyZWcgPSBtYXgoc2VjdG9ycyAq
IGNoaXAtPmVjYy5zdHJlbmd0aCwgRU1QVFlfVEhSRVNIX01BU0spOwo+ICsJbmZpX3dyaXRlbChu
ZmMsIHJlZywgTkZJX0VNUFRZX1RIUkVTSCk7Cj4gKwo+ICAJcmVnID0gbmZpX3JlYWR3KG5mYywg
TkZJX0NORkcpOwo+ICAJcmVnIHw9IENORkdfUkVBRF9FTiB8IENORkdfRE1BX0JVUlNUX0VOIHwg
Q05GR19BSEI7Cj4gIAlpZiAoIXJhdykgewoKCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWls
aW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
