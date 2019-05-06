Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D928145E5
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 May 2019 10:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQii99vtBJwX1fK4dHjG/DFsNlgrti5IyZ4+wIJheXw=; b=ohlW2Nk5ErucIS
	nJHeHWGtu/fppgl1NpZuJ4lEFljXp+TJvWkPlmBI3aaLfg/9qmVHXqtrqH2dMIyral5buB7M7Cx07
	3bFg7U/fRNfQdHubSz5NdKW0OFtd9u80RyenfcwzpdRxhvH6p3sE44AGFoTHE/Sp5jDqid8crKjJw
	oQkvfOUFFCVy+36Gye8nYfABgTKgZ2tga3ponA/KUhNHX+LuZ68Z69njXnrLY2NsWIMDlvwtbZwkM
	i0tnEi1HhKgDSrYhAHlCk7j6UrmOKGY3cGvaMQjdJ6Ni98F9wB3lxki7o6zKC61kMEeBV4XpqFh0Z
	miaNWatmZuVH4l0eT83g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYpQ-0002ct-U9; Mon, 06 May 2019 08:18:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYpM-0002cU-KS; Mon, 06 May 2019 08:18:26 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9227A283701;
 Mon,  6 May 2019 09:18:22 +0100 (BST)
Date: Mon, 6 May 2019 10:18:19 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: xiaolei li <xiaolei.li@mediatek.com>
Subject: Re: [RFC PATCH v3 1/1] mtd: rawnand: mtk: Re-license MTK NAND
 driver as Dual MIT/GPL
Message-ID: <20190506101819.28cff338@collabora.com>
In-Reply-To: <1557104180.26455.89.camel@mhfsdcap03>
References: <20190429085116.60081-1-xiaolei.li@mediatek.com>
 <20190429085116.60081-2-xiaolei.li@mediatek.com>
 <82cc648b1e92d5ed6876b025a2da1821@milecki.pl>
 <1557047534.26455.81.camel@mhfsdcap03>
 <79539034414767c95e456a79391a18e7@milecki.pl>
 <1557104180.26455.89.camel@mhfsdcap03>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_011824_934122_1B8281DC 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-mtd@lists.infradead.org, yellowriver2010@hotmail.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCA2IE1heSAyMDE5IDA4OjU2OjIwICswODAwCnhpYW9sZWkgbGkgPHhpYW9sZWkubGlA
bWVkaWF0ZWsuY29tPiB3cm90ZToKCj4gSGkgUmFmYWwsCj4gCj4gT24gU3VuLCAyMDE5LTA1LTA1
IGF0IDE3OjA2ICswMjAwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gPiBPbiAyMDE5LTA1LTA1
IDExOjEyLCB4aWFvbGVpIGxpIHdyb3RlOiAgCj4gPiA+IFVwIHRvIG5vdywKPiA+ID4gWGlhb2xl
aSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+ICh0aGUgYXV0aG9yIGFuZCBtYWpvciAKPiA+
ID4gY29udHJpYnV0b3IpLAo+ID4gPiBKb3JnZSBSYW1pcmV6LU9ydGl6IDxqb3JnZS5yYW1pcmV6
LW9ydGl6QGxpbmFyby5vcmc+ICh0aGUgYXV0aG9yIGFuZAo+ID4gPiBtYWpvciBjb250cmlidXRv
ciksCj4gPiA+IFJ5ZGVyIExlZSA8cnlkZXIubGVlQG1lZGlhdGVrLmNvbT4gKGRldmVsb3Blciks
Cj4gPiA+IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4gKGRldmVsb3BlcikKPiA+
ID4gc2VudCBBQ0sgZm9yIHRoaXMgUkZDIHBhdGNoLgo+ID4gPiAKPiA+ID4gTWF5IEkgYXNrIGlm
IGl0IGlzIGVub3VnaCB0byBhY2NlcHQgdGhpcyBjaGFuZ2U/IE9yIHNob3VsZCBJIHdhaXQgZm9y
Cj4gPiA+IG90aGVyIGRldmVsb3BlcidzIHJlc3BvbnNlPyAgCj4gPiAKPiA+IEkgY2FuJ3QgaW1h
Z2luZSByZS1saWNlbnNpbmcgc29tZW9uZSdzIHdvcmsgd2l0aG91dCBhIHBlcm1pc3Npb24uICAK
PiAKPiBJIGhhdmUgbm8gaW50ZW50aW9uIHRvIG9mZmVuZCBvdGhlcidzIGNvbnRyaWJ1dGlvbi4K
PiBUaGF0IGlzIHdoeSBJIHNlbnQgdGhpcyBSRkMgcGF0Y2ggdG8gYXNrIGZvciBBQ0tzIGZyb20g
Y29udHJpYnV0b3JzLgo+IAo+ID4gCj4gPiBUaGUgYmVzdCB5b3UgY2FuIGRvIGlzIGlnbm9yaW5n
IGNvbnRyaWJ1dG9ycyB0aGF0IHN1Ym1pdHRlZCBjaGFuZ2VzIHRoYXQKPiA+IGFyZW4ndCByZWFs
bHkgY29weXJpZ2h0YWJsZSAoc29tZXRoaW5nIGxpa2UgZml4aW5nIGEgY29tbWVudCB0eXBvLCBz
b21lCj4gPiBhdXRvLWdlbmVyYXRlZCBkaWZmLXMpLgo+ID4gCj4gPiBJIHVzZWQgZm9sbG93aW5n
IGNvbW1hbmQgdG8gY2hlY2sgbXRrX25hbmQuYyBmaWxlIGhpc3Rvcnk6Cj4gPiAjIGdpdCBsb2cg
LS1mb2xsb3cgZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX25hbmQuYyB8IGdyZXAgCj4gPiAiU2ln
bmVkLW9mZi1ieSIgfCBzb3J0IHwgdW5pcSAtYyB8IHNvcnQgLXIgLW4KPiA+ICAgICAgIDE5ICAg
ICBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29t
Pgo+ID4gICAgICAgMTggICAgIFNpZ25lZC1vZmYtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMu
YnJlemlsbG9uQGJvb3RsaW4uY29tPgo+ID4gICAgICAgMTUgICAgIFNpZ25lZC1vZmYtYnk6IEJv
cmlzIEJyZXppbGxvbiAKPiA+IDxib3Jpcy5icmV6aWxsb25AZnJlZS1lbGVjdHJvbnMuY29tPgo+
ID4gICAgICAgIDYgICAgIFNpZ25lZC1vZmYtYnk6IFhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVk
aWF0ZWsuY29tPgo+ID4gICAgICAgIDMgICAgIFNpZ25lZC1vZmYtYnk6IFJvZ2VyQ0MgTGluIDxy
b2dlcmNjLmxpbkBtZWRpYXRlay5jb20+Cj4gPiAgICAgICAgMiAgICAgU2lnbmVkLW9mZi1ieTog
TWlxdWVsIFJheW5hbCAKPiA+IDxtaXF1ZWwucmF5bmFsQGZyZWUtZWxlY3Ryb25zLmNvbT4KPiA+
ICAgICAgICAxICAgICBTaWduZWQtb2ZmLWJ5OiBXZWkgWW9uZ2p1biA8d2VpeW9uZ2p1bjFAaHVh
d2VpLmNvbT4KPiA+ICAgICAgICAxICAgICBTaWduZWQtb2ZmLWJ5OiBSeWRlciBMZWUgPHJ5ZGVy
LmxlZUBtZWRpYXRlay5jb20+Cj4gPiAgICAgICAgMSAgICAgU2lnbmVkLW9mZi1ieTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+ID4gICAgICAgIDEgICAgIFNpZ25lZC1vZmYt
Ynk6IFBldGVyIFBhbiA8cGV0ZXJwYW5kb25nQG1pY3Jvbi5jb20+Cj4gPiAgICAgICAgMSAgICAg
U2lnbmVkLW9mZi1ieTogTWFzYWhpcm8gWWFtYWRhIAo+ID4gPHlhbWFkYS5tYXNhaGlyb0Bzb2Np
b25leHQuY29tPgo+ID4gICAgICAgIDEgICAgIFNpZ25lZC1vZmYtYnk6IEpvcmdlIFJhbWlyZXot
T3J0aXogCj4gPiA8am9yZ2UucmFtaXJlei1vcnRpekBsaW5hcm8ub3JnPgo+ID4gCj4gPiBJZGVh
bGx5IHlvdSBzaG91bGQgc3RpbGwgZ2V0IGFja3MgZnJvbToKPiA+IAo+ID4gMSkgTWlxdWVsCj4g
PiBDb250cmlidXRvciBvZiAyMSBjaGFuZ2VzCj4gPiAKPiA+IDIpIEJvcmlzCj4gPiBDb250cmli
dXRvciBvZiAzMyBjaGFuZ2VzCgpOb3Qgc3VyZSB0aGF0J3MgcmVhbGx5IG5lY2Vzc2FyeSBnaXZl
biB0aGUgdHlwZSBvZiBjaGFuZ2VzIGRvbmUgaW4gdGhvc2UKMzMgY29tbWl0cyAobW9zdGx5IG1l
Y2hhbmljYWwgY2hhbmdlcyBkdWUgdG8gbW9kaWZpY2F0aW9ucyBpbiB0aGUgTkFORApmcmFtZXdv
cmspLCBidXQgaGVyZSBpcyBteQoKQWNrZWQtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJl
emlsbG9uQGNvbGxhYm9yYS5jb20+Cgo+ID4gCj4gPiAzKSBSb2dlckNDCj4gPiBDb250cmlidXRv
ciBvZiAzIGNoYW5nZXM6Cj4gPiA5OGRlYThkNzE5MzEgKCJtdGQ6IG5hbmQ6IG10azogU3VwcG9y
dCBNVDc2MjIgTkFORCBmbGFzaCBjb250cm9sbGVyLiIpCj4gPiBiNDVlZTU1MDFlZGUgKCJtdGQ6
IG5hbmQ6IG10azogU3VwcG9ydCBkaWZmZXJlbnQgTVRLIE5BTkQgZmxhc2ggCj4gPiBjb250cm9s
bGVyIElQIikKPiA+IDU1OWU1OGU3ZWQyZCAoIm10ZDogbmFuZDogZml4IGNoYW5jZXMgdG8gY3Jl
YXRlIGluY29tcGxldGUgRUNDIGRhdGEgd2hlbiAKPiA+IHdyaXRpbmciKQo+ID4gCj4gPiA0KSBX
ZWkKPiA+IENvbnRyaWJ1dG9yIG9mIDEgY2hhbmdlOgo+ID4gMDdmNzY0NDNlZjgxICgibXRkOiBu
YW5kOiBtZWRpYXRlazogcmVtb3ZlIHJlZHVuZGFudCBkZXZfZXJyIGNhbGwgaW4gCj4gPiBtdGtf
bmZjX3Byb2JlKCkiKQo+ID4gCj4gPiA1KSBQZXRlcgo+ID4gQ29udHJpYnV0b3Igb2YgMSBjaGFu
Z2U6Cj4gPiBkNDA5MmQ3NmE0YTQgKCJtdGQ6IG5hbmQ6IFJlbmFtZSBuYW5kLmggaW50byByYXdu
YW5kLmgiKQo+ID4gCj4gPiA2KSBNYXNhaGlybwo+ID4gQ29udHJpYnV0b3Igb2YgMSBjaGFuZ2U6
Cj4gPiBmMGRiZTRhYTM1ZTcgKCJtdGQ6IG5hbmQ6IG1lZGlhdGVrOiByZXR1cm4gZXJyb3IgY29k
ZSBvZiAKPiA+IG5hbmRfc2Nhbl9pZGVudC90YWlsKCkgb24gZXJyb3IiKQo+ID4gCj4gPiBJIGd1
ZXNzIHdlIGNvdWxkIGFjY2VwdCB5b3VyIHBhdGNoIHdpdGhvdXQgYWNrcyBmcm9tIFdlaSwgUGV0
ZXIgYW5kIAo+ID4gTWFzYWhpcm8uCj4gPiAKPiA+IFlvdSBkZWZpbml0ZWx5IG5lZWQgYW4gYXBw
cm92YWwgZnJvbSBNaXF1ZWwsIEJvcmlzIGFuZCBSb2dlckNDLgo+ID4gCj4gPiBJdCBkb2Vzbid0
IHNlZW0geW91IHRvb2sgdGhpcyByZS1saWNlbnNpbmcgdGFzayB0b28gc2VyaW91c2x5Lgo+ID4g
Cj4gPiBQbGVhc2UgcGF5IG1vcmUgYXR0ZW50aW9uIHRvIHRoaXMgbGljZW5zaW5nIHByb2JsZW0s
IHlvdSBjYW4gc3RhcnQgd2l0aCAKPiA+IGRvaW5nCj4gPiBhIHNpbWlsYXIgcmVzZWFyY2ggZm9y
IG10a19lY2MuYyBhbmQgbXRrX2VjYy5oLiAgCj4gCj4gVGhhbmtzIGZvciB5b3VyIEFDSyBhbmQg
Z29vZCBzdWdnZXN0aW9uLiBJdCBpcyByZWFsbHkgaGVscGZ1bCBmb3IgbWUuCj4gCj4gVGhhbmtz
LAo+IFhpYW9sZWkKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW1lZGlhdGVrCg==
