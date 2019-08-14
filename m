Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23D48D142
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 12:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x8eKwhBaf870rkIgusKBN7azFC/ZA1hP3F72DQbC4mE=; b=B/werKQ7f96a1A7T7JFo6Nc5c
	ah7WJrL2HQHl7kseYK1f1ie5xwftPzpJKa31jlYbp8D/jpY2EgYhEYiHjb4V3vtRTkv0q9TyM6jDX
	GobyV6ORdvfy4k0gZWyij27Q2o1TTbG0N5oDM0lxOYmqNv+ibA9o3ZVrBxgmB9vs3jTmT/GuL7ASi
	kgVJE2uANm/7mFKt0Tr3KSnn4Ydh6SpG4aRTVGxJWWnMp8MHlJYJrCcPB0Jgn5O3GrfdJ+IAyvslp
	c2tOXxcDxEeuYxC0I639UBnOELY0isnZNDHftgdrXC3cVpanwKd5nIMpGq/Hlx9fWeBn/mFemTivS
	a48QoB/+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqpW-0003SK-4A; Wed, 14 Aug 2019 10:48:34 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqpR-0003Rr-Vk
 for linux-mediatek@lists.infradead.org; Wed, 14 Aug 2019 10:48:32 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 8C767A20D0;
 Wed, 14 Aug 2019 12:48:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 6kZURAApPW-Z; Wed, 14 Aug 2019 12:48:21 +0200 (CEST)
Subject: Re: [PATCH] net: ethernet: mediatek: Add MT7628/88 SoC support
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>
References: <20190717125345.Horde.JcDE_nBChPFDDjEgIRfPSl3@www.vdorst.com>
 <a92d7207-80b2-e88d-d869-64c9758ef1da@denx.de>
 <20190814092621.Horde.epvj8zK96-aCiV70YB5Q7II@www.vdorst.com>
From: Stefan Roese <sr@denx.de>
Message-ID: <3ff9a0fc-f5ff-3798-4409-ed5b900e0b05@denx.de>
Date: Wed, 14 Aug 2019 12:48:20 +0200
MIME-Version: 1.0
In-Reply-To: <20190814092621.Horde.epvj8zK96-aCiV70YB5Q7II@www.vdorst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034830_319069_F3C122F8 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
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
Cc: netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, Daniel Golle <daniel@makrotopia.org>,
 John Crispin <john@phrozen.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgUmVuZSwKCk9uIDE0LjA4LjE5IDExOjI2LCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4gSGkg
U3RlZmFuLAo+IAo+IFF1b3RpbmcgU3RlZmFuIFJvZXNlIDxzckBkZW54LmRlPjoKPiAKPj4gSGkg
UmVuZSwKPj4KPj4gT24gMTcuMDcuMTkgMTQ6NTMsIFJlbsOpIHZhbiBEb3JzdCB3cm90ZToKPj4K
Pj4gPHNuaXA+Cj4+Cj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRr
X2V0aF9zb2MuaAo+Pj4+IEBAIC0zOSw3ICszOSw4IEBACj4+Pj4gICAJCQkJIE5FVElGX0ZfU0cg
fCBORVRJRl9GX1RTTyB8IFwKPj4+PiAgIAkJCQkgTkVUSUZfRl9UU082IHwgXAo+Pj4+ICAgCQkJ
CSBORVRJRl9GX0lQVjZfQ1NVTSkKPj4+PiAtI2RlZmluZSBORVhUX1JYX0RFU1BfSURYKFgsIFkp
CSgoKFgpICsgMSkgJiAoKFkpIC0gMSkpCj4+Pj4gKyNkZWZpbmUgTVRLX0hXX0ZFQVRVUkVTX01U
NzYyOAkoTkVUSUZfRl9TRyB8IE5FVElGX0ZfUlhDU1VNKQo+Pj4+ICsjZGVmaW5lIE5FWFRfREVT
UF9JRFgoWCwgWSkJKCgoWCkgKyAxKSAmICgoWSkgLSAxKSkKPj4+Pgo+Pj4+ICAgI2RlZmluZSBN
VEtfTUFYX1JYX1JJTkdfTlVNCTQKPj4+PiAgICNkZWZpbmUgTVRLX0hXX0xST19ETUFfU0laRQk4
Cj4+Pj4gQEAgLTExOCw2ICsxMTksNyBAQAo+Pj4+ICAgLyogUERNQSBHbG9iYWwgQ29uZmlndXJh
dGlvbiBSZWdpc3RlciAqLwo+Pj4+ICAgI2RlZmluZSBNVEtfUERNQV9HTE9fQ0ZHCTB4YTA0Cj4+
Pj4gICAjZGVmaW5lIE1US19NVUxUSV9FTgkJQklUKDEwKQo+Pj4+ICsjZGVmaW5lIE1US19QRE1B
X1NJWkVfOERXT1JEUwkoMSA8PCA0KQo+Pj4+Cj4+Pj4gICAvKiBQRE1BIFJlc2V0IEluZGV4IFJl
Z2lzdGVyICovCj4+Pj4gICAjZGVmaW5lIE1US19QRE1BX1JTVF9JRFgJMHhhMDgKPj4+PiBAQCAt
Mjc2LDExICsyNzgsMTggQEAKPj4+PiAgICNkZWZpbmUgVFhfRE1BX09XTkVSX0NQVQlCSVQoMzEp
Cj4+Pj4gICAjZGVmaW5lIFRYX0RNQV9MUzAJCUJJVCgzMCkKPj4+PiAgICNkZWZpbmUgVFhfRE1B
X1BMRU4wKF94KQkoKChfeCkgJiBNVEtfVFhfRE1BX0JVRl9MRU4pIDw8IDE2KQo+Pj4+ICsjZGVm
aW5lIFRYX0RNQV9QTEVOMShfeCkJKChfeCkgJiBNVEtfVFhfRE1BX0JVRl9MRU4pCj4+Pj4gICAj
ZGVmaW5lIFRYX0RNQV9TV0MJCUJJVCgxNCkKPj4+PiAgICNkZWZpbmUgVFhfRE1BX1NETChfeCkJ
CSgoKF94KSAmIDB4M2ZmZikgPDwgMTYpCj4+Pj4KPj4+PiArLyogUERNQSBvbiBNVDc2MjggKi8K
Pj4+PiArI2RlZmluZSBUWF9ETUFfRE9ORQkJQklUKDMxKQo+Pj4+ICsjZGVmaW5lIFRYX0RNQV9M
UzEJCUJJVCgxNCkKPj4+PiArI2RlZmluZSBUWF9ETUFfREVTUDJfREVGCShUWF9ETUFfTFMwIHwg
VFhfRE1BX0RPTkUpCj4+Pj4gKwo+Pj4+ICAgLyogUURNQSBkZXNjcmlwdG9yIHJ4ZDIgKi8KPj4+
PiAgICNkZWZpbmUgUlhfRE1BX0RPTkUJCUJJVCgzMSkKPj4+PiArI2RlZmluZSBSWF9ETUFfTFNP
CQlCSVQoMzApCj4+Pj4gICAjZGVmaW5lIFJYX0RNQV9QTEVOMChfeCkJKCgoX3gpICYgMHgzZmZm
KSA8PCAxNikKPj4+PiAgICNkZWZpbmUgUlhfRE1BX0dFVF9QTEVOMChfeCkJKCgoX3gpID4+IDE2
KSAmIDB4M2ZmZikKPj4+Pgo+Pj4+IEBAIC0yODksNiArMjk4LDcgQEAKPj4+Pgo+Pj4+ICAgLyog
UURNQSBkZXNjcmlwdG9yIHJ4ZDQgKi8KPj4+PiAgICNkZWZpbmUgUlhfRE1BX0w0X1ZBTElECQlC
SVQoMjQpCj4+Pj4gKyNkZWZpbmUgUlhfRE1BX0w0X1ZBTElEX1BETUEJQklUKDMwKQkJLyogd2hl
biBQRE1BIGlzIHVzZWQgKi8KPj4+PiAgICNkZWZpbmUgUlhfRE1BX0ZQT1JUX1NISUZUCTE5Cj4+
Pj4gICAjZGVmaW5lIFJYX0RNQV9GUE9SVF9NQVNLCTB4Nwo+Pj4+Cj4+Pj4gQEAgLTQxMiw2ICs0
MjIsMTkgQEAKPj4+PiAgICNkZWZpbmUgQ09fUVBIWV9TRUwgICAgICAgICAgICBCSVQoMCkKPj4+
PiAgICNkZWZpbmUgR0VQSFlfTUFDX1NFTCAgICAgICAgICBCSVQoMSkKPj4+Pgo+Pj4+ICsvKiBN
VDc2MjgvODggc3BlY2lmaWMgc3R1ZmYgKi8KPj4+PiArI2RlZmluZSBNVDc2MjhfUERNQV9PRkZT
RVQJMHgwODAwCj4+Pj4gKyNkZWZpbmUgTVQ3NjI4X1NETV9PRkZTRVQJMHgwYzAwCj4+Pj4gKwo+
Pj4+ICsjZGVmaW5lIE1UNzYyOF9UWF9CQVNFX1BUUjAJKE1UNzYyOF9QRE1BX09GRlNFVCArIDB4
MDApCj4+Pj4gKyNkZWZpbmUgTVQ3NjI4X1RYX01BWF9DTlQwCShNVDc2MjhfUERNQV9PRkZTRVQg
KyAweDA0KQo+Pj4+ICsjZGVmaW5lIE1UNzYyOF9UWF9DVFhfSURYMAkoTVQ3NjI4X1BETUFfT0ZG
U0VUICsgMHgwOCkKPj4+PiArI2RlZmluZSBNVDc2MjhfVFhfRFRYX0lEWDAJKE1UNzYyOF9QRE1B
X09GRlNFVCArIDB4MGMpCj4+Pj4gKyNkZWZpbmUgTVQ3NjI4X1BTVF9EVFhfSURYMAlCSVQoMCkK
Pj4+PiArCj4+Pj4gKyNkZWZpbmUgTVQ3NjI4X1NETV9NQUNfQURSTAkoTVQ3NjI4X1NETV9PRkZT
RVQgKyAweDBjKQo+Pj4+ICsjZGVmaW5lIE1UNzYyOF9TRE1fTUFDX0FEUkgJKE1UNzYyOF9TRE1f
T0ZGU0VUICsgMHgxMCkKPj4+PiArCj4+Pj4gICBzdHJ1Y3QgbXRrX3J4X2RtYSB7Cj4+Pj4gICAJ
dW5zaWduZWQgaW50IHJ4ZDE7Cj4+Pj4gICAJdW5zaWduZWQgaW50IHJ4ZDI7Cj4+Pj4gQEAgLTUw
OSw2ICs1MzIsNyBAQCBlbnVtIG10a19jbGtzX21hcCB7Cj4+Pj4gICAJCQkJIEJJVChNVEtfQ0xL
X1NHTUlJX0NLKSB8IFwKPj4+PiAgIAkJCQkgQklUKE1US19DTEtfRVRIMlBMTCkpCj4+Pj4gICAj
ZGVmaW5lIE1UNzYyMV9DTEtTX0JJVE1BUAkoMCkKPj4+PiArI2RlZmluZSBNVDc2MjhfQ0xLU19C
SVRNQVAJKDApCj4+Pj4gICAjZGVmaW5lIE1UNzYyOV9DTEtTX0JJVE1BUAkoQklUKE1US19DTEtf
RVRISUYpIHwgQklUKE1US19DTEtfRVNXKSB8ICBcCj4+Pj4gICAJCQkJIEJJVChNVEtfQ0xLX0dQ
MCkgfCBCSVQoTVRLX0NMS19HUDEpIHwgXAo+Pj4+ICAgCQkJCSBCSVQoTVRLX0NMS19HUDIpIHwg
QklUKE1US19DTEtfRkUpIHwgXAo+Pj4+IEBAIC01NjMsNiArNTg3LDEwIEBAIHN0cnVjdCBtdGtf
dHhfcmluZyB7Cj4+Pj4gICAJc3RydWN0IG10a190eF9kbWEgKmxhc3RfZnJlZTsKPj4+PiAgIAl1
MTYgdGhyZXNoOwo+Pj4+ICAgCWF0b21pY190IGZyZWVfY291bnQ7Cj4+Pj4gKwlpbnQgZG1hX3Np
emU7Cj4+Pj4gKwlzdHJ1Y3QgbXRrX3R4X2RtYSAqZG1hX3BkbWE7CS8qIEZvciBNVDc2MjgvODgg
UERNQSBoYW5kbGluZyAqLwo+Pj4+ICsJZG1hX2FkZHJfdCBwaHlzX3BkbWE7Cj4+Pj4gKwlpbnQg
Y3B1X2lkeDsKPj4+PiAgIH07Cj4+Pj4KPj4+PiAgIC8qIFBETUEgcnggcmluZyBtb2RlICovCj4+
Pj4gQEAgLTYwNCw2ICs2MzIsNyBAQCBlbnVtIG1rdF9ldGhfY2FwYWJpbGl0aWVzIHsKPj4+PiAg
IAlNVEtfSFdMUk9fQklULAo+Pj4+ICAgCU1US19TSEFSRURfSU5UX0JJVCwKPj4+PiAgIAlNVEtf
VFJHTUlJX01UNzYyMV9DTEtfQklULAo+Pj4+ICsJTVRLX1NPQ19NVDc2MjgsCj4+Pgo+Pj4gVGhp
cyBzaG91bGQgYmUgTVRLX1NPQ19NVDc2MjhfQklULCB0aGlzIG9ubHkgZGVmaW5lcyB0aGUgYml0
IG51bWJlciEKPj4+Cj4+PiBhbmQgZnV0aGVyIG9uICNkZWZpbmUgTVRLX1NPQ19NVDc2MjggQklU
KE1US19TT0NfTVQ3NjI4X0JJVCkKPj4KPj4gT2theSwgdGhhbmtzLgo+Pgo+Pj4gQmFzZWQgb24g
dGhpcyBjb21taXQgWzBdLCBNVDc2MjEgYWxzbyBuZWVkcyB0aGUgUERNQSBmb3IgdGhlIFJYIHBh
dGguCj4+PiBJIGtub3cgdGhhdCBpcyBub3QgeW91ciBpc3N1ZSBidXQgSSB0aGluayBpdCBpcyBi
ZXR0ZXIgdG8gYWRkIGEgZXh0cmEKPj4+IGNhcGFiaWxpdHkgYml0IGZvciB0aGUgUERNQSBiaXRz
IHNvIGl0IGNhbiBhbHNvIGJlIHVzZWQgb24gb3RoZXIgc29jcy4KPj4KPj4gWWVzLCBNVDc2MjEg
YWxzbyB1c2VzIFBETUEgZm9yIFJYLiBUaGUgY29kZSBmb3IgUlggaXMgcHJldHR5IG11Y2gKPj4g
c2hhcmVkIChyZS11c2VkKSwgd2l0aCBzbGlnaHQgY2hhbmdlcyBmb3IgdGhlIE1UNzYyOC84OCB0
byB3b3JrCj4+IGNvcnJlY3RseSBvbiB0aGlzIFNvQy4KPj4KPj4gSSdsbCB3b3JrIG9uIGEgY2Fw
YWJpbGl0eSBiaXQgZm9yIFBETUEgdnMgUURNQSBvbiBUWCB0aG91Z2guIFRoaXMKPj4gbWlnaHQg
bWFrZSB0aGluZ3MgYSBsaXR0bGUgbW9yZSB0cmFuc3BhcmVudC4KPiAKPiBHcmVhdCwgVGhhbmtz
IGZvciBhZGRyZXNzaW5nIHRoaXMgaXNzdWUuCj4gCj4gSSBob3BlIHdlIGNhbiBjb2xsYWJvcmF0
ZSB0byBhbHNvIHN1cHBvcnQgbXQ3Nng4IGluIG15IFBIWUxJTksgcGF0Y2hlcyBbMF1bMV0uCj4g
SSBhbSBjbG9zZSB0byBwb3N0aW5nIFYyIG9mIHRoZSBwYXRjaGVzIGJ1dCBJIGFtIGN1cnJlbnRs
eSB3YWl0aW5nIG9uIHNvbWUKPiBmaWJlciBtb2R1bGVzIHRvIHRlc3QgdGhlIGNoYW5nZXMgYmV0
dGVyLgoKSSBkbyBoYXZlIGEgImhhY2tpc2giIERTQSBkcml2ZXIgZm9yIHRoZSBpbnRlZ3JhdGVk
IHN3aXRjaCAoRVNXKSBpbiBteQp0cmVlLiBJZiB0aW1lIHBlcm1pdHMsIEknbGwgd29yayBvbiB1
cHN0cmVhbWluZyB0aGlzIG9uZSBhcyB3ZWxsLiBBbmQKeWVzLCBob3BlZnVsbHkgd2UgY2FuIGNv
bGxhYm9yYXRlIG9uIHlvdXIgUEhZTElOSyB3b3JrIHRvby4KClRoYW5rcywKU3RlZmFuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRl
ayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
