Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431F449D87
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 11:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G3dqF+XcK0purAH23v8n+Yw9G8fcznreo1gEjOicCQM=; b=IZe4FEFg/6Ur2cOBewyXQYFOu
	PP7vmnEfouPYaTu8YO5BwGzdoRjfA7Xf+xikk7JO/FsSN1NNV3gtMuehqL6SB/etF7+5UBw2DMjHi
	QwArFgWkL4EI2tqmBZfxiMPJ4FBorjy+jT6lxq1irkykjXXHkAKFHDrcFYcPER5958QynJAmsX9Fi
	YFimYvgtlvAkqSuzzRSRtwaQd6fX0OOnhPN0jGJTTsEIgbngxWNGzsTEoh9WRDhxPPTMTuaOEq4L+
	B5IVEYibgkZ6NZ/bSCGvTJCOdB//OnvrC1yoqsP4OporRM0y2lG23wrNxDw1dGDDJfUzL8pZMTxvO
	wb/cbqLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAYU-0006qH-5R; Tue, 18 Jun 2019 09:37:30 +0000
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAYP-0006mo-KI
 for linux-mediatek@lists.infradead.org; Tue, 18 Jun 2019 09:37:27 +0000
Received: from player699.ha.ovh.net (unknown [10.108.54.217])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id B97BF19D6A2
 for <linux-mediatek@lists.infradead.org>;
 Tue, 18 Jun 2019 11:37:19 +0200 (CEST)
Received: from RCM-web4.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player699.ha.ovh.net (Postfix) with ESMTPSA id 1F52C6F385A2;
 Tue, 18 Jun 2019 09:36:56 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 18 Jun 2019 11:36:56 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: xiaolei li <xiaolei.li@mediatek.com>
Subject: Re: [RFC PATCH v4 1/1] mtd: rawnand: mtk: Re-license MTK NAND driver
 as Dual MIT/GPL
In-Reply-To: <1558685891.18315.33.camel@mhfsdcap03>
References: <20190507092020.1917-1-xiaolei.li@mediatek.com>
 <20190507092020.1917-2-xiaolei.li@mediatek.com>
 <CAK8P3a3d-2U=hpb0P0+W-eZ0cviwKVwy6dWvHbhBCgF4CJUWKA@mail.gmail.com>
 <5052ea548ce89c1a588236d00319960b@milecki.pl>
 <1558685891.18315.33.camel@mhfsdcap03>
Message-ID: <75974a2066425e5852d0295b22d2b259@milecki.pl>
X-Sender: rafal@milecki.pl
User-Agent: Roundcube Webmail/1.3.9
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 12740120398388760095
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudeiledgudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_023725_868710_D19BAC5A 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.165.53.149 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Ryder Lee <ryder.lee@mediatek.com>, srv_heupstream@mediatek.com,
 Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Richard Weinberger <richard@nod.at>, Miquel Raynal <miquel.raynal@bootlin.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, jorge.ramirez-ortiz@linaro.org,
 yingjoe.chen@mediatek.com, boris.brezillon@collabora.com,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Wei Yongjun <weiyongjun1@huawei.com>, yellowriver2010@hotmail.com,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 rogercc.lin@mediatek.com, Dan Carpenter <dan.carpenter@oracle.com>,
 peterpandong@micron.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gMjAxOS0wNS0yNCAxMDoxOCwgeGlhb2xlaSBsaSB3cm90ZToKPiBPbiBGcmksIDIwMTktMDUt
MjQgYXQgMDk6NTUgKzAyMDAsIFJhZmHFgiBNacWCZWNraSB3cm90ZToKPj4gT24gMjAxOS0wNS0y
NCAwOTo1MiwgQXJuZCBCZXJnbWFubiB3cm90ZToKPj4gPiBPbiBUdWUsIE1heSA3LCAyMDE5IGF0
IDExOjIwIEFNIFhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPgo+PiA+IHdyb3Rl
Ogo+PiA+Pgo+PiA+PiBJdCBpcyB3YW50ZWQgdG8gdXNlIE1USyBOQU5EIGRyaXZlciB3aXRoIEdQ
TC0yLjAgb3IgTUlUIGxpY2Vuc2UuCj4+ID4+IEJ1dCBub3cgaXQgaXMgb25seSBsaWNlbnNlZCBh
cyBHUEwtMi4wLgo+PiA+PiBTbyByZS1saWNlbnNlIGl0IGFzIGR1YWwgTUlUL0dQTCBhbmQgcmVw
bGFjZSBsaWNlbnNlIHRleHQgd2l0aAo+PiA+PiBTUERYIHRhZy4KPj4gPj4KPj4gPj4gU2lnbmVk
LW9mZi1ieTogWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+Cj4+ID4+IEFja2Vk
LWJ5OiBKb3JnZSBSYW1pcmV6LU9ydGl6IDxqb3JnZS5yYW1pcmV6LW9ydGl6QGxpbmFyby5vcmc+
Cj4+ID4+IEFja2VkLWJ5OiBSeWRlciBMZWUgPHJ5ZGVyLmxlZUBtZWRpYXRlay5jb20+Cj4+ID4+
IEFja2VkLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4+ID4+IEFja2Vk
LWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+PiA+PiBBY2tl
ZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPj4g
Pj4gQWNrZWQtYnk6IFJvZ2VyQ0MgTGluIDxyb2dlcmNjLmxpbkBtZWRpYXRlay5jb20+Cj4+ID4K
Pj4gPiBBY2tlZC1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPj4gPgo+PiA+IFNv
cnJ5IGZvciBtaXNzaW5nIHRoaXMgZWFybGllci4KPj4gCj4+IFRoYW5rIHlvdSEKPj4gCj4+IFhp
YW9sZWk6IHBsZWFzZSByZXNlbmQgdGhpcyBwYXRjaCB3aXRob3V0IFJGQyBpbiBhIHN1YmplY3Qu
IEkgYmVsaWV2ZSAKPj4gaXQKPj4gY2FuIGJlIGFwcGxpZWQvcHVzaGVkIG5vdy4KPiAKPiBUaGFu
a3MgdmVyeSBtdWNoIGZvciB5b3VyIHJlc3BvbnNlIQo+IEkgd2lsbCBzZW5kIGEgZm9ybWFsIHBh
dGNoIHNvb24uCgpIaSBYaWFvbGVpLCB3aGF0J3MgdGhlIHN0YXR1cyBvZiB0aGlzPwoKSXQgdG9v
ayBzb21lIGVmZm9ydCB0byBzb3J0IHRoYXQgbGljZW5zaW5nIG91dCwgSSBiZWxpZXZlIGhhbmRs
aW5nIHRoaXMKc29vbmVyIHRoYW4gbGF0ZXIgaXMgaGlnaGx5IHJlY29tbWVuZGVkLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsg
bWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
