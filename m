Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22F949F8D
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 13:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zn1fizuAlmGG6m793wR4GHVGVWjc5FpbMZMAcxXGaz8=; b=MiuRLTwcCFtTc68FG4TtxjsBu
	vY9xIbHd+uhCG2Ux6lmTjjoVlt9udDgHZZqhsLJuwNoHzoUdl4Z7Hh8/3soO8WiTwU+pdC97YxFVc
	iMZ3LYLgYUhPjXH7fuqsD7zGAFn8YTeXBuBTyniXaCW0tCrJCWU5j9WsRNVOKacj9XTuTKs8r/Z0q
	AWXsa2fzh4TNFKVc+LHj6qaUipay1JFvHsl2M3R0Fg2Cf1DuivJrCUAi2nGUNv6HUoH7NukZkwX5l
	qIe7JzDq75jvDy/Xyna5i2T7FSAj0Nsu5RJE7qNNl15bwBdVUu/x4dx1sgmjvJwMrQMzhfpfzcfUg
	lBVXGgItQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCZn-0000bZ-Kn; Tue, 18 Jun 2019 11:46:59 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCZj-0000b1-V5
 for linux-mediatek@lists.infradead.org; Tue, 18 Jun 2019 11:46:58 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id CE1E66053E;
 Tue, 18 Jun 2019 13:46:53 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="ka372HMW"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id A24A91C8AAF3;
 Tue, 18 Jun 2019 13:46:53 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com A24A91C8AAF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1560858413;
 bh=aXEy13LVmystdFScKdG2+jJ7/Q4WXzV3sCnx/eqveIQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ka372HMWQEGJxoSoPn0qqxx8XKULCl2pdxngnU9O3/4A5fnltxIEWot3m4CFc3vHW
 Y4xjip4YPiTnvQ44f2TI09R+SJEBsw3CwQoS5wYK6zzJZ/FHwcKEKebP8va+r6hgmD
 J2aMD8BY5+9+NWDJnCxivTUFvM2j5bAJmuOL+WPukF8PoBeUJixqpoYAEbcdC31JUw
 XhiKBW8J1ZXijeavprcWleMrGe2quQuJzR6r7gZAs81wlBK9Iu6FWK06qAAxnDKkG7
 v5jnpw+EmRthreXV4x9RbcB4ruERJJ/TiAQ2uRTMqYy7ND7rsNHS5n9FLaQ5MqWyT8
 PooktwIq9BPoQ==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Tue, 18 Jun 2019 11:46:53 +0000
Date: Tue, 18 Jun 2019 11:46:53 +0000
Message-ID: <20190618114653.Horde._ZDbcd1ZKyg5vfM1JnmQJZb@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH net-next 0/2] net: mediatek: Add MT7621 TRGMII mode support
References: <20190616182010.18778-1-opensource@vdorst.com>
 <20190617140223.GC25211@lunn.ch>
 <20190617213312.Horde.fcb9-g80Zzfd-IMC8EQy50h@www.vdorst.com>
 <20190617214428.GO17551@lunn.ch>
 <20190617232004.Horde.mAVymZdeb9Jjf29W2PeOggU@www.vdorst.com>
 <20190618015309.GA18088@lunn.ch>
 <7f2fc770-1787-72f8-b91d-e2b12e74d39e@gmail.com>
In-Reply-To: <7f2fc770-1787-72f8-b91d-e2b12e74d39e@gmail.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_044656_418934_432ABCAF 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, linux-mediatek@lists.infradead.org,
 john@phrozen.org, Matthias Brugger <matthias.bgg@gmail.com>, "David
 S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT46CgpIaSBBbmRy
ZXcgYW5kIEZsb3JpYW4sCgo+IE9uIDYvMTcvMjAxOSA2OjUzIFBNLCBBbmRyZXcgTHVubiB3cm90
ZToKPj4+IEJ5IGFkZGluZyBzb21lIGV4dHJhIHNwZWVkIHN0YXRlcyBpbiB0aGUgY29kZSBpdCBz
ZWVtcyB0byB3b3JrLgo+Pj4KPj4+ICsgICAgICAgICAgICAgICBpZiAoc3RhdGUtPnNwZWVkID09
IDEyMDApCj4+PiArICAgICAgICAgICAgICAgICAgICAgICBtY3IgfD0gUE1DUl9GT1JDRV9TUEVF
RF8xMDAwOwo+Pgo+PiBIaSBSZW7DqQo+Pgo+PiBJcyBUUkdNSUkgYWx3YXlzIDEuMkc/IE9yIGNh
biB5b3Ugc2V0IGl0IHRvIDEwMDAgb3IgMTIwMD8KCkluIGNhc2Ugb2YgdGhlIE1UNzYyMSBTT0Mg
eWVzLCBhY2NvcmRpbmcgdG8gdGhlIFNES3MgdGhlIE1UNzYyMyBoYXMgMiBvcHRpb25zCjJHQml0
IGFuZCAyLjZHYml0LiBUaGUgY3VycmVudCBtdDc1MzAgZHJpdmVyIG9ubHkgc2V0IFRSR01JSSBz
cGVlZCBhdCAyR2JpdC4KCj4+IFRoaXMgUE1DUl9GT1JDRV9TUEVFRF8xMDAwIGZlZWxzIHdyb25n
Lgo+Cj4gSXQgaXMgbm90IHVuY29tbW9uIHRvIGhhdmUgdG8gImZvcmNlIiAxRyB0byBnZXQgYSBo
aWdoZXIgc3BlZWQsIHRoZXJlIGlzCj4gc29tZXRoaW5nIHNpbWlsYXIgd2l0aCBCNTMgc3dpdGNo
ZXMgY29uZmlndXJpbmcgdGhlIENQVSBwb3J0cyBhdCAyR0Ivc2VjCj4gKHByb3ByaWV0YXJ5IHRv
byBhbmQgbm90IHN0YW5kYXJkaXplZCBlaXRoZXIpLgoKT24gdGhlIFNPQyBNQUMgc2lkZSBpdCBp
cyBiYXNpY2x5IG9ubHkgYSBNQUMgY2xvY2sgY2hhbmdlLgpNQUMgY29udHJvbCByZWdpc3RlcnMg
c3RpbGwgbmVlZCB0byBiZSBzZXQgZm9yY2VkIDFHLgoKPgo+Pgo+Pj4+IFdlIGNvdWxkIGNvbnNp
ZGVyIGFkZGluZyAxMjAwQmFzZVQvRnVsbD8KPj4+Cj4+PiBJIGRvbid0IGhhdmUgYW55IG9waW5p
b24gYWJvdXQgdGhpcy4KPj4+IEl0IGlzIGdyZWF0IHRoYXQgaXQgc2hvd3MgbmljZWx5IGluIGV0
aHRvb2wgYnV0IEkgdGhpbmsgc3VwcG9ydGluZyBtb3JlCj4+PiBzcGVlZHMgaW4gcGh5X3NwZWVk
X3RvX3N0cigpIGlzIGVub3VnaC4KPj4+Cj4+PiBBbHNvIHlvdSBtYXkgd2FudCB0byBhZGQgb3Ro
ZXIgU09DcyB0cmdtaWkgcmFuZ2VzIHRvbzoKPj4+IC0gMTIwMEJhc2VUL0Z1bGwgZm9yIG10NzYy
MSBvbmx5Cj4+PiAtIDIwMDBCYXNlVC9GdWxsIGZvciBtdDc2MjMgYW5kIG10NzY4Mwo+Pj4gLSAy
NjAwQmFzZVQvRnVsbCBmb3IgbXQ3NjIzIG9ubHkKPj4KPj4gQXJlIHRoZXNlIHN0YW5kYXJkaXNl
ZCBpbiBhbnkgd2F5PyBPciBNVEsgcHJvcHJpZXRhcnk/ICBBbHNvLCBpcyB0aGUgVAo+PiBpbiBC
YXNlVCBjb3JyZWN0PyBUaGVzZSBzcGVlZHMgd29yayBvdmVyIGNvcHBlciBjYWJsZXM/IE9yIHNo
b3VsZCB3ZQo+PiBiZSB0YWxraW5nIGFib3V0IDEyMDBCYXNlS1g/Cj4KPiBMb29rcyBsaWtlIHRo
aXMgaXMgTVRLIHByb3ByaWV0YXJ5Ogo+Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlw
ZXJtYWlsL2xpbnV4LW1lZGlhdGVrLzIwMTYtU2VwdGVtYmVyLzAwNzA4My5odG1sCj4gaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC85MzQxMTI5Lwo+IC0tCj4gRmxvcmlhbgoKTVRL
IHByb3ByaWV0YXJ5LCBCdXQgSSB0aGluayBpdCBpcyBlcXVhbCB0b28gdGhlIFJHTUlJIGJ1dCB3
aXRoIGEgIApmYXN0ZXIgY2xvY2suCgpCdXQgZG8gd2UgbmVlZCBhICJ4eHh4QmFzZVQvRnVsbCIg
YXQgYWxsIGZvciB0aGVzZSBmaXhlZC1saW5rIGNhc2VzPwpJZiBJIGFtIGNvcnJlY3QgYSAieHh4
eEJhc2VUL0Z1bGwiIGlzIG9ubHkgbmVlZGVkIHRvIGF1dG9tYXRpY2FsbHkgc2VsZWN0IHRoZQpi
ZXN0IG9wdGlvbi4gQnV0IHdpdGggZml4ZWQtbGluayB3ZSBmb3JjZSBpdCBzbyBleHRyYSAieHh4
eEJhc2VUL0Z1bGwiIGlzIG5vdApuZWVkZWQuCgpHcmVhdHMsCgpSZW7DqQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxp
bmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
