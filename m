Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10B2292C9
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 10:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMnoCQKzbenvdizuXx2kaWhW9SebtTnTexxa/9DaaTo=; b=Xyzpo7M3nBzry2
	Etlxg6f9n1lUnhgY1Bw31XDlh6KErY6aij98waDSJboeXMzjIILHUm/KJ4vcAT3nTzlWfJ/qm/vY2
	u4maI+QkMb7WI8/A/rVbFUC2mn/TiTXkcsq8dzxI6Sy6xZb3d5YLvDYu253DkUZRdrQCdkdOEw9M2
	Qamc1hscsJQlza4BCXtwiZjwmZeKIq0c2N423f684c8P5U3V3PuuUvd3tGpkR9kDh7ffeChDn2bhN
	0U+ai4UfLrskzIfphOczQWQBpa9HhnHKunfg59hrUVbUXIRC/jcLNT1NSlvTvaPHFw6yjkSA1tSXS
	38qiq7vuHJt5Mfh2ZVUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5PK-00046e-W4; Fri, 24 May 2019 08:18:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5PH-00045n-Ch; Fri, 24 May 2019 08:18:28 +0000
X-UUID: cca49ac54aad436a8d73dc7169115ab8-20190524
X-UUID: cca49ac54aad436a8d73dc7169115ab8-20190524
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2035119540; Fri, 24 May 2019 00:18:15 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 01:18:14 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs08n1.mediatek.inc
 (172.21.101.55) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 24 May 2019 16:18:12 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 24 May 2019 16:18:11 +0800
Message-ID: <1558685891.18315.33.camel@mhfsdcap03>
Subject: Re: [RFC PATCH v4 1/1] mtd: rawnand: mtk: Re-license MTK NAND
 driver as Dual MIT/GPL
From: xiaolei li <xiaolei.li@mediatek.com>
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Date: Fri, 24 May 2019 16:18:11 +0800
In-Reply-To: <5052ea548ce89c1a588236d00319960b@milecki.pl>
References: <20190507092020.1917-1-xiaolei.li@mediatek.com>
 <20190507092020.1917-2-xiaolei.li@mediatek.com>
 <CAK8P3a3d-2U=hpb0P0+W-eZ0cviwKVwy6dWvHbhBCgF4CJUWKA@mail.gmail.com>
 <5052ea548ce89c1a588236d00319960b@milecki.pl>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_011827_439674_BE348E65 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Daniel
 Thompson <daniel.thompson@linaro.org>, Ryder Lee <ryder.lee@mediatek.com>,
 srv_heupstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Richard Weinberger <richard@nod.at>, Miquel Raynal <miquel.raynal@bootlin.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, jorge.ramirez-ortiz@linaro.org,
 yingjoe.chen@mediatek.com, boris.brezillon@collabora.com,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Wei Yongjun <weiyongjun1@huawei.com>, yellowriver2010@hotmail.com,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 rogercc.lin@mediatek.com, Dan Carpenter <dan.carpenter@oracle.com>,
 peterpandong@micron.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgQWxsLAoKVGhhbmtzIHZlcnkgbXVjaCBmb3IgeW91ciByZXNwb25zZSEKSSB3aWxsIHNlbmQg
YSBmb3JtYWwgcGF0Y2ggc29vbi4KClRoYW5rcywKWGlhb2xlaQoKT24gRnJpLCAyMDE5LTA1LTI0
IGF0IDA5OjU1ICswMjAwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gT24gMjAxOS0wNS0yNCAw
OTo1MiwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDcsIDIwMTkgYXQgMTE6
MjAgQU0gWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+IAo+ID4gd3JvdGU6Cj4g
Pj4gCj4gPj4gSXQgaXMgd2FudGVkIHRvIHVzZSBNVEsgTkFORCBkcml2ZXIgd2l0aCBHUEwtMi4w
IG9yIE1JVCBsaWNlbnNlLgo+ID4+IEJ1dCBub3cgaXQgaXMgb25seSBsaWNlbnNlZCBhcyBHUEwt
Mi4wLgo+ID4+IFNvIHJlLWxpY2Vuc2UgaXQgYXMgZHVhbCBNSVQvR1BMIGFuZCByZXBsYWNlIGxp
Y2Vuc2UgdGV4dCB3aXRoCj4gPj4gU1BEWCB0YWcuCj4gPj4gCj4gPj4gU2lnbmVkLW9mZi1ieTog
WGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+Cj4gPj4gQWNrZWQtYnk6IEpvcmdl
IFJhbWlyZXotT3J0aXogPGpvcmdlLnJhbWlyZXotb3J0aXpAbGluYXJvLm9yZz4KPiA+PiBBY2tl
ZC1ieTogUnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgo+ID4+IEFja2VkLWJ5OiBS
YWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gPj4gQWNrZWQtYnk6IE1pcXVlbCBS
YXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gPj4gQWNrZWQtYnk6IEJvcmlzIEJy
ZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gPj4gQWNrZWQtYnk6IFJv
Z2VyQ0MgTGluIDxyb2dlcmNjLmxpbkBtZWRpYXRlay5jb20+Cj4gPiAKPiA+IEFja2VkLWJ5OiBB
cm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+ID4gCj4gPiBTb3JyeSBmb3IgbWlzc2luZyB0
aGlzIGVhcmxpZXIuCj4gCj4gVGhhbmsgeW91IQo+IAo+IFhpYW9sZWk6IHBsZWFzZSByZXNlbmQg
dGhpcyBwYXRjaCB3aXRob3V0IFJGQyBpbiBhIHN1YmplY3QuIEkgYmVsaWV2ZSBpdAo+IGNhbiBi
ZSBhcHBsaWVkL3B1c2hlZCBub3cuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRl
a0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
