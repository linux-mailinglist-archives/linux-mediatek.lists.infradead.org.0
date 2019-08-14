Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D326A8CE5A
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 10:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oskNhdRsQViXyUctxCnBPzww23xF893UXAtRoPVRpi4=; b=VvyC9zc1RjfZmCb/CYWp3ZqcP
	aDBq3xFmgK4iUe4CZ+m1eUHf2AjaRBSkT7ZKfcuJYRMFYGTxK3rYhwUvWRFA/+WFgm/FNraE47lSs
	0VJqfcrgB5E8rEqUS48zzEUi35nnvE+VznMrEbtiFZSgdNGz7HNxOSY/dbGkXQ/3LPZ720FshGR7+
	2fumdsfVJnyqyYmXSDxKlv31djfzX5HaGAprygF+puIZiqwOXfvfZ3yvzTPq17JkjTwyc2PoOdwp9
	rbdVajntpzjbeZe9YwtHjz3yx6GjvikcYwg2ht16xujcIBOCBwL1NgPOJUrJkJik4Z2jBTseHXAW8
	zCXPVzf5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxocO-00046J-7f; Wed, 14 Aug 2019 08:26:52 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxocJ-00045g-R8
 for linux-mediatek@lists.infradead.org; Wed, 14 Aug 2019 08:26:49 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 89BF5A0207;
 Wed, 14 Aug 2019 10:26:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id qwECdbNVkTdT; Wed, 14 Aug 2019 10:26:30 +0200 (CEST)
Subject: Re: [PATCH] net: ethernet: mediatek: Add MT7628/88 SoC support
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>
References: <20190717125345.Horde.JcDE_nBChPFDDjEgIRfPSl3@www.vdorst.com>
From: Stefan Roese <sr@denx.de>
Message-ID: <a92d7207-80b2-e88d-d869-64c9758ef1da@denx.de>
Date: Wed, 14 Aug 2019 10:26:29 +0200
MIME-Version: 1.0
In-Reply-To: <20190717125345.Horde.JcDE_nBChPFDDjEgIRfPSl3@www.vdorst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_012648_182049_B97446DE 
X-CRM114-Status: GOOD (  14.92  )
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
Cc: Felix Fietkau <nbd@openwrt.org>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Daniel Golle <daniel@makrotopia.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgUmVuZSwKCk9uIDE3LjA3LjE5IDE0OjUzLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cgo8c25p
cD4KCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmgK
Pj4gQEAgLTM5LDcgKzM5LDggQEAKPj4gICAJCQkJIE5FVElGX0ZfU0cgfCBORVRJRl9GX1RTTyB8
IFwKPj4gICAJCQkJIE5FVElGX0ZfVFNPNiB8IFwKPj4gICAJCQkJIE5FVElGX0ZfSVBWNl9DU1VN
KQo+PiAtI2RlZmluZSBORVhUX1JYX0RFU1BfSURYKFgsIFkpCSgoKFgpICsgMSkgJiAoKFkpIC0g
MSkpCj4+ICsjZGVmaW5lIE1US19IV19GRUFUVVJFU19NVDc2MjgJKE5FVElGX0ZfU0cgfCBORVRJ
Rl9GX1JYQ1NVTSkKPj4gKyNkZWZpbmUgTkVYVF9ERVNQX0lEWChYLCBZKQkoKChYKSArIDEpICYg
KChZKSAtIDEpKQo+Pgo+PiAgICNkZWZpbmUgTVRLX01BWF9SWF9SSU5HX05VTQk0Cj4+ICAgI2Rl
ZmluZSBNVEtfSFdfTFJPX0RNQV9TSVpFCTgKPj4gQEAgLTExOCw2ICsxMTksNyBAQAo+PiAgIC8q
IFBETUEgR2xvYmFsIENvbmZpZ3VyYXRpb24gUmVnaXN0ZXIgKi8KPj4gICAjZGVmaW5lIE1US19Q
RE1BX0dMT19DRkcJMHhhMDQKPj4gICAjZGVmaW5lIE1US19NVUxUSV9FTgkJQklUKDEwKQo+PiAr
I2RlZmluZSBNVEtfUERNQV9TSVpFXzhEV09SRFMJKDEgPDwgNCkKPj4KPj4gICAvKiBQRE1BIFJl
c2V0IEluZGV4IFJlZ2lzdGVyICovCj4+ICAgI2RlZmluZSBNVEtfUERNQV9SU1RfSURYCTB4YTA4
Cj4+IEBAIC0yNzYsMTEgKzI3OCwxOCBAQAo+PiAgICNkZWZpbmUgVFhfRE1BX09XTkVSX0NQVQlC
SVQoMzEpCj4+ICAgI2RlZmluZSBUWF9ETUFfTFMwCQlCSVQoMzApCj4+ICAgI2RlZmluZSBUWF9E
TUFfUExFTjAoX3gpCSgoKF94KSAmIE1US19UWF9ETUFfQlVGX0xFTikgPDwgMTYpCj4+ICsjZGVm
aW5lIFRYX0RNQV9QTEVOMShfeCkJKChfeCkgJiBNVEtfVFhfRE1BX0JVRl9MRU4pCj4+ICAgI2Rl
ZmluZSBUWF9ETUFfU1dDCQlCSVQoMTQpCj4+ICAgI2RlZmluZSBUWF9ETUFfU0RMKF94KQkJKCgo
X3gpICYgMHgzZmZmKSA8PCAxNikKPj4KPj4gKy8qIFBETUEgb24gTVQ3NjI4ICovCj4+ICsjZGVm
aW5lIFRYX0RNQV9ET05FCQlCSVQoMzEpCj4+ICsjZGVmaW5lIFRYX0RNQV9MUzEJCUJJVCgxNCkK
Pj4gKyNkZWZpbmUgVFhfRE1BX0RFU1AyX0RFRgkoVFhfRE1BX0xTMCB8IFRYX0RNQV9ET05FKQo+
PiArCj4+ICAgLyogUURNQSBkZXNjcmlwdG9yIHJ4ZDIgKi8KPj4gICAjZGVmaW5lIFJYX0RNQV9E
T05FCQlCSVQoMzEpCj4+ICsjZGVmaW5lIFJYX0RNQV9MU08JCUJJVCgzMCkKPj4gICAjZGVmaW5l
IFJYX0RNQV9QTEVOMChfeCkJKCgoX3gpICYgMHgzZmZmKSA8PCAxNikKPj4gICAjZGVmaW5lIFJY
X0RNQV9HRVRfUExFTjAoX3gpCSgoKF94KSA+PiAxNikgJiAweDNmZmYpCj4+Cj4+IEBAIC0yODks
NiArMjk4LDcgQEAKPj4KPj4gICAvKiBRRE1BIGRlc2NyaXB0b3IgcnhkNCAqLwo+PiAgICNkZWZp
bmUgUlhfRE1BX0w0X1ZBTElECQlCSVQoMjQpCj4+ICsjZGVmaW5lIFJYX0RNQV9MNF9WQUxJRF9Q
RE1BCUJJVCgzMCkJCS8qIHdoZW4gUERNQSBpcyB1c2VkICovCj4+ICAgI2RlZmluZSBSWF9ETUFf
RlBPUlRfU0hJRlQJMTkKPj4gICAjZGVmaW5lIFJYX0RNQV9GUE9SVF9NQVNLCTB4Nwo+Pgo+PiBA
QCAtNDEyLDYgKzQyMiwxOSBAQAo+PiAgICNkZWZpbmUgQ09fUVBIWV9TRUwgICAgICAgICAgICBC
SVQoMCkKPj4gICAjZGVmaW5lIEdFUEhZX01BQ19TRUwgICAgICAgICAgQklUKDEpCj4+Cj4+ICsv
KiBNVDc2MjgvODggc3BlY2lmaWMgc3R1ZmYgKi8KPj4gKyNkZWZpbmUgTVQ3NjI4X1BETUFfT0ZG
U0VUCTB4MDgwMAo+PiArI2RlZmluZSBNVDc2MjhfU0RNX09GRlNFVAkweDBjMDAKPj4gKwo+PiAr
I2RlZmluZSBNVDc2MjhfVFhfQkFTRV9QVFIwCShNVDc2MjhfUERNQV9PRkZTRVQgKyAweDAwKQo+
PiArI2RlZmluZSBNVDc2MjhfVFhfTUFYX0NOVDAJKE1UNzYyOF9QRE1BX09GRlNFVCArIDB4MDQp
Cj4+ICsjZGVmaW5lIE1UNzYyOF9UWF9DVFhfSURYMAkoTVQ3NjI4X1BETUFfT0ZGU0VUICsgMHgw
OCkKPj4gKyNkZWZpbmUgTVQ3NjI4X1RYX0RUWF9JRFgwCShNVDc2MjhfUERNQV9PRkZTRVQgKyAw
eDBjKQo+PiArI2RlZmluZSBNVDc2MjhfUFNUX0RUWF9JRFgwCUJJVCgwKQo+PiArCj4+ICsjZGVm
aW5lIE1UNzYyOF9TRE1fTUFDX0FEUkwJKE1UNzYyOF9TRE1fT0ZGU0VUICsgMHgwYykKPj4gKyNk
ZWZpbmUgTVQ3NjI4X1NETV9NQUNfQURSSAkoTVQ3NjI4X1NETV9PRkZTRVQgKyAweDEwKQo+PiAr
Cj4+ICAgc3RydWN0IG10a19yeF9kbWEgewo+PiAgIAl1bnNpZ25lZCBpbnQgcnhkMTsKPj4gICAJ
dW5zaWduZWQgaW50IHJ4ZDI7Cj4+IEBAIC01MDksNiArNTMyLDcgQEAgZW51bSBtdGtfY2xrc19t
YXAgewo+PiAgIAkJCQkgQklUKE1US19DTEtfU0dNSUlfQ0spIHwgXAo+PiAgIAkJCQkgQklUKE1U
S19DTEtfRVRIMlBMTCkpCj4+ICAgI2RlZmluZSBNVDc2MjFfQ0xLU19CSVRNQVAJKDApCj4+ICsj
ZGVmaW5lIE1UNzYyOF9DTEtTX0JJVE1BUAkoMCkKPj4gICAjZGVmaW5lIE1UNzYyOV9DTEtTX0JJ
VE1BUAkoQklUKE1US19DTEtfRVRISUYpIHwgQklUKE1US19DTEtfRVNXKSB8ICBcCj4+ICAgCQkJ
CSBCSVQoTVRLX0NMS19HUDApIHwgQklUKE1US19DTEtfR1AxKSB8IFwKPj4gICAJCQkJIEJJVChN
VEtfQ0xLX0dQMikgfCBCSVQoTVRLX0NMS19GRSkgfCBcCj4+IEBAIC01NjMsNiArNTg3LDEwIEBA
IHN0cnVjdCBtdGtfdHhfcmluZyB7Cj4+ICAgCXN0cnVjdCBtdGtfdHhfZG1hICpsYXN0X2ZyZWU7
Cj4+ICAgCXUxNiB0aHJlc2g7Cj4+ICAgCWF0b21pY190IGZyZWVfY291bnQ7Cj4+ICsJaW50IGRt
YV9zaXplOwo+PiArCXN0cnVjdCBtdGtfdHhfZG1hICpkbWFfcGRtYTsJLyogRm9yIE1UNzYyOC84
OCBQRE1BIGhhbmRsaW5nICovCj4+ICsJZG1hX2FkZHJfdCBwaHlzX3BkbWE7Cj4+ICsJaW50IGNw
dV9pZHg7Cj4+ICAgfTsKPj4KPj4gICAvKiBQRE1BIHJ4IHJpbmcgbW9kZSAqLwo+PiBAQCAtNjA0
LDYgKzYzMiw3IEBAIGVudW0gbWt0X2V0aF9jYXBhYmlsaXRpZXMgewo+PiAgIAlNVEtfSFdMUk9f
QklULAo+PiAgIAlNVEtfU0hBUkVEX0lOVF9CSVQsCj4+ICAgCU1US19UUkdNSUlfTVQ3NjIxX0NM
S19CSVQsCj4+ICsJTVRLX1NPQ19NVDc2MjgsCj4gCj4gVGhpcyBzaG91bGQgYmUgTVRLX1NPQ19N
VDc2MjhfQklULCB0aGlzIG9ubHkgZGVmaW5lcyB0aGUgYml0IG51bWJlciEKPiAKPiBhbmQgZnV0
aGVyIG9uICNkZWZpbmUgTVRLX1NPQ19NVDc2MjggQklUKE1US19TT0NfTVQ3NjI4X0JJVCkKCk9r
YXksIHRoYW5rcy4KICAKPiBCYXNlZCBvbiB0aGlzIGNvbW1pdCBbMF0sIE1UNzYyMSBhbHNvIG5l
ZWRzIHRoZSBQRE1BIGZvciB0aGUgUlggcGF0aC4KPiBJIGtub3cgdGhhdCBpcyBub3QgeW91ciBp
c3N1ZSBidXQgSSB0aGluayBpdCBpcyBiZXR0ZXIgdG8gYWRkIGEgZXh0cmEKPiBjYXBhYmlsaXR5
IGJpdCBmb3IgdGhlIFBETUEgYml0cyBzbyBpdCBjYW4gYWxzbyBiZSB1c2VkIG9uIG90aGVyIHNv
Y3MuCgpZZXMsIE1UNzYyMSBhbHNvIHVzZXMgUERNQSBmb3IgUlguIFRoZSBjb2RlIGZvciBSWCBp
cyBwcmV0dHkgbXVjaApzaGFyZWQgKHJlLXVzZWQpLCB3aXRoIHNsaWdodCBjaGFuZ2VzIGZvciB0
aGUgTVQ3NjI4Lzg4IHRvIHdvcmsKY29ycmVjdGx5IG9uIHRoaXMgU29DLgoKSSdsbCB3b3JrIG9u
IGEgY2FwYWJpbGl0eSBiaXQgZm9yIFBETUEgdnMgUURNQSBvbiBUWCB0aG91Z2guIFRoaXMKbWln
aHQgbWFrZSB0aGluZ3MgYSBsaXR0bGUgbW9yZSB0cmFuc3BhcmVudC4KICAKPiBHcmVhdHMsCj4g
Cj4gUmVuw6kKPiAKPiBbMF0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTgvMy8xNC8xMDM4CgpU
aGFua3MsClN0ZWZhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tZWRpYXRlawo=
