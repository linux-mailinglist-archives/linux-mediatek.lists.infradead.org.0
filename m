Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5464252672
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 10:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E/t+nXrSZG0MQA4C3vg9I25qf8KVpfBpjbmY48uWjSw=; b=q1yZHJlQhSS7TR/JI1P75Xn6f
	PMAusKXYKUVb6tpYTBKprchIosaizydfTF8oZD2Biqb45Wt5IEFRKB0teiHf7vb/3Xw5Ieg3y6j+4
	DI/2NpMbpf72xPlbSg6SPIyWWADIy8eSC27shegYC+CoLQZKwxhtnVE6Ywf7ieWiR1EqLMFycs/4n
	xFzCuCmlXBzRQAqWwUZND5BpEw8sbnJfoO26k49+OtR66m/3Y1bVldn54aKHVFHI9pFIRt1afG9ly
	NwfoYjhxCaar7PLKzz4bAcQ28oor35izIxlkyO1LBm3LttcahJN8qnUddTT6P5pTYouFHrjiGNahm
	yrAxHqrRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgkN-0001BS-Nt; Tue, 25 Jun 2019 08:24:11 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgkJ-0001Ad-IM
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 08:24:09 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 1B11C5FE8C;
 Tue, 25 Jun 2019 10:24:06 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="RJLDHEVW"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id D17F31CC905E;
 Tue, 25 Jun 2019 10:24:05 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com D17F31CC905E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561451045;
 bh=81baUAKeAgxKW4Xwojp9lsyrtNx0oeNqTdLY8KnvPZ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RJLDHEVW85CJKT+06SIAKyo0lnnjBcBY9gIzK7SYT1jcppOpNQxcLKnahAl4jHx8T
 odFOUcX3cTKBjsI7fSSgpejHZgU0p64HyWb+B5s/XrYxYOw7wJm8Rp6kMPqvnK+AHX
 UdzCcYeilIK2j1vzp/DYGJCkjgedD8tx0JVSsGFNTQIYTOKeEyuWx1nH4Gk49lkMGH
 fxFnn2z8IvHo8zoGo/QAAm7k1b8t3zZJoAHe5jqmMnkfCeOq5HXylzkdvs5mBzC23N
 RfPWfgH2wb9Y6VWycWM8jxIeK5BOgu/xuqJFxY19vuxy/1PgKbiEe9PrAOmoTHrnLV
 gVuWWnAi9BHCg==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Tue, 25 Jun 2019 08:24:05 +0000
Date: Tue, 25 Jun 2019 08:24:05 +0000
Message-ID: <20190625082405.Horde.AOfGPj5A9INWyS39F-pCQ27@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH RFC net-next 5/5] net: dsa: mt7530: Add
 mediatek,ephy-handle to isolate external phy
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-6-opensource@vdorst.com>
 <20190624215248.GC31306@lunn.ch>
In-Reply-To: <20190624215248.GC31306@lunn.ch>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_012407_889129_7BED2CBD 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: f.fainelli@gmail.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux@armlinux.org.uk, davem@davemloft.net,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, vivien.didelot@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+OgoKSGkgQW5kcmV3LAoKPj4gK3N0
YXRpYyBpbnQgbXQ3NTMwX2lzb2xhdGVfZXBoeShzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMsCj4+ICsJ
CQkgICAgICAgc3RydWN0IGRldmljZV9ub2RlICplcGh5X25vZGUpCj4+ICt7Cj4+ICsJc3RydWN0
IHBoeV9kZXZpY2UgKnBoeWRldiA9IG9mX3BoeV9maW5kX2RldmljZShlcGh5X25vZGUpOwo+PiAr
CWludCByZXQ7Cj4+ICsKPj4gKwlpZiAoIXBoeWRldikKPj4gKwkJcmV0dXJuIDA7Cj4+ICsKPj4g
KwlyZXQgPSBwaHlfbW9kaWZ5KHBoeWRldiwgTUlJX0JNQ1IsIDAsIChCTUNSX0lTT0xBVEUgfCBC
TUNSX1BET1dOKSk7Cj4KPiBnZW5waHlfc3VzcGVuZCgpIGRvZXMgd2hhdCB5b3Ugd2FudC4KCklu
IGNhc2UgbXkgZGV2aWNlIGhhcyBBVDgwMzMgUEhZIHdoaWNoIGFjdCBhcyBhIFJHTUlJLXRvLVNH
TUlJICAKY29udmVydGVyIGZvciB0aGUKU0ZQIGNhZ2UuCgpRb3V0ZSBvZiB0aGUgQVI4MDMxLzMz
IGRhdGFzaGVldDoKClRoZSBBUjgwMzMgZGV2aWNlIHN1cHBvcnRzIHRoZSBsb3cgcG93ZXIgbW9k
ZSB3aXRoIHNvZnR3YXJlIHBvd2VyLWRvd24uClRvIGVudGVyIHRoZSBzdGFuZGFyZCBJRUVFIHBv
d2VyLWRvd24gbW9kZSwgc2V0IHRoZSBiaXRbMTFdIFBPV0VSX0RPV04gb2YKQ29udHJvbCByZWdp
c3RlciAtIGNvcHBlciBwYWdlIG9yIENvbnRyb2wgcmVnaXN0ZXIg4oCUIGZpYmVyIHBhZ2UgdG8g
MS4KSW4gdGhpcyBtb2RlLCBBUjgwMzMgaWdub3JlcyBhbGwgTUFDIGludGVyZmFjZSBzaWduYWxz
IGV4Y2VwdCB0aGUgTURDL01ESU8gYW5kCmRvZXMgbm90IHJlc3BvbmQgdG8gYW55IGFjdGl2aXR5
IG9uIHRoZSBtZWRpYSBzaWRlLiBBUjgwMzMgY2Fubm90IHdha2UgIAp1cCBvbiBpdHMKb3duIGFu
ZCBpcyBvbmx5IHdha2VuIHVwIGJ5IHNldHRpbmcgdGhlIFBPV0VSX0RPV04gYml0IHRvIDAuCgoK
RG9lcyAic3RhbmRhcmQgSUVFRSBwb3dlci1kb3duIG1vZGUiIGRlc2NyaWIgdGhpcyBiZWhhdmlv
ciB0aGF0IGluIHBvd2VyLWRvd24KbW9kZSB0aGUgUkdNSUkgYXJlIGFsc28gcHV0IGluIHRyaS1z
dGF0ZT8KClJlYWRpbmcgdGhlIGRhdGFzaGVldCBkb2VzIG5vdCBnaXZlIG1lIGFueSBjbHVlcy4K
UHV0dGluZyBSR01JSSBzaWduYWxzIGluIHRyaS1zdGF0ZSBpcyBpbXBvcnRhbnQgaW4gdGhpcyBj
YXNlLgoKPgo+PiArCWlmIChyZXQpCj4+ICsJCWRldl9lcnIoZHMtPmRldiwgIkZhaWxlZCB0byBw
dXQgcGh5ICVzIGluIGlzb2xhdGlvbiBtb2RlIVxuIiwKPj4gKwkJCWVwaHlfbm9kZS0+ZnVsbF9u
YW1lKTsKPj4gKwllbHNlCj4+ICsJCWRldl9pbmZvKGRzLT5kZXYsICJQaHkgJXMgaW4gaXNvbGF0
aW9uIG1vZGUhXG4iLAo+PiArCQkJIGVwaHlfbm9kZS0+ZnVsbF9uYW1lKTsKPgo+IE5vIG5lZWQg
dG8gY2xvZyB1cCB0aGUgc3lzdGVtIHdpdGggeWV0IG1vcmUga2VybmVsIG1lc3NhZ2VzLgoKT0ss
IEkgcmVtb3ZlIGl0LgoKPgo+ICAgIEFuZHJldwoKR3JlYXRzLAoKUmVuw6kKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1h
aWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
