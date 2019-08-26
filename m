Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F009CA5F
	for <lists+linux-mediatek@lfdr.de>; Mon, 26 Aug 2019 09:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YkEmISU+FaK+4OSjr7m0Ey+wSQxnCNw6IEkNQDkv4u8=; b=rgH0R7vqSnU0ChJBevUbhyiRC
	tuJopCcrfcvYWyNeUVWvW+EbD4SzCXv2gU/Zq2Ldg7F3mvopsy3cGU5waFTMCcbuMli/Hu4BWR9d5
	GfZO/qX9q6R+cmviVdZM4XB9w9Xv5qM4VAfXHqlCSCuyci5UM99fmzsx3kP2Xp5KgN6gfe97qNsNG
	8uqKgUBArhbCoQdNOA64e5dpnsFZeDZ17Jovh+Tf+jZce59NXtoANSJSyf1mQsyAtTTvI6WMDl5dJ
	fUXCrBz0SNDwFA7jYBKbu6SeePRDAoiKYzrCRr9LQsBpBNe3RQtvVp1UYHZhEJ/3YvHr48D2qn3Jl
	LxXGcdrrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29R5-0003Ov-Np; Mon, 26 Aug 2019 07:29:07 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29PO-0001za-KL; Mon, 26 Aug 2019 07:27:25 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 56E3EA123B;
 Mon, 26 Aug 2019 09:27:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id R5uA447_3WZi; Mon, 26 Aug 2019 09:27:11 +0200 (CEST)
Subject: Re: [PATCH v2 -next] net: mediatek: remove set but not used variable
 'status'
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 Mao Wenan <maowenan@huawei.com>
References: <20190824.142158.1506174328495468705.davem@davemloft.net>
 <20190826013118.22720-1-maowenan@huawei.com>
 <20190826071048.Horde.gwS9nzceYYiYGJLnJ6-x2hz@www.vdorst.com>
From: Stefan Roese <sr@denx.de>
Message-ID: <ce9fd217-f838-1e04-eacd-7fe9f07dc745@denx.de>
Date: Mon, 26 Aug 2019 09:27:08 +0200
MIME-Version: 1.0
In-Reply-To: <20190826071048.Horde.gwS9nzceYYiYGJLnJ6-x2hz@www.vdorst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_002722_861051_FBFA46F0 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
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
Cc: nbd@openwrt.org, nelson.chang@mediatek.com, netdev@vger.kernel.org,
 sean.wang@mediatek.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 john@phrozen.org, matthias.bgg@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkhCgpPbiAyNi4wOC4xOSAwOToxMCwgUmVuw6kgdmFuIERvcnN0IHdyb3RlOgo+IExldCdzIGFk
ZCBTdGVmYW4gdG8gdGhlIGNvbnZlcnNhdGlvbi4KPiBIZSBpcyB0aGUgYXV0aG9yIG9mIHRoaXMg
Y29tbWl0LgoKVGhhbmtzIFJlbmUuCiAgCj4gUXVvdGluZyBNYW8gV2VuYW4gPG1hb3dlbmFuQGh1
YXdlaS5jb20+Ogo+IAo+PiBGaXhlcyBnY2MgJy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGUnIHdh
cm5pbmc6Cj4+IGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmM6IElu
IGZ1bmN0aW9uIG10a19oYW5kbGVfaXJxOgo+PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRl
ay9tdGtfZXRoX3NvYy5jOjE5NTE6Njogd2FybmluZzoKPj4gdmFyaWFibGUgc3RhdHVzIHNldCBi
dXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4+Cj4+IEZpeGVzOiAyOTZj
OTEyMDc1MmIgKCJuZXQ6IGV0aGVybmV0OiBtZWRpYXRlazogQWRkIE1UNzYyOC84OCBTb0Mgc3Vw
cG9ydCIpCj4+IFNpZ25lZC1vZmYtYnk6IE1hbyBXZW5hbiA8bWFvd2VuYW5AaHVhd2VpLmNvbT4K
Pj4gLS0tCj4+ICAgdjI6IGNoYW5nZSBmb3JtYXQgb2YgJ0ZpeGVzJyB0YWcuCj4+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYyB8IDIgLS0KPj4gICAxIGZpbGUg
Y2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9t
ZWRpYXRlay9tdGtfZXRoX3NvYy5jCj4+IGluZGV4IDhkZGJiOGQuLmJiN2Q2MjMgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKPj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYwo+PiBAQCAtMTk0
OCw5ICsxOTQ4LDcgQEAgc3RhdGljIGlycXJldHVybl90IG10a19oYW5kbGVfaXJxX3R4KGludCBp
cnEsCj4+IHZvaWQgKl9ldGgpCj4+ICAgc3RhdGljIGlycXJldHVybl90IG10a19oYW5kbGVfaXJx
KGludCBpcnEsIHZvaWQgKl9ldGgpCj4+ICAgewo+PiAgIAlzdHJ1Y3QgbXRrX2V0aCAqZXRoID0g
X2V0aDsKPj4gLQl1MzIgc3RhdHVzOwo+Pgo+PiAtCXN0YXR1cyA9IG10a19yMzIoZXRoLCBNVEtf
UERNQV9JTlRfU1RBVFVTKTsKPiAKPiBIaSBTdGVmYW4sCj4gCj4gWW91IGFkZGVkIGFuIGV4dHJh
IE1US19QRE1BX0lOVF9TVEFUVVMgcmVhZCBpbiBtdGtfaGFuZGxlX2lycSgpCj4gSXMgdGhhdCBy
ZWFkIG5lY2Vzc2FyeSB0byB3b3JrIHByb3Blcmx5PwoKTm8sIGl0cyBub3QgbmVlZGVkLiBUaGlz
IHJlYWQgbXVzdCBoYXZlICJzbGlwcGVkIGluIiBmcm9tIHNvbWUgZWFybGllcgpwYXRjaCB2ZXJz
aW9ucyBhbmQgSSBmb3Jnb3QgdG8gcmVtb3ZlIGl0IGxhdGVyLiBUaGFua3MgZm9yIGNhdGNoaW5n
IGl0LgoKUmV2aWV3ZWQtYnk6IFN0ZWZhbiBSb2VzZSA8c3JAZGVueC5kZT4KClRoYW5rcywKU3Rl
ZmFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlh
dGVrCg==
