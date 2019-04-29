Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF5BE000
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 12:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGTS8RRPadZvhFm0B5W17WvNTOTc8wOMudHypm7anTw=; b=dUqfIyi3FFuqnN
	3H5Rl2usRCffLolvfWO22P8b3nKjGTzaj7+15ilreIbwOj+xVy9OzzKUwgSxdVnFhXxiS50i9XylJ
	cYXNV7yRbFv6Mrm2rJLefY4ceD1OKidw6h/V8zW86BYEQtB7s9IdwlhXCMVK0UPvtl0NVSduPQtgM
	ZuMqoE2rJpxnggxWE7YOFEOzp3BCTyqDoV7+gEFxiwqGEQHFXp2nkG0e8NJb+5qK9zzbQ3/vxfKOc
	afNX2TLyBynirNO6z5P93Mw9MpKDZT87vjp29ca4S1/6n+qq3YQoYbRimUoXwzqhWr23KrbtlBIGP
	55bDPMTI8bABqE9uZ15g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL37J-0002YS-Qc; Mon, 29 Apr 2019 10:02:33 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL37G-0002Xt-IN; Mon, 29 Apr 2019 10:02:32 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 6FD8AFF81A;
 Mon, 29 Apr 2019 10:02:27 +0000 (UTC)
Date: Mon, 29 Apr 2019 12:02:26 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: xiaolei li <xiaolei.li@mediatek.com>
Subject: Re: [PATCH 1/5] mtd: rawnand: mtk: Correct low level time
 calculation of r/w cycle
Message-ID: <20190429120226.43589cdd@xps13>
In-Reply-To: <1556530553.26455.35.camel@mhfsdcap03>
References: <20190429063834.45967-1-xiaolei.li@mediatek.com>
 <20190429063834.45967-2-xiaolei.li@mediatek.com>
 <20190429110341.208c096e@xps13>
 <1556530553.26455.35.camel@mhfsdcap03>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_030230_758368_342AE7B9 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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

SGkgeGlhb2xlaSwKCnhpYW9sZWkgbGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPiB3cm90ZSBv
biBNb24sIDI5IEFwciAyMDE5IDE3OjM1OjUzCiswODAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gVGhh
bmtzIGZvciB5b3VyIHJldmlldy4KPiAKPiAKPiBPbiBNb24sIDIwMTktMDQtMjkgYXQgMTE6MDMg
KzAyMDAsIE1pcXVlbCBSYXluYWwgd3JvdGU6Cj4gPiBIaSBYaWFvbGVpLAo+ID4gCj4gPiBYaWFv
bGVpIExpIDx4aWFvbGVpLmxpQG1lZGlhdGVrLmNvbT4gd3JvdGUgb24gTW9uLCAyOSBBcHIgMjAx
OSAxNDozODozMAo+ID4gKzA4MDA6Cj4gPiAgIAo+ID4gPiBBdCBwcmVzZW50LCB0aGUgZmxvdyBv
ZiBjYWxjdWxhdGluZyBBQyB0aW1pbmcgb2YgcmVhZC93cml0ZSBjeWNsZSBpbiBTRFIKPiA+ID4g
bW9kZSBpcyB0aGF0Ogo+ID4gPiBBdCBmaXJzdCwgY2FsY3VsYXRlIGhpZ2ggaG9sZCB0aW1lIHdo
aWNoIGlzIHZhbGlkIGZvciBib3RoIHJlYWQgYW5kIHdyaXRlCj4gPiA+IGN5Y2xlIHVzaW5nIHRo
ZSBtYXggdmFsdWUgYmV0d2VlbiB0UkVIX21pbiBhbmQgdFdIX21pbi4KPiA+ID4gU2Vjb25kbHks
IGNhbGN1bGF0ZSBXRSMgcHVsc2Ugd2lkdGggdXNpbmcgdFdQX21pbi4KPiA+ID4gVGhyaWRseSwg
Y2FsY3VsYXRlIFJFIyBwdWxzZSB3aWR0aCB1c2luZyB0aGUgYmlnZ2VyIG9uZSBiZXR3ZWVuIHRS
RUFfbWF4Cj4gPiA+IGFuZCB0UlBfbWluLgo+ID4gPiAKPiA+ID4gQnV0IE5BTkQgU1BFQyBzaG93
cyB0aGF0IENvbnRyb2xsZXIgc2hvdWxkIGFsc28gbWVldCB3cml0ZS9yZWFkIGN5Y2xlIHRpbWUu
Cj4gPiA+IFRoYXQgaXMgd3JpdGUgY3ljbGUgdGltZSBzaG91bGQgYmUgbW9yZSB0aGFuIHRXQ19t
aW4gYW5kIHJlYWQgY3ljbGUgc2hvdWxkCj4gPiA+IGJlIG1vcmUgdGhhbiB0UkNfbWluLiBPYnZp
b3VzbHksIHdlIGRvIG5vdCBhY2hpZXZlIHRoYXQgbm93Lgo+ID4gPiAKPiA+ID4gVGhpcyBwYXRj
aCBjb3JyZWN0cyB0aGUgbG93IGxldmVsIHRpbWUgY2FsY3VsYXRpb24gdG8gbWVldCBtaW5pbXVt
Cj4gPiA+IHJlYWQvd3JpdGUgY3ljbGUgdGltZSByZXF1aXJlZC4gQWZ0ZXIgZ2V0dGluZyB0aGUg
aGlnaCBob2xkIHRpbWUsIFdFIyBsb3cKPiA+ID4gbGV2ZWwgdGltZSB3aWxsIGJlIHByb21pc2Vk
IHRvIG1lZXQgdFdQX21pbiBhbmQgdFdDX21pbiByZXF1aXJlbWVudCwKPiA+ID4gYW5kIFJFIyBs
b3cgbGV2ZWwgdGltZSB3aWxsIGJlIHByb21pc2VkIHRvIG1lZXQgdFJFQV9tYXgsIHRSUF9taW4g
YW5kCj4gPiA+IHRSQ19taW4gcmVxdWlyZW1lbnQuCj4gPiA+IAo+ID4gPiBGaXhlczogOTNkYjQ0
NmE0MjRjICgibXRkOiBuYW5kOiBtb3ZlIHJhdyBOQU5EIHJlbGF0ZWQgY29kZSB0byB0aGUgcmF3
LyBzdWJkaXIiKSAgCj4gPiAKPiA+IFRoaXMgaXMgZGVmaW5pdGVseSBub3QgdGhlIGZhdWx0eSBw
YXRjaC4gUGxlYXNlIHVzZSAtLWZvbGxvdyB3aGVuCj4gPiBzZWFyY2hpbmcgZm9yIHRoZSBjdWxw
cml0LCB0byBhdm9pZCBiZWluZyBibG9ja2VkIGJ5IHRoZQo+ID4gcmVuYW1pbmcvbW92aW5nIHdv
cmsuICAKPiBZZXMuIFRoaXMgaXNzdWUgZXhpc3RzIGJlZm9yZSByYXcvIHN1ZGlyIGJlaW5nIGNy
ZWF0ZWQuCj4gCj4gVGhlIGZhdWx0eSBwYXRjaCBzaG91bGQgYmUgJ2NvbW1pdCBlZGZlZTM2MTlj
NDkgKCJtdGQ6IG5hbmQ6IG10azogYWRkCj4gLT5zZXR1cF9kYXRhX2ludGVyZmFjZSgpIGhvb2si
KScgd2hpY2ggY2Fubm90IGJlIGZvdW5kIGluIGdpdCBoaXN0b3J5ICAKPiBub3cuCj4gCj4gU2hv
dWxkIEkgbGlzdCBpdCBoZXJlPwoKV2hhdCBkbyB5b3UgbWVhbj8gVGhpcyBjb21taXQgZXhpc3Rz
LCBJIGNhbiBhY3R1YWxseSAiZ2l0IHNob3ciIGl0LgoKClRoYW5rcywKTWlxdcOobAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsg
bWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
