Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC01F5FD7C
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jul 2019 21:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJ4SOqh4MuZ93FrZXUHMp8UW/am66G4FO9kYqULDt74=; b=bI8yOkVeYR9l5b
	F8zIp5sjsnalT+nK5eg3DgqslSUUFtEmOCZ+5yOSvTA8JiA38zJH4fFfCf5sr+NeucQ1e8dsceqH0
	DUBL8rfRT+HiZOuG7lKAFkcVvu0CfN9ZAYutEOXiSJ+u5YiyXR3BuF75OzER0sAYwbmyjRKlzPGOr
	StKtxxdIVYCUzBK+xO1eZPWSabqMjalxmYjrvXJNWYR7S5G3xiOfit4T/OeHYnhy41cnpdYEYiEt9
	evY8Ev1//wuLsN+EAhjYPGILFYQ/jIVKQOc5aOsOeKn86j73bELig6KoBoK7DSdWNy2aL09sqNNFm
	JFeLp999KKrHw21ojcOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj7Ya-0004pL-IM; Thu, 04 Jul 2019 19:38:12 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj7YW-0004of-UX
 for linux-mediatek@lists.infradead.org; Thu, 04 Jul 2019 19:38:10 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id CDF31144B3812;
 Thu,  4 Jul 2019 12:38:00 -0700 (PDT)
Date: Thu, 04 Jul 2019 12:38:00 -0700 (PDT)
Message-Id: <20190704.123800.788232773059713763.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH net-next v2] net: ethernet: mediatek: Fix overlapping
 capability bits.
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190703184203.20137-1-opensource@vdorst.com>
References: <20190703184203.20137-1-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 04 Jul 2019 12:38:01 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_123808_989825_5ED3F167 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, vivien.didelot@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

RnJvbTogUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+DQpEYXRlOiBXZWQs
ICAzIEp1bCAyMDE5IDIwOjQyOjA0ICswMjAwDQoNCj4gQm90aCBNVEtfVFJHTUlJX01UNzYyMV9D
TEsgYW5kIE1US19QQVRIX0JJVCBhcmUgZGVmaW5lZCBhcyBiaXQgMTAuDQo+IA0KPiBUaGlzIGNh
biBjYXVzZXMgaXNzdWVzIG9uIG5vbi1NVDc2MjEgZGV2aWNlcyB3aGljaCBoYXMgdGhlDQo+IE1U
S19QQVRIX0JJVChNVEtfRVRIX1BBVEhfR01BQzFfUkdNSUkpIGFuZCBNVEtfVFJHTUlJIGNhcGFi
aWxpdHkgc2V0Lg0KPiBUaGUgd3JvbmcgVFJHTUlJIHNldHVwIGNvZGUgY2FuIGJlIGV4ZWN1dGVk
LiBUaGUgY3VycmVudCB3cm9uZ2x5IGV4ZWN1dGVkDQo+IGNvZGUgZG9lc27igJl0IGRvIGFueSBo
YXJtIG9uIE1UNzYyMyBhbmQgdGhlIFRSR01JSSBzZXR1cCBmb3IgdGhlIE1UNzYyMw0KPiBTT0Mg
c2lkZSBpcyBkb25lIGluIE1UNzUzMCBkcml2ZXIgU28gaXQgd2FzbuKAmXQgbm90aWNlZCBpbiB0
aGUgdGVzdC4NCj4gDQo+IE1vdmUgYWxsIGNhcGFiaWxpdHkgYml0cyBpbiBvbmUgZW51bSBzbyB0
aGF0IHRoZXkgYXJlIGFsbCB1bmlxdWUgYW5kIGVhc3kNCj4gdG8gZXhwYW5kIGluIHRoZSBmdXR1
cmUuDQo+IA0KPiBCZWNhdXNlIG10a19ldGhfcGF0aCBlbnVtIGlzIG1lcmdlZCBpbiB0byBta3Rf
ZXRoX2NhcGFiaWxpdGllcywgdGhlDQo+IHZhcmlhYmxlIHBhdGggdmFsdWUgaXMgbm8gbG9uZ2Vy
IGJldHdlZW4gMCB0byBudW1iZXIgb2YgcGF0aHMsDQo+IG10a19ldGhfcGF0aF9uYW1lIGNhbuKA
mXQgYmUgdXNlZCBhbnltb3JlIGluIHRoaXMgZm9ybS4gQ29udmVydCB0aGUNCj4gbXRrX2V0aF9w
YXRoX25hbWUgYXJyYXkgdG8gYSBmdW5jdGlvbiB0byBsb29rdXAgdGhlIHBhdGhuYW1lLg0KPiAN
Cj4gVGhlIG9sZCBjb2RlIHdhbGtlZCB0aHJ1IHRoZSBtdGtfZXRoX3BhdGggZW51bSwgd2hpY2gg
aXMgYWxzbyBtZXJnZWQNCj4gd2l0aCBta3RfZXRoX2NhcGFiaWxpdGllcy4gRXhwYW5kIGFycmF5
IG10a19ldGhfbXV4YyBzbyBpdCBjYW4gc3RvcmUgdGhlDQo+IG5hbWUgYW5kIGNhcGFiaWxpdHkg
Yml0IG9mIHRoZSBtdXguIENvbnZlcnQgdGhlIGNvZGUgc28gaXQgY2FuIHdhbGsgdGhydQ0KPiB0
aGUgbXRrX2V0aF9tdXhjIGFycmF5Lg0KPiANCj4gRml4ZXM6IDhlZmFhNjUzYThhNSAoIm5ldDog
ZXRoZXJuZXQ6IG1lZGlhdGVrOiBBZGQgTVQ3NjIxIFRSR01JSSBtb2RlDQo+IHN1cHBvcnQiKQ0K
DQpQbGVhc2UgaW4gdGhlIGZ1dHVyZSBkbyBub3Qgc3BsaXQgRml4ZXM6IHRhZ3Mgb250byBtdXRs
aXBsZSBsaW5lcywgaXQNCm11c3QgYmUgb25lIGNvbnRpZ3VvdXMgbGluZSBubyBtYXR0ZXIgaG93
IGxvbmcuICBJIGZpeGVkIGl0IHVwIHRoaXMNCnRpbWUuDQoNCj4gU2lnbmVkLW9mZi1ieTogUmVu
w6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+DQoNCkFwcGxpZWQsIHRoYW5rIHlv
dS4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0
ZWsK
