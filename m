Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C362922F
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 09:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jFREn1fUm3hAKMUbfFarr6Jt3ruq5pWbSPHb77B1hA=; b=TeJbD8anUgmVNA
	rl35FU0mUOYPtCzodoOSCqxAFWhX/iIS3VBLdjPGYxBagWH8OOkfEqhxlqSjEfO19XT7xnl0KI2MB
	IeRiZZVQqaapqzSN2IFf7gz6Cmw8BKjrgIQmhkiYe4MtvbNzQvZAaENfANyasdhiPetAtzxREiEFA
	vN69Ymf14mXBbShFtqQFZirlSpYv3JIo4jlVAomwkH27XQWgLJYhvqwR+1zjmqiv5q1yBa8oLOIWn
	3PAW6nSERXc6AMiROtbzWVV24xw2H8xVMmmPwXtC10H6749BvTehPLDw2O4WPVUAOZYVlN4LRyr0I
	C3iiiUYENTbK/30Le5TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU55d-00029a-Af; Fri, 24 May 2019 07:58:09 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU55Z-000298-Na; Fri, 24 May 2019 07:58:07 +0000
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x4O7vXaN012803;
 Fri, 24 May 2019 16:57:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x4O7vXaN012803
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1558684654;
 bh=iwxptEWNoNuAggIv6ZzzOgYePALjmh157JvK6O3GQ+M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KOnEtOO2tVYR3pSVhF2Roje/9zkqOoma80gDcWzCuNA5peJdqgbTJcZjMmDe7kkwP
 lvTb7eS32JVnxZ7yHo9oAVFr7pNEK0mCfOrLItt/5WmVKWQsfOMY1NKvETu4KgmZBv
 YajKYHAvvBFBUJSZiHcAU8aHQtBADEN7gO8S1X9OAJEUlAAQ4IZ04jUbTc3ZNtWCCh
 nN37B7jfKKb1NhOlQtfpyszPkRAocoVSAwm1IVJN/Ys1PWN4GqPoH5Qr11dRNnsDQd
 al5c7JYGdW5LsQZdCamORCwKLWruaymrk7I/M8eWG9zrLe5O5rygQ2gAz1ZkyoWBGV
 Tmd1E/nLhI0Hw==
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id x184so5182040vsb.5;
 Fri, 24 May 2019 00:57:33 -0700 (PDT)
X-Gm-Message-State: APjAAAVdHR5r6h2r9g/2ie4U89MqWl5aUoStaG8y3i+7PilsmTjcHvVL
 cZj3VpbuVz+u/AQ8ZQFuK/cfZOH26L74RwuQE08=
X-Google-Smtp-Source: APXvYqy9HyOTLHREY5vNW/0PnyiebTKKzFcHFlc01jbS/K6N+3usbwH5tgTtX3aXMfw8ABKVzIxuldjqWecMuKfKCbg=
X-Received: by 2002:a05:6102:3d9:: with SMTP id
 n25mr23613569vsq.181.1558684652750; 
 Fri, 24 May 2019 00:57:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190507092020.1917-1-xiaolei.li@mediatek.com>
 <20190507092020.1917-2-xiaolei.li@mediatek.com>
 <CAK8P3a3d-2U=hpb0P0+W-eZ0cviwKVwy6dWvHbhBCgF4CJUWKA@mail.gmail.com>
In-Reply-To: <CAK8P3a3d-2U=hpb0P0+W-eZ0cviwKVwy6dWvHbhBCgF4CJUWKA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 24 May 2019 16:56:56 +0900
X-Gmail-Original-Message-ID: <CAK7LNAScdEk=1P5M5JEtmjtSmGTHcBSf1M7kR5s9wGsA_dTn_A@mail.gmail.com>
Message-ID: <CAK7LNAScdEk=1P5M5JEtmjtSmGTHcBSf1M7kR5s9wGsA_dTn_A@mail.gmail.com>
Subject: Re: [RFC PATCH v4 1/1] mtd: rawnand: mtk: Re-license MTK NAND driver
 as Dual MIT/GPL
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_005805_982935_023665C9 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Ryder Lee <ryder.lee@mediatek.com>, srv_heupstream@mediatek.com,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Richard Weinberger <richard@nod.at>, Wen Yang <yellowriver2010@hotmail.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wei Yongjun <weiyongjun1@huawei.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Jorge Ramirez Ortiz <jorge.ramirez-ortiz@linaro.org>,
 Xiaolei Li <xiaolei.li@mediatek.com>, rogercc.lin@mediatek.com,
 Dan Carpenter <dan.carpenter@oracle.com>, peterpandong@micron.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMjQsIDIwMTkgYXQgNDo1MyBQTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRi
LmRlPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWF5IDcsIDIwMTkgYXQgMTE6MjAgQU0gWGlhb2xlaSBM
aSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+IHdyb3RlOgo+ID4KPiA+IEl0IGlzIHdhbnRlZCB0
byB1c2UgTVRLIE5BTkQgZHJpdmVyIHdpdGggR1BMLTIuMCBvciBNSVQgbGljZW5zZS4KPiA+IEJ1
dCBub3cgaXQgaXMgb25seSBsaWNlbnNlZCBhcyBHUEwtMi4wLgo+ID4gU28gcmUtbGljZW5zZSBp
dCBhcyBkdWFsIE1JVC9HUEwgYW5kIHJlcGxhY2UgbGljZW5zZSB0ZXh0IHdpdGgKPiA+IFNQRFgg
dGFnLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0
ZWsuY29tPgo+ID4gQWNrZWQtYnk6IEpvcmdlIFJhbWlyZXotT3J0aXogPGpvcmdlLnJhbWlyZXot
b3J0aXpAbGluYXJvLm9yZz4KPiA+IEFja2VkLWJ5OiBSeWRlciBMZWUgPHJ5ZGVyLmxlZUBtZWRp
YXRlay5jb20+Cj4gPiBBY2tlZC1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBs
Pgo+ID4gQWNrZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+
Cj4gPiBBY2tlZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3Jh
LmNvbT4KPiA+IEFja2VkLWJ5OiBSb2dlckNDIExpbiA8cm9nZXJjYy5saW5AbWVkaWF0ZWsuY29t
Pgo+Cj4gQWNrZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4KPiBTb3JyeSBm
b3IgbWlzc2luZyB0aGlzIGVhcmxpZXIuCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5n
IGxpc3QKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW10ZC8KCgpJIGZvdW5kIG15IHRpbnkgY29udHJpYnV0aW9uIGZvciBtdGRfbmFuZC5jIChmMGRi
ZTRhYTM1ZTczKS4KQW55d2F5LCBJIGRvIG5vdCBtaW5kIHRoaXMuCgpBY2tlZC1ieTogTWFzYWhp
cm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KCgoKLS0gCkJlc3QgUmVn
YXJkcwpNYXNhaGlybyBZYW1hZGEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0Bs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbWVkaWF0ZWsK
