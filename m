Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE908CF68
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 11:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yHbFwGKc3EtnJxiEShl+/7fGc0gEV25hB1/pnk9WpGI=; b=FLkgBhzbR0a8TtaxoDKDOvf5L
	+KZvELt9hIa25dNfKYU0or7XvD6GOt1yPR2g1cRDF+xq0/Q0tsLezG3Usm6urInFnTN/aULDrc7y0
	8IGQgTCmcJCWcrhxcs0Q6pI47Y7hhdS6Yxw49e6IZNyfz0hv3Ow6oLrjXTCZl2jILtNwlMHZxe67X
	5aaw6JnXI+Q97cf2Hm3t7vZ6MV8A8WzKayAybUm8QOcUBEykaioJlubrWk44X969BhU7LkshIQIlC
	JHY11yOfJKnv1KZuI3DiV6Qdi2J1gmZQNzftk1lntkhHlmKssGwECeTfEOIkSGjkMb00RxZ7bsD49
	7fsGqAswA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpYA-0002JE-Oq; Wed, 14 Aug 2019 09:26:35 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpY1-0002IA-JQ
 for linux-mediatek@lists.infradead.org; Wed, 14 Aug 2019 09:26:29 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 30B115FA49;
 Wed, 14 Aug 2019 11:26:22 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="FCW1o57/"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id F3C5A1D6F475;
 Wed, 14 Aug 2019 11:26:21 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com F3C5A1D6F475
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1565774782;
 bh=3q426un0gISmLfXN0uWMxNzgRrhcurIB/xDHYXFpo4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FCW1o57/r09K2Ap/lcGfI0LnufPMC1XNE4Yl9DFVJ8gGILsIjk5yXEiHf7n8wrqRB
 sEXM+q1zopHa7IZc3iK3CrYZC6Tfwc4ZsYxNwVbVPHRX5xj009mjI2GpQ8BJvswbDG
 8Ru5t2fNaxKN4BSY+CpcRPL+bm7MD6WfRIs8izFoYgVk23ZiFmjwj0agLmtLA4Na+c
 WFtZpEJRR7BZeTo1QkoBxCOWRQUWo5wcbjlcWSGpklcYGHmW1LgZs+XbEQk8NhHgXq
 Lpzlf9Jgd6cutlQfgVLO3twOFqUC7T6k0ABvgDXUYHm1bqu5szoFpxEsdi4m6Il8Ik
 8uvR+4eSDzzSg==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Wed, 14 Aug 2019 09:26:21 +0000
Date: Wed, 14 Aug 2019 09:26:21 +0000
Message-ID: <20190814092621.Horde.epvj8zK96-aCiV70YB5Q7II@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Stefan Roese <sr@denx.de>
Subject: Re: [PATCH] net: ethernet: mediatek: Add MT7628/88 SoC support
References: <20190717125345.Horde.JcDE_nBChPFDDjEgIRfPSl3@www.vdorst.com>
 <a92d7207-80b2-e88d-d869-64c9758ef1da@denx.de>
In-Reply-To: <a92d7207-80b2-e88d-d869-64c9758ef1da@denx.de>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_022626_054892_B34566A9 
X-CRM114-Status: GOOD (  16.49  )
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
Cc: Felix Fietkau <nbd@openwrt.org>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Daniel Golle <daniel@makrotopia.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgU3RlZmFuLAoKUXVvdGluZyBTdGVmYW4gUm9lc2UgPHNyQGRlbnguZGU+OgoKPiBIaSBSZW5l
LAo+Cj4gT24gMTcuMDcuMTkgMTQ6NTMsIFJlbsOpIHZhbiBEb3JzdCB3cm90ZToKPgo+IDxzbmlw
Pgo+Cj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5o
Cj4+PiBAQCAtMzksNyArMzksOCBAQAo+Pj4gIAkJCQkgTkVUSUZfRl9TRyB8IE5FVElGX0ZfVFNP
IHwgXAo+Pj4gIAkJCQkgTkVUSUZfRl9UU082IHwgXAo+Pj4gIAkJCQkgTkVUSUZfRl9JUFY2X0NT
VU0pCj4+PiAtI2RlZmluZSBORVhUX1JYX0RFU1BfSURYKFgsIFkpCSgoKFgpICsgMSkgJiAoKFkp
IC0gMSkpCj4+PiArI2RlZmluZSBNVEtfSFdfRkVBVFVSRVNfTVQ3NjI4CShORVRJRl9GX1NHIHwg
TkVUSUZfRl9SWENTVU0pCj4+PiArI2RlZmluZSBORVhUX0RFU1BfSURYKFgsIFkpCSgoKFgpICsg
MSkgJiAoKFkpIC0gMSkpCj4+Pgo+Pj4gICNkZWZpbmUgTVRLX01BWF9SWF9SSU5HX05VTQk0Cj4+
PiAgI2RlZmluZSBNVEtfSFdfTFJPX0RNQV9TSVpFCTgKPj4+IEBAIC0xMTgsNiArMTE5LDcgQEAK
Pj4+ICAvKiBQRE1BIEdsb2JhbCBDb25maWd1cmF0aW9uIFJlZ2lzdGVyICovCj4+PiAgI2RlZmlu
ZSBNVEtfUERNQV9HTE9fQ0ZHCTB4YTA0Cj4+PiAgI2RlZmluZSBNVEtfTVVMVElfRU4JCUJJVCgx
MCkKPj4+ICsjZGVmaW5lIE1US19QRE1BX1NJWkVfOERXT1JEUwkoMSA8PCA0KQo+Pj4KPj4+ICAv
KiBQRE1BIFJlc2V0IEluZGV4IFJlZ2lzdGVyICovCj4+PiAgI2RlZmluZSBNVEtfUERNQV9SU1Rf
SURYCTB4YTA4Cj4+PiBAQCAtMjc2LDExICsyNzgsMTggQEAKPj4+ICAjZGVmaW5lIFRYX0RNQV9P
V05FUl9DUFUJQklUKDMxKQo+Pj4gICNkZWZpbmUgVFhfRE1BX0xTMAkJQklUKDMwKQo+Pj4gICNk
ZWZpbmUgVFhfRE1BX1BMRU4wKF94KQkoKChfeCkgJiBNVEtfVFhfRE1BX0JVRl9MRU4pIDw8IDE2
KQo+Pj4gKyNkZWZpbmUgVFhfRE1BX1BMRU4xKF94KQkoKF94KSAmIE1US19UWF9ETUFfQlVGX0xF
TikKPj4+ICAjZGVmaW5lIFRYX0RNQV9TV0MJCUJJVCgxNCkKPj4+ICAjZGVmaW5lIFRYX0RNQV9T
REwoX3gpCQkoKChfeCkgJiAweDNmZmYpIDw8IDE2KQo+Pj4KPj4+ICsvKiBQRE1BIG9uIE1UNzYy
OCAqLwo+Pj4gKyNkZWZpbmUgVFhfRE1BX0RPTkUJCUJJVCgzMSkKPj4+ICsjZGVmaW5lIFRYX0RN
QV9MUzEJCUJJVCgxNCkKPj4+ICsjZGVmaW5lIFRYX0RNQV9ERVNQMl9ERUYJKFRYX0RNQV9MUzAg
fCBUWF9ETUFfRE9ORSkKPj4+ICsKPj4+ICAvKiBRRE1BIGRlc2NyaXB0b3IgcnhkMiAqLwo+Pj4g
ICNkZWZpbmUgUlhfRE1BX0RPTkUJCUJJVCgzMSkKPj4+ICsjZGVmaW5lIFJYX0RNQV9MU08JCUJJ
VCgzMCkKPj4+ICAjZGVmaW5lIFJYX0RNQV9QTEVOMChfeCkJKCgoX3gpICYgMHgzZmZmKSA8PCAx
NikKPj4+ICAjZGVmaW5lIFJYX0RNQV9HRVRfUExFTjAoX3gpCSgoKF94KSA+PiAxNikgJiAweDNm
ZmYpCj4+Pgo+Pj4gQEAgLTI4OSw2ICsyOTgsNyBAQAo+Pj4KPj4+ICAvKiBRRE1BIGRlc2NyaXB0
b3IgcnhkNCAqLwo+Pj4gICNkZWZpbmUgUlhfRE1BX0w0X1ZBTElECQlCSVQoMjQpCj4+PiArI2Rl
ZmluZSBSWF9ETUFfTDRfVkFMSURfUERNQQlCSVQoMzApCQkvKiB3aGVuIFBETUEgaXMgdXNlZCAq
Lwo+Pj4gICNkZWZpbmUgUlhfRE1BX0ZQT1JUX1NISUZUCTE5Cj4+PiAgI2RlZmluZSBSWF9ETUFf
RlBPUlRfTUFTSwkweDcKPj4+Cj4+PiBAQCAtNDEyLDYgKzQyMiwxOSBAQAo+Pj4gICNkZWZpbmUg
Q09fUVBIWV9TRUwgICAgICAgICAgICBCSVQoMCkKPj4+ICAjZGVmaW5lIEdFUEhZX01BQ19TRUwg
ICAgICAgICAgQklUKDEpCj4+Pgo+Pj4gKy8qIE1UNzYyOC84OCBzcGVjaWZpYyBzdHVmZiAqLwo+
Pj4gKyNkZWZpbmUgTVQ3NjI4X1BETUFfT0ZGU0VUCTB4MDgwMAo+Pj4gKyNkZWZpbmUgTVQ3NjI4
X1NETV9PRkZTRVQJMHgwYzAwCj4+PiArCj4+PiArI2RlZmluZSBNVDc2MjhfVFhfQkFTRV9QVFIw
CShNVDc2MjhfUERNQV9PRkZTRVQgKyAweDAwKQo+Pj4gKyNkZWZpbmUgTVQ3NjI4X1RYX01BWF9D
TlQwCShNVDc2MjhfUERNQV9PRkZTRVQgKyAweDA0KQo+Pj4gKyNkZWZpbmUgTVQ3NjI4X1RYX0NU
WF9JRFgwCShNVDc2MjhfUERNQV9PRkZTRVQgKyAweDA4KQo+Pj4gKyNkZWZpbmUgTVQ3NjI4X1RY
X0RUWF9JRFgwCShNVDc2MjhfUERNQV9PRkZTRVQgKyAweDBjKQo+Pj4gKyNkZWZpbmUgTVQ3NjI4
X1BTVF9EVFhfSURYMAlCSVQoMCkKPj4+ICsKPj4+ICsjZGVmaW5lIE1UNzYyOF9TRE1fTUFDX0FE
UkwJKE1UNzYyOF9TRE1fT0ZGU0VUICsgMHgwYykKPj4+ICsjZGVmaW5lIE1UNzYyOF9TRE1fTUFD
X0FEUkgJKE1UNzYyOF9TRE1fT0ZGU0VUICsgMHgxMCkKPj4+ICsKPj4+ICBzdHJ1Y3QgbXRrX3J4
X2RtYSB7Cj4+PiAgCXVuc2lnbmVkIGludCByeGQxOwo+Pj4gIAl1bnNpZ25lZCBpbnQgcnhkMjsK
Pj4+IEBAIC01MDksNiArNTMyLDcgQEAgZW51bSBtdGtfY2xrc19tYXAgewo+Pj4gIAkJCQkgQklU
KE1US19DTEtfU0dNSUlfQ0spIHwgXAo+Pj4gIAkJCQkgQklUKE1US19DTEtfRVRIMlBMTCkpCj4+
PiAgI2RlZmluZSBNVDc2MjFfQ0xLU19CSVRNQVAJKDApCj4+PiArI2RlZmluZSBNVDc2MjhfQ0xL
U19CSVRNQVAJKDApCj4+PiAgI2RlZmluZSBNVDc2MjlfQ0xLU19CSVRNQVAJKEJJVChNVEtfQ0xL
X0VUSElGKSB8IEJJVChNVEtfQ0xLX0VTVykgfCAgXAo+Pj4gIAkJCQkgQklUKE1US19DTEtfR1Aw
KSB8IEJJVChNVEtfQ0xLX0dQMSkgfCBcCj4+PiAgCQkJCSBCSVQoTVRLX0NMS19HUDIpIHwgQklU
KE1US19DTEtfRkUpIHwgXAo+Pj4gQEAgLTU2Myw2ICs1ODcsMTAgQEAgc3RydWN0IG10a190eF9y
aW5nIHsKPj4+ICAJc3RydWN0IG10a190eF9kbWEgKmxhc3RfZnJlZTsKPj4+ICAJdTE2IHRocmVz
aDsKPj4+ICAJYXRvbWljX3QgZnJlZV9jb3VudDsKPj4+ICsJaW50IGRtYV9zaXplOwo+Pj4gKwlz
dHJ1Y3QgbXRrX3R4X2RtYSAqZG1hX3BkbWE7CS8qIEZvciBNVDc2MjgvODggUERNQSBoYW5kbGlu
ZyAqLwo+Pj4gKwlkbWFfYWRkcl90IHBoeXNfcGRtYTsKPj4+ICsJaW50IGNwdV9pZHg7Cj4+PiAg
fTsKPj4+Cj4+PiAgLyogUERNQSByeCByaW5nIG1vZGUgKi8KPj4+IEBAIC02MDQsNiArNjMyLDcg
QEAgZW51bSBta3RfZXRoX2NhcGFiaWxpdGllcyB7Cj4+PiAgCU1US19IV0xST19CSVQsCj4+PiAg
CU1US19TSEFSRURfSU5UX0JJVCwKPj4+ICAJTVRLX1RSR01JSV9NVDc2MjFfQ0xLX0JJVCwKPj4+
ICsJTVRLX1NPQ19NVDc2MjgsCj4+Cj4+IFRoaXMgc2hvdWxkIGJlIE1US19TT0NfTVQ3NjI4X0JJ
VCwgdGhpcyBvbmx5IGRlZmluZXMgdGhlIGJpdCBudW1iZXIhCj4+Cj4+IGFuZCBmdXRoZXIgb24g
I2RlZmluZSBNVEtfU09DX01UNzYyOCBCSVQoTVRLX1NPQ19NVDc2MjhfQklUKQo+Cj4gT2theSwg
dGhhbmtzLgo+Cj4+IEJhc2VkIG9uIHRoaXMgY29tbWl0IFswXSwgTVQ3NjIxIGFsc28gbmVlZHMg
dGhlIFBETUEgZm9yIHRoZSBSWCBwYXRoLgo+PiBJIGtub3cgdGhhdCBpcyBub3QgeW91ciBpc3N1
ZSBidXQgSSB0aGluayBpdCBpcyBiZXR0ZXIgdG8gYWRkIGEgZXh0cmEKPj4gY2FwYWJpbGl0eSBi
aXQgZm9yIHRoZSBQRE1BIGJpdHMgc28gaXQgY2FuIGFsc28gYmUgdXNlZCBvbiBvdGhlciBzb2Nz
Lgo+Cj4gWWVzLCBNVDc2MjEgYWxzbyB1c2VzIFBETUEgZm9yIFJYLiBUaGUgY29kZSBmb3IgUlgg
aXMgcHJldHR5IG11Y2gKPiBzaGFyZWQgKHJlLXVzZWQpLCB3aXRoIHNsaWdodCBjaGFuZ2VzIGZv
ciB0aGUgTVQ3NjI4Lzg4IHRvIHdvcmsKPiBjb3JyZWN0bHkgb24gdGhpcyBTb0MuCj4KPiBJJ2xs
IHdvcmsgb24gYSBjYXBhYmlsaXR5IGJpdCBmb3IgUERNQSB2cyBRRE1BIG9uIFRYIHRob3VnaC4g
VGhpcwo+IG1pZ2h0IG1ha2UgdGhpbmdzIGEgbGl0dGxlIG1vcmUgdHJhbnNwYXJlbnQuCgpHcmVh
dCwgVGhhbmtzIGZvciBhZGRyZXNzaW5nIHRoaXMgaXNzdWUuCgpJIGhvcGUgd2UgY2FuIGNvbGxh
Ym9yYXRlIHRvIGFsc28gc3VwcG9ydCBtdDc2eDggaW4gbXkgUEhZTElOSyBwYXRjaGVzIFswXVsx
XS4KSSBhbSBjbG9zZSB0byBwb3N0aW5nIFYyIG9mIHRoZSBwYXRjaGVzIGJ1dCBJIGFtIGN1cnJl
bnRseSB3YWl0aW5nIG9uIHNvbWUKZmliZXIgbW9kdWxlcyB0byB0ZXN0IHRoZSBjaGFuZ2VzIGJl
dHRlci4KCkdyZWF0cywKClJlbsOpCgpbMF0gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9w
YXRjaC8xMTM2NTUxLwpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMTM2
NTE5LwoKPgo+PiBHcmVhdHMsCj4+Cj4+IFJlbsOpCj4+Cj4+IFswXSBodHRwczovL2xrbWwub3Jn
L2xrbWwvMjAxOC8zLzE0LzEwMzgKPgo+IFRoYW5rcywKPiBTdGVmYW4KCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxp
bmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
