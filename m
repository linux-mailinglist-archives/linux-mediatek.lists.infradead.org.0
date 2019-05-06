Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AF61510D
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 May 2019 18:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vv8VUr22xzOeeBUnBqHbjoVn5G4xnUB2H1gcfLppC0I=; b=VS6JayFvHVE4wr
	ycvA0aBpHkzpaFh9uVR7QEiFL4g/cBPEhT43BmvdVQAsuePD646+y5H7c2SK/dXbDS3DwwCcTQWdK
	cL5H5n93ygJccx0Ja5dSz0bMmer9TRPcTbQZiLOa2/5HyPblVnCVoYz/04iaCO7plZVJM1Ej+AaqK
	kYVeKuDtHOfwLQxMim4zExDfuB3+5owuJgyR01rJ9SxPKAcbVGjHEVZyb31iRmLPM9ZPXErAQDn2/
	c4d6rgypibBsxhviS3mYfmflxGdzlpCFaz7+sOmnDjYCBn3W1PABG2znHoXNp/42SdXaFWo6ipQDe
	Q1310GhpOHlUBbKaMHTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgKw-0000Fk-Oo; Mon, 06 May 2019 16:19:30 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgKn-00009k-67; Mon, 06 May 2019 16:19:22 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 77C1B490E;
 Mon,  6 May 2019 18:19:18 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c0e8cd04;
 Mon, 6 May 2019 18:19:17 +0200 (CEST)
Date: Mon, 6 May 2019 18:19:17 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH v4 00/10] of_net: Add NVMEM support to of_get_mac_address
Message-ID: <20190506161917.GH81826@meh.true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
 <20190505.214727.1839442238121977055.davem@davemloft.net>
 <20190506083207.GG81826@meh.true.cz>
 <20190506164132.10342ef6@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506164132.10342ef6@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_091921_378530_F0546C1D 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, devicetree@vger.kernel.org,
 maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 srinivas.kandagatla@linaro.org, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, frowand.list@gmail.com,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

TWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiBbMjAxOS0w
NS0wNiAxNjo0MTozMl06CgpIaSBNYXhpbWUsCgo+IE9uIE1vbiwgNiBNYXkgMjAxOSAxMDozMjow
NyArMDIwMAo+IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+IAo+ID5EYXZp
ZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+IFsyMDE5LTA1LTA1IDIxOjQ3OjI3XToKPiA+
Cj4gPkhpIERhdmlkLAo+ID4KPiA+PiBTZXJpZXMgYXBwbGllZCwgdGhhbmsgeW91LiAgCj4gPgo+
ID5JIGRpZCBwcm9iYWJseSBzb21ldGhpbmcgdGVycmlibHkgd3JvbmcsIGJ1dCBwYXRjaCAiW1BB
VENIIHY0IDA1LzEwXSBuZXQ6Cj4gPmV0aGVybmV0OiBzdXBwb3J0IG9mX2dldF9tYWNfYWRkcmVz
cyBuZXcgRVJSX1BUUiBlcnJvciIgaGFzIG5vdCByZWFjaGVkIHRoZQo+ID5wYXRjaHdvcmssIGJ1
dCBJJ20gc3VyZSwgdGhhdCBpdCB3YXMgc2VudCBvdXQgYXMgSGF1a2UgTWVocnRlbnMgKG1haW50
YWluZXIKPiA+Zm9yIGV0aGVybmV0L2xhbnRpcV94cngyMDAuYykgaGFzIGNvbmZpcm1lZCB0byBt
ZSBvbiBJUkMsIHRoYXQgaGUgaGFzIHJlY2VpdmVkCj4gPml0Lgo+IAo+IEl0IHNlZW1zIGluZGVl
ZCB0aGF0IHRoZSA1dGggcGF0Y2ggaGFzbid0IGJlZWQgYXBwbGllZCwgd2hpY2ggZWZmZWN0aXZl
bHkKPiBicmVha3MgbXZuZXRhIG9uIG5ldC1uZXh0LCBhbmQgSSBndWVzcyBhIGxvdCBvZiBvdGhl
ciBkcml2ZXJzIHRoYXQgcmVseQo+IG9uIGhhbmRsaW5nIHRoZSBuZXcgcmV0dXJuIHZhbHVlcy4K
ClllcCwgc29ycnkgZm9yIHRoYXQuCgo+IEkgc2F3IHlvdSBzZW50IGEgZm9sbG93dXAgc2VyaWVz
IGZpeGluZyB0aGF0LCBidXQgb25seSBwYXRjaCAyLzMKPiBzaG93cy11cCBvbiBuZXRkZXYsIHNv
IHlvdSBtaWdodCBiZSBmYWNpbmcgYSBzaW1pbGFyIGlzc3VlIGhlcmUuCgpJbmRlZWQsIHNlZW1z
IGxpa2UgcGF0Y2h3b3JrIGhpY2N1cCB3aXRoIGEgbG9uZyBsaXN0IG9mIHJlY2VwaWVudHMgaW4g
dGhlClRvL0NjIGhlYWRlcnMsIHNvIEkndmUganVzdCByZXNlbmQgaXQgYWdhaW4gd2l0aCBvbmx5
IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKaW4gdGhlIFRvOiBoZWFkZXIgYW5kIGl0IHdhcyBoYXBw
aWx5IHBpY2tlZCB1cFsxXS4KCjEuIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVj
dC9uZXRkZXYvbGlzdC8/c2VyaWVzPTEwNjM2OQoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlz
dApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
