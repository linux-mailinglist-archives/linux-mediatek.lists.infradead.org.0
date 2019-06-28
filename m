Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0880594AF
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 09:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCqWxCl0/fAOCdH0jLz2wktJcxs2oC+omcxP9VVkSTY=; b=aj6ddtiZtVzJMt
	F0QoOubwPvFLRMs+yDaPlpivHKUmQl4xINnHEaJ1kKXGlNA+mGYIsbThYY758T4GpAy3dCKPOMT9a
	E1lVBtx0kdf3U+D/cWVLcRM1zvdYNzkcBiM8re+exZYOAL542gj73uiIyF445TMJAvkqeCOn1qR0M
	NTtc4aFAgtzJJsEQk3E4JVq2grmEa+cXpVbiCWdQarRj45Ek6AsITe4/znnCKCmP2PtUyTKMp9JoL
	5lF4v7pysvMUy8QUv0914LIzlPD7Ef+egZ2o+ctrSz8t78T6Gr/E1c2YGRr823buXIxCJJExQAGB2
	ywgL5jZphQxjTA/xc+cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgl9T-0006Mb-NX; Fri, 28 Jun 2019 07:18:31 +0000
Received: from pb-smtp1.pobox.com ([64.147.108.70])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgl9P-0006M6-Ph
 for linux-mediatek@lists.infradead.org; Fri, 28 Jun 2019 07:18:29 +0000
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 9716B15B271;
 Fri, 28 Jun 2019 03:18:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; s=sasl; bh=RqYXy6/tiJNJ
 E8T+ohPnz7lg4ls=; b=FN8QofOuy53TgWJm08+iIvLzrseBMj+ub7b4uBinaYxn
 y6hTo8Tdk8JWo7ZRDjArSz3rBTrV6vZaYxtUDTjg4xIFCSwpuV07H6pcFpsrDxzY
 tbsgfbG15aaQoF2P1GBkkrz1I7+K2gwO7wNr1nzusb/TONfWD3W6XD8WIIqZgKA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; q=dns; s=sasl; b=HugLNt
 NjRsijoTY98SpqiN0xRNaJASV+0xeZmmyZqL9gvspfcd6GzA9BAGyHMNYTqGPkb9
 si4b/gcFeUe5eUaYdMI97zKkrYSs6e66Gz9zvi7ba362Hc9kpTW50TfaEfGtXEzD
 bHwsS1bnNXpEQatGfI3aSRubJy2ZFRISNptm8=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 7B56F15B270;
 Fri, 28 Jun 2019 03:18:22 -0400 (EDT)
Received: from [192.168.1.134] (unknown [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 6345615B26F;
 Fri, 28 Jun 2019 03:18:21 -0400 (EDT)
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
To: Andrew Lunn <andrew@lunn.ch>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
 <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
 <1ad9f9a5-8f39-40bd-94bb-6b700f30c4ba@pobox.com>
 <20190625190246.GA27733@lunn.ch>
 <4fc51dc4-0eec-30d7-86d1-3404819cf6fe@pobox.com>
 <20190625204148.GB27733@lunn.ch>
 <e469daa1-3e28-db9c-e29a-7f68cc676fda@pobox.com>
 <20190627192806.GQ27733@lunn.ch>
From: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <56d8024e-1e02-7ff7-abf2-261ec9cbabf7@pobox.com>
Date: Fri, 28 Jun 2019 02:16:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190627192806.GQ27733@lunn.ch>
Content-Language: en-US
X-Pobox-Relay-ID: E93712BA-9974-11E9-9809-46F8B7964D18-06139138!pb-smtp1.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_001827_996172_673FFD50 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: f.fainelli@gmail.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-mips@vger.kernel.org, davem@davemloft.net,
 =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGVsbG8gQW5kcmV3LAoKT24gNi8yNy8xOSAyOjI4IFBNLCBBbmRyZXcgTHVubiB3cm90ZToKPj4+
IExvb2tpbmcgYXQgdGhlIGRhdGEgc2hlZXQgcGFnZSwgeW91IHdhbnQgRk9SQ0VfTU9ERV9QbiBz
ZXQuIFlvdSBuZXZlcgo+Pj4gd2FudCB0aGUgTUFDIGRpcmVjdGx5IHRhbGtpbmcgdG8gdGhlIFBI
WS4gQmFkIHRoaW5ncyB3aWxsIGhhcHBlbi4KPj4gU28gd2hhdCBleGFjdGx5IGRvIHlvdSBtZWFu
IGJ5IHRoZSBNQUMgZGlyZWN0bHkgdGFsa2luZyB0byB0aGUgUEhZP8KgIERvCj4+IHlvdSBtZWFu
IHNldHRpbmcgc3BlZWQsIGR1cGxleCwgZXRjLiB2aWEgdGhlIE1BQyByZWdpc3RlcnMgaW5zdGVh
ZCBvZgo+PiB2aWEgTURJTyB0byB0aGUgTUlJIHJlZ2lzdGVycyBvZiB0aGUgUEhZPwo+IFRoZSBk
YXRhIHNoZWV0IGltcGxpZXMgdGhlIE1BQyBoYXJkd2FyZSBwZXJmb3JtcyByZWFkcyBvbiB0aGUg
UEhZIHRvCj4gZ2V0IHRoZSBzdGF0dXMsIGFuZCB0aGVuIHVzZXMgdGhhdCB0byBjb25maWd1cmUg
dGhlIE1BQy4gVGhpcyBpcyBvZnRlbgo+IGNhbGxlZCBQSFkgcG9sbGluZy4gVGhlIE1BQyBoYXJk
d2FyZSBob3dldmVyIGhhcyBubyBpZGVhIHdoYXQgdGhlIFBIWQo+IGRyaXZlciBpcyBkb2luZy4g
VGhlIE1BQyBkb2VzIG5vdCB0YWtlIHRoZSBQSFkgbXV0ZXguIFNvIHRoZSBQSFkKPiBkcml2ZXIg
bWlnaHQgYmUgZG9pbmcgc29tZXRoaW5nIGF0IHRoZSBzYW1lIHRpbWUgdGhlIE1BQyBoYXJkd2Fy
ZQo+IHBvbGxzIHRoZSBQSFksIGFuZCBpdCBnZXRzIG9kZCByZXN1bHRzLiBTb21lIFBIWXMgaGF2
ZSBtdWx0aXBsZSBwYWdlcywKPiBhbmQgZm9yIGV4YW1wbGUgcmVhZGluZyB0aGUgdGVtcGVyYXR1
cmUgc2Vuc29yIG1lYW5zIHN3YXBwaW5nCj4gcGFnZXMuIElmIHRoZSBNQUMgaGFyZHdhcmUgd2Fz
IHRvIHBvbGwgd2hpbGUgdGhlIHNlbnNvciBpcyBiZWluZyByZWFkLAo+IGl0IHdvdWxkIG5vdCBn
ZXQgdGhlIGxpbmsgc3RhdHVzLCBpdCB3b3VsZCByZWFkIHNvbWUgcmFuZG9tCj4gdGVtcGVyYXR1
cmUgcmVnaXN0ZXIuCj4KPiBTbyB5b3Ugd2FudCB0aGUgUEhZIGRyaXZlciB0byByZWFkIHRoZSBy
ZXN1bHRzIG9mIGF1dG8tbmVnIGFuZCBpdCB0aGVuCj4gdGVsbCB0aGUgTUFDIHRoZSByZXN1bHRz
LCBzbyB0aGUgTUFDIGNhbiBiZSBjb25maWd1cmVkIGNvcnJlY3RseS4KClRoYW5rIHlvdSwgdGhp
cyBpcyB2ZXJ5IGhlbHBmdWwhwqAgSSBmaW5hbGx5IHVuZGVyc3RhbmQgd2h5IHRoZXNlCnNldHRp
bmdzIGFyZSBpbiB0d28gZGlmZmVyZW50IHBsYWNlcy4gOinCoCBVbmZvcnR1bmF0ZWx5IHRoaXMg
ZHJpdmVyIChpbgpPcGVuV1JUKSBkb2VzIGEgbG90IG9mICJtYWdpYyIgZHVyaW5nIGluaXQgdG8g
cmVnaXN0ZXJzIHRoYXQgSSBkb24ndApoYXZlIGRvY3VtZW50YXRpb24gZm9yLCBidXQgSSBzZWUg
d2hlcmUgYXV0by1wb2xsaW5nIGNhbiBiZSBkaXNhYmxlZCBub3cuCgo+Pj4gVGhlbiB1c2UgRk9S
Q0VfUlhfRkNfUG4gYW5kIEZPUkNFX1RYX1BuIHRvIHJlZmxlY3QgcGh5ZGV2LT5wYXVzZSBhbmQK
Pj4+IHBoeWRldi0+YXN5bV9wYXVzZS4KPj4+Cj4+PiBUaGUgc2FtZSBpZGVhIGFwcGxpZXMgd2hl
biB1c2luZyBwaHlsaW5rLgo+Pj4KPj4+ICAgICBBbmRyZXcKPj4gWW91J3JlIGhlbHAgaXMgZ3Jl
YXRseSBhcHByZWNpYXRlZCBoZXJlLsKgIEFkbWl0dGVkbHksIEknbSBhbHNvIHRyeWluZyB0bwo+
PiBnZXQgdGhpcyB3b3JraW5nIGluIHRoZSBub3cgZGVwcmVjYXRlZCBzd2NvbmZpZyBmb3IgYSAz
LjE4IGtlcm5lbCB0aGF0J3MKPj4gaW4gcHJvZHVjdGlvbi4KPiBJJ20gbm90IHZlcnkgZmFtaWxp
YXIgd2l0aCBzd2NvbmZpZy4gSXMgdGhlcmUgc29mdHdhcmUgZHJpdmluZyB0aGUKPiBQSFk/IElm
IG5vdCwgaXQgaXMgdGhlbiBzYWZlIGZvciB0aGUgTUFDIGhhcmR3YXJlIHRvIHBvbGwgdGhlIFBI
WS4KPgo+ICAgICAgQW5kcmV3Cgpzd2NvbmZpZyBpcyBhbiBuZXRsaW5rLWJhc2VkIGludGVyZmFj
ZSB0aGUgT3BlbldSVCB0ZWFtIGRldmVsb3BlZCBmb3IKY29uZmlndXJpbmcgc3dpdGNoZXMgYmVm
b3JlIERTQSB3YXMgY29udmVydGVkIGludG8gYSB2ZW5kb3ItbmV1dHJhbAppbnRlcmZhY2UuwqAg
Tm93IHRoYXQgRFNBIGRvZXMgd2hhdCBzd2NvbmZpZyB3YXMgZGVzaWduZWQgZm9yIGl0IGhhcyBi
ZWVuCmRlcHJlY2F0ZWQsIGFsdGhvdWdoICh0byBteSBrbm93bGVkZ2UpIHdlIGRvbid0IHlldCBo
YXZlIERTQSBmb3IgYWxsCmRldmljZXMgdGhhdCBPcGVuV1JUIHN1cHBvcnRzLgoKRGFuaWVsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRp
YXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
