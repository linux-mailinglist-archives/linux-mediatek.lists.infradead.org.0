Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0619076C72
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 17:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ub2wjpjCrapflTB0d4kzTPBiOxG1Y5xljItiFqhxiGw=; b=ShhMoApjSzjmetNmzYfGWbJih
	aZqJmeGXlU3fnfMfNflYjzCmgL2BeFF2No344RLNx6b6HaAE4fkRDIbDsosFXTS/FpHXc8xSDEjPd
	VB8eAhwu7AduqhC9mYHDp+cgsn5lQ0GJ7LakUAhE82aI8e92S0uaZTqSXNta4Dq2hNB9hobX5oISq
	ThnSnQWbJ/ejILyEUJXxhq7j+/Zk7HOVrHgdzwzlL1bBlSysrvHXlJee19LMTiQcqW6DYUvBWtNs5
	NKYcnrwBSaqtCwfFzEbvPO0REnrwdJFfo161lJEXimHH/00ij85eOofPiyNiGEHKVdPb0kfmAKV+v
	x2HPJXEMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr1xO-0008Uo-7F; Fri, 26 Jul 2019 15:16:30 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr1xJ-0008UD-SZ
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 15:16:28 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 68A355FB2B;
 Fri, 26 Jul 2019 17:16:22 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="VQaqy9wL"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 215301D2A844;
 Fri, 26 Jul 2019 17:16:22 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 215301D2A844
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1564154182;
 bh=m/ZOz2FsEC0YUtMqMjZjTXJt7148rlDQj0N5Q8iLfNI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VQaqy9wLOwsas5ImvkdNcKlGlIRrW51YuGIS1kh7QBfq44JMNNhetf9U2oUosYf/w
 5hmdK3vuhd5u3J6KhHms0GhUELsv0Z9GsXyas6l5k69XbYJnFR4HwpJDgcydg5Zy7u
 CZVqomgquSM+D5KXEYdOAEEZQMg+F/4s64MK5h1e28hXMAV3y+iUj0NGGfCpqWOUyQ
 fSoxVXFztY7shVArKqOAd4er4gBj7m1zIo3olR7NIp2FeES7p6iI3SzQDOkuoCu9L1
 x5BySbNkOwPo4psIbn8fbA7tVLD50tsXf6lAjkNkvu/LeaBv05TRdTfJ9k1s1euBXu
 OECqt/FKPCn1w==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Fri, 26 Jul 2019 15:16:22 +0000
Date: Fri, 26 Jul 2019 15:16:22 +0000
Message-ID: <20190726151622.Horde.1AA717IbQrC7_YJcSBe4M-0@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next 3/3] dt-bindings: net: ethernet: Update mt7622
 docs and dts to reflect the new phylink API
References: <20190724192411.20639-1-opensource@vdorst.com>
 <20190725193123.GA32542@lunn.ch>
 <20190726071956.Horde.s4rfuzovwXB-d3LnV0PLRc8@www.vdorst.com>
 <20190726131604.GA18223@lunn.ch>
In-Reply-To: <20190726131604.GA18223@lunn.ch>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_081626_616514_BE957AE1 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 vivien.didelot@gmail.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+OgoKPiBPbiBGcmksIEp1bCAyNiwg
MjAxOSBhdCAwNzoxOTo1NkFNICswMDAwLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4+IFF1b3Rp
bmcgQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPjoKPj4KPj4gPj4rCWdtYWMwOiBtYWNAMCB7
Cj4+ID4+KwkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxldGgtbWFjIjsKPj4gPj4rCQlyZWcgPSA8
MD47Cj4+ID4+KwkJcGh5LW1vZGUgPSAic2dtaWkiOwo+PiA+PisKPj4gPj4rCQlmaXhlZC1saW5r
IHsKPj4gPj4rCQkJc3BlZWQgPSA8MjUwMD47Cj4+ID4+KwkJCWZ1bGwtZHVwbGV4Owo+PiA+PisJ
CQlwYXVzZTsKPj4gPj4rCQl9Owo+PiA+PisJfTsKPj4gPgo+PiA+SGkgUmVuw6kKPj4gPgo+Pgo+
PiBIaSBBbmRyZXcsCj4+Cj4+ID5TR01JSSBhbmQgZml4ZWQtbGluayBpcyByYXRoZXIgb2RkLiBX
aHkgZG8geW91IG5lZWQgdGhpcyBjb21iaW5hdGlvbj8KPj4KPj4gQmFuYW5hUGkgUjY0IGhhcyBh
IFJUTDgzNjdTIDUrMi1wb3J0IHN3aXRjaCwgc3dpdGNoIGludGVyZmFjZXMgd2l0aCB0aGUgU09D
Cj4+IGJ5IGEKPj4gKEgpU0dNSUkgYW5kL29yIFJHTUlJIGludGVyZmFjZS4gU0dNSUkgaXMgbWFp
bmx5IHVzZWQgZm9yIHRoZSBMQU4gcG9ydHMgYW5kCj4+IFJHTUlJIGZvciB0aGUgV0FOIHBvcnQu
Cj4+Cj4+IEkgbWltaWMgdGhlIFNESyBzb2Z0d2FyZSB3aGljaCBwdXRzIFNHTUlJIGludGVyZmFj
ZSBpbiAyLjVHQml0IGZpeGVkLWxpbmsKPj4gbW9kZS4KPj4gVGhlIFJUTDgzNjdTIHN3aXRjaCBj
b2RlIGFsc28gcHV0IHN3aXRjaCBtYWMgaW4gZm9yZ2UgMi41R0JpdCBtb2RlLgo+Pgo+PiBTbyB0
aGlzIGlzIHRoZSByZWFzb24gd2h5IEkgcHV0IGEgZml4ZWQtbGluayBtb2RlIGhlcmUuCj4KPiBB
cmUgeW91IHN1cmUgaXQgaXMgdXNpbmcgU0dNSUkgYW5kIG5vdCAyNTAwQmFzZVg/IENhbiB5b3Ug
Z2V0IGFjY2Vzcwo+IHRvIHRoZSBzaWduYWxsaW5nIHdvcmQ/IFNHTUlJIGlzIHN1cHBvc2VkIHRv
IGluZGljYXRlIHRvIHRoZSBNQUMgd2hhdAo+IHNwZWVkIGl0IGlzIHVzaW5nLCB2aWEgaW5iYW5k
IHNpZ25hbGxpbmcuIFNvIHRoZXJlIHNob3VsZCBub3QgYmUgYW55Cj4gbmVlZCBmb3IgYSBmaXhl
ZC1saW5rLiAyNTAwQmFzZVggaG93ZXZlciBkb2VzIG5vdCBoYXZlIHN1Y2gKPiBzaWduYWxsaW5n
LCBzbyB0aGVyZSB3b3VsZCBuZWVkIHRvIGJlIGEgZml4ZWQgbGluay4KCkkgYW0gbm90IHN1cmUu
CgpJIGp1c3QgY29udmVydGVkIHRoZSBjdXJyZW50IG1haW5saW5lIGNvZGUgdG8gc3VwcG9ydCBw
aHlsaW5rIGFuZCAgCm1pbWljIHRoZSBEVFMKb2YgdGhlIFNESy4gQnV0IHRoZSBTREsgc2VlbXMg
dG8gYmUgaW5jb3JyZWN0LgoKUmVhbHRla1swXSBjYWxscyB0aGVzZSBtb2RlczoKKiBTR01JSSAo
MS4yNUdIeikgSW50ZXJmYWNlCiogSGlnaCBTR01JSSAoMy4xMjVHSHopIEludGVyZmFjZQpBbHNv
IHRoZSBkYXRhc2hlZXQgdGhhdCBJIGhhdmUgZG9lc24ndCB0YWxrIGFib3V0IGJhc2UteCBtb2Rl
cy4KCkJ1dCBNVDc2MjIgUmVmZXJlbmNlIG1hbnVhbFsxXSBwYWdlIDE5NjAgc2F5czoKICBUaGUg
Y29yZSBsZXZlcmFnZXMgdGhlIDEwMDBCYXNlLVggUENTIGFuZCBBdXRvLU5lZ290aWF0aW9uIGZy
b20gSUVFRSA4MDIuMwogIHNwZWNpZmljYXRpb24gKGNsYXVzZSAzNi8zNykuIFRoaXMgSVAgY2Fu
IHN1cHBvcnQgdXAgdG8gMy4xMjVHIGJhdWQgIApmb3IgMi41R2JwcwogIChwcm9wcmlldGFyeSAy
NTAwQmFzZS1YKSBkYXRhIHJhdGUgb2YgTUFDIGJ5IG92ZXJjbG9ja2luZy4KClNvIEkgdGhpbmsg
aXQgcGh5LW1vZGUgc2hvdWxkIGJlIDI1MDBCYXNlLVggaW4gdGhpcyBjYXNlLgoKU0dNSUkgcGFy
dCBpcyBhIGJpdCBoYXJkIGZvciBtZSB0byBzdXBwb3J0LCBJIGRvbid0IGhhdmUgdGhlIGhhcmR3
YXJlLApNZWRpYVRlayBkYXRhc2hlZXRzIGFyZSBtb3N0bHkgaW5jb21wbGV0ZSBhbmQgYWxzbyBJ
IGFtIGEgbm90IGZhbWlsaWFyICAKd2l0aCBpdC4KCkJ1dCBJIHRoaW5rIEkga25vdyB3aGF0IEkg
aGF2ZSB0byBjaGFuZ2UuCkJhc2VkIG9uIHlvdXIgZXhwbGFuYXRpb24gYWJvdmUuCgpJIHRoaW5r
IHRoaXMgbW9yZSBjb3JyZWN0IGltcGxlbWVudGF0aW9uOgoKKiAxMDAwYmFzZS14IGFuZCAyNTAw
YmFzZS14IGFsd2F5cyBmb3JjZSB0aGUgbGluay4KKiBTR01JSSBpcyBhbHdheXMgaW5iYW5kIGJ1
dCBJIG5lZWQgaW4gcGh5bGlua19tYWNfbGlua19zdGF0dXMoKSB0byByZWFkb3V0CiAgICJQQ1Nf
U1BFRURfQUJJTElUWSBDbGF1c2UgNDUgMy41IiByZWdpc3RlciB0byBzZWUgdGhlIGluYmFuZCBz
dGF0dXM/CiAgIE9yIGlzIGl0IGp1c3QgdGhlIEdNQUMgUFNNUiByZWdpc3Rlcj8gRm9yIG1lIGl0
IGlzIGEgYml0IGNvbmZ1c2luZy4KICAgU0dNSUkgYmxvY2sgaGFzIGEgcmVnaXN0ZXIgdG8gc2V0
IHRoZSBsaW5rIHNwZWVkIGFuZCBldGMuIEJ1dCB0ZXN0cyBvbiB0aGUKICAgYmFuYW5hcGkgUjY0
IGJvYXJkIHNob3dzIHRoYXQgSSBhbHNvIG5lZWQgdG8gc2V0IHRoZSBHTUFDIHJlZ2lzdGVyIGVs
c2UgaXQKICAgZGlkbid0IHdvcmsuIEFsc28gaXQgaXMgbm90IGVhc3kgdG8gZGVidWcgaWYgeW91
IGRvbid0IGhhdmUgdGhlIGJvYXJkLgoKPiBNYXliZSB3ZSBzaG91bGQgcmVhbGx5IGNvbnNpZGVy
IHdoYXQgcGh5LW1vZGUgPSAic2dtaWkiOyBtZWFucy4gU2hvdWxkCj4gdGhpcyBpbmNsdWRlIHRo
ZSBvdmVyY2xvY2tlZCAyLjVHIHNwZWVkLCBvciBzaG91bGQgd2UgYWRkIGEgMjUwMHNnbWlpCj4g
bGluayBtb2RlPwoKTm8uCgo+Cj4gICAgICBBbmRyZXcKCkdyZWF0cywKClJlbsOpCgpbMF06ICAK
aHR0cHM6Ly93d3cucmVhbHRlay5jb20vZW4vcHJvZHVjdHMvY29tbXVuaWNhdGlvbnMtbmV0d29y
ay1pY3MvaXRlbS9ydGw4MzY3cy1jZwpbMV06ICAKaHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL2Zp
bGUvZC8xY1c4S1FtbVZwd0RHbUJkNDhLTlFlczlDUm43RkVnQmIvdmlldz91c3A9c2hhcmluZwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1l
ZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
