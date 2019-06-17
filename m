Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F29DD495C6
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 01:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EfeZG9y1s6jZB3jLNA1/mfAwGZgEIGHQIdWNoMlrhiw=; b=hjclCO67VNrdPuAJRA+CC4paV
	fRtoZVgwHCLbsT1Ex+FEm5fHxWOB26x82Nj6lYxFbbf6a8km7+wnUYc9gRuLLA0KYotBWn5ivJLc+
	45KZlC3MohbB54Sg8JWSjqX6dWOHpUrUT+ZDi1xIlsfdJ1FVMqkp7mCC2TT7nMkuz6DXE87bGLdZV
	g9NP87XFnJO+KAGbBkbnx1ZzqR6SY0JE8Ca1dwCT4mYYhqlEMtgffkJTXfeuSZYmhjLMtPN49boRK
	0YNSiIuzo0mXcisnzBNx1A+nsz9GcGhhIKFEt46hAGBfi19mhIirHGMVJo4lKgxwtoUoA/KbD50I3
	2FjB5KRSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd0v9-0006Tg-EQ; Mon, 17 Jun 2019 23:20:15 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hd0v4-0005s4-AV
 for linux-mediatek@lists.infradead.org; Mon, 17 Jun 2019 23:20:12 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 6DE175FEE7;
 Tue, 18 Jun 2019 01:20:04 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="uOfUPqnK"; dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 31DC51C7A096;
 Tue, 18 Jun 2019 01:20:04 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 31DC51C7A096
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1560813604;
 bh=1V+kDFbsQWF2yVaPvwyK9QrJHGtmWAERQrJ9w82bGkI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uOfUPqnKv2RKjGgsDvHezjQzYlcYRsBbJMIJqRIRlElb40ISlrs11soXd5jC2zl81
 E4Chur7eznaSsLZUUQd4Zycv0OIrADj61duD/0a/tkO2bnpzEP8qJMrF2unh8/Dhwj
 t0zoZSCha0UrGy9vZU84+INmpA6qSBnXCDKCEOnXgVmI/+b1EMr8T7AtWafEUhHcC6
 cBforI4Gh6/zPaOZ+crSgSzbRU8Oy/1flM116u1Yli3so42GglBPFuF0hRrat835Rc
 PP2IbTv2l5l66RYGnRKbWLlzyE0fqkQKigHvu1GmqdyYzwD5WpKWyKXcI6qfiR1NR0
 jz9VWQKuREyIg==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Mon, 17 Jun 2019 23:20:04 +0000
Date: Mon, 17 Jun 2019 23:20:04 +0000
Message-ID: <20190617232004.Horde.mAVymZdeb9Jjf29W2PeOggU@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next 0/2] net: mediatek: Add MT7621 TRGMII mode support
References: <20190616182010.18778-1-opensource@vdorst.com>
 <20190617140223.GC25211@lunn.ch>
 <20190617213312.Horde.fcb9-g80Zzfd-IMC8EQy50h@www.vdorst.com>
 <20190617214428.GO17551@lunn.ch>
In-Reply-To: <20190617214428.GO17551@lunn.ch>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_162011_085445_C05BA62A 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, linux-mediatek@lists.infradead.org,
 john@phrozen.org, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+OgoKSGkgQW5kcmV3LAoKPiBPbiBN
b24sIEp1biAxNywgMjAxOSBhdCAwOTozMzoxMlBNICswMDAwLCBSZW7DqSB2YW4gRG9yc3Qgd3Jv
dGU6Cj4+IFF1b3RpbmcgQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPjoKPj4KPj4gPk9uIFN1
biwgSnVuIDE2LCAyMDE5IGF0IDA4OjIwOjA4UE0gKzAyMDAsIFJlbsOpIHZhbiBEb3JzdCB3cm90
ZToKPj4gPj5MaWtlIG1hbnkgb3RoZXIgbWVkaWF0ZWsgU09DcywgdGhlIE1UNzYyMSBTT0MgYW5k
IHRoZSBpbnRlcm5hbCBNVDc1MzAKPj4gPj5zd2l0Y2ggYm90aAo+PiA+PnN1cHBvcnRzIFRSR01J
SSBtb2RlLiBNVDc2MjEgVFJHTUlJIHNwZWVkIGlzIDEyMDBNQml0Lgo+PiA+Cj4+ID5IaSBSZW7D
qQo+PiA+Cj4+Cj4+IEhpIEFuZHJldywKPj4KPj4gPklzIFRSR01JSSB1c2VkIG9ubHkgYmV0d2Vl
biB0aGUgU29DIGFuZCB0aGUgU3dpdGNoPyBPciBkb2VzIGV4dGVybmFsCj4+ID5wb3J0cyBvZiB0
aGUgc3dpdGNoIGFsc28gc3VwcG9ydCAxMjAwTWJpdC9zPyBJZiBleHRlcm5hbCBwb3J0cyBzdXBw
b3J0Cj4+ID50aGlzLCB3aGF0IGRvZXMgZXRodG9vbCBzaG93IGZvciBTcGVlZD8KPj4KPj4gT25s
eSB0aGUgZmlyc3QgR01BQyBvZiB0aGUgU09DIGFuZCBwb3J0IDYgb2YgdGhlIHN3aXRjaCBzdXBw
b3J0cyB0aGlzIG1vZGUuCj4+IFRoZSBzd2l0Y2ggY2FuIGJlIGludGVybmFsIGluIHRoZSBTT0Mg
YnV0IGFsc28gYSBzZXBhcmF0ZSBjaGlwLgo+Pgo+PiBQSFlMSU5LIGFuZCBldGhlcnRvb2wgcmVw
b3J0cyB0aGUgbGluayBhcyAxR2JpdC4KPj4gVGhlIGxpbmsgaXMgZml4ZWQtbGluayB3aXRoIHNw
ZWVkID0gMTAwMC4KPj4KPj4gZG1lc2cgb3V0cHV0IHdpdGggdW5wb3N0ZWQgUEhZTElOSyBwYXRj
aGVzOgo+PiBbICAgIDUuMjM2NzYzXSBtdDc1MzAgbWRpby1idXM6MWY6IGNvbmZpZ3VyaW5nIGZv
ciBmaXhlZC90cmdtaWkgbGluayBtb2RlCj4+IFsgICAgNS4yNDk4MTNdIG10NzUzMCBtZGlvLWJ1
czoxZjogcGh5bGlua19tYWNfY29uZmlnOgo+PiBtb2RlPWZpeGVkL3RyZ21paS8xR2Jwcy9GdWxs
IGFkdj0wMCwwMDAwMDAwMCwwMDAwMDIyMCBwYXVzZT0xMiBsaW5rPTEgYW49MQo+PiBbICAgIDYu
Mzg5NDM1XSBtdGtfc29jX2V0aCAxZTEwMDAwMC5ldGhlcm5ldCBldGgwOiBwaHlsaW5rX21hY19j
b25maWc6Cj4+IG1vZGU9Zml4ZWQvdHJnbWlpLzFHYnBzL0Z1bGwgYWR2PTAwLDAwMDAwMDAwLDAw
MDAwMjIwIHBhdXNlPTEyIGxpbms9MSBhbj0xCj4KPiBXaXRoIFBIWUxJTkssIHlvdSBjYW4gcHJv
YmFibHkgc2V0IHRoZSBmaXhlZCBsaW5rIHRvIHRoZSB0cnVlIDEuMkdicHMuCgpCeSBhZGRpbmcg
c29tZSBleHRyYSBzcGVlZCBzdGF0ZXMgaW4gdGhlIGNvZGUgaXQgc2VlbXMgdG8gd29yay4KCisg
ICAgICAgICAgICAgICBpZiAoc3RhdGUtPnNwZWVkID09IDEyMDApCisgICAgICAgICAgICAgICAg
ICAgICAgIG1jciB8PSBQTUNSX0ZPUkNFX1NQRUVEXzEwMDA7CgpkbWVzZzoKWyAgICA1LjI2MTM3
NV0gbXQ3NTMwIG1kaW8tYnVzOjFmOiBjb25maWd1cmluZyBmb3IgZml4ZWQvdHJnbWlpIGxpbmsg
bW9kZQpbICAgIDUuMjc0MzkwXSBtdDc1MzAgbWRpby1idXM6MWY6IHBoeWxpbmtfbWFjX2NvbmZp
ZzogIAptb2RlPWZpeGVkL3RyZ21paS9VbnN1cHBvcnRlZCAodXBkYXRlIHBoeS1jb3JlLmMpL0Z1
bGwgIAphZHY9MDAsMDAwMDAwMDAsMDAwMDAyMDAgcGF1c2U9MTIgbGluaz0xIGFuPTEKWyAgICA2
LjI5NjYxNF0gbXRrX3NvY19ldGggMWUxMDAwMDAuZXRoZXJuZXQgZXRoMDogY29uZmlndXJpbmcg
Zm9yICAKZml4ZWQvdHJnbWlpIGxpbmsgbW9kZQpbICAgIDYuMzEzNjA4XSBtdGtfc29jX2V0aCAx
ZTEwMDAwMC5ldGhlcm5ldCBldGgwOiBwaHlsaW5rX21hY19jb25maWc6ICAKbW9kZT1maXhlZC90
cmdtaWkvVW5zdXBwb3J0ZWQgKHVwZGF0ZSBwaHkgY29yZS5jKS9GdWxsICAKYWR2PTAwLDAwMDAw
MDAwLDAwMDAwMjAwIHBhdXNlPTEyIGxpbms9MSBhbj0xCgojIGV0aHRvb2wgZXRoMApTZXR0aW5n
cyBmb3IgZXRoMDoKICAgICAgICAgU3VwcG9ydGVkIHBvcnRzOiBbIE1JSSBdCiAgICAgICAgIFN1
cHBvcnRlZCBsaW5rIG1vZGVzOiAgIE5vdCByZXBvcnRlZAogICAgICAgICBTdXBwb3J0ZWQgcGF1
c2UgZnJhbWUgdXNlOiBObwogICAgICAgICBTdXBwb3J0cyBhdXRvLW5lZ290aWF0aW9uOiBObwog
ICAgICAgICBTdXBwb3J0ZWQgRkVDIG1vZGVzOiBOb3QgcmVwb3J0ZWQKICAgICAgICAgQWR2ZXJ0
aXNlZCBsaW5rIG1vZGVzOiAgTm90IHJlcG9ydGVkCiAgICAgICAgIEFkdmVydGlzZWQgcGF1c2Ug
ZnJhbWUgdXNlOiBObwogICAgICAgICBBZHZlcnRpc2VkIGF1dG8tbmVnb3RpYXRpb246IE5vCiAg
ICAgICAgIEFkdmVydGlzZWQgRkVDIG1vZGVzOiBOb3QgcmVwb3J0ZWQKICAgICAgICAgU3BlZWQ6
IDEyMDBNYi9zCiAgICAgICAgIER1cGxleDogRnVsbAogICAgICAgICBQb3J0OiBNSUkKICAgICAg
ICAgUEhZQUQ6IDAKICAgICAgICAgVHJhbnNjZWl2ZXI6IGludGVybmFsCiAgICAgICAgIEF1dG8t
bmVnb3RpYXRpb246IG9uCiAgICAgICAgIEN1cnJlbnQgbWVzc2FnZSBsZXZlbDogMHgwMDAwMDBm
ZiAoMjU1KQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRydiBwcm9iZSBsaW5rIHRp
bWVyIGlmZG93biBpZnVwIHJ4X2VyciB0eF9lcnIKICAgICAgICAgTGluayBkZXRlY3RlZDogeWVz
CgoKPj4gIyBldGh0b29sIGV0aDAKPj4gU2V0dGluZ3MgZm9yIGV0aDA6Cj4+ICAgICAgICAgIFN1
cHBvcnRlZCBwb3J0czogWyBNSUkgXQo+PiAgICAgICAgICBTdXBwb3J0ZWQgbGluayBtb2Rlczog
ICAxMDAwYmFzZVQvRnVsbAo+PiAgICAgICAgICBTdXBwb3J0ZWQgcGF1c2UgZnJhbWUgdXNlOiBO
bwo+PiAgICAgICAgICBTdXBwb3J0cyBhdXRvLW5lZ290aWF0aW9uOiBObwo+PiAgICAgICAgICBT
dXBwb3J0ZWQgRkVDIG1vZGVzOiBOb3QgcmVwb3J0ZWQKPj4gICAgICAgICAgQWR2ZXJ0aXNlZCBs
aW5rIG1vZGVzOiAgMTAwMGJhc2VUL0Z1bGwKPj4gICAgICAgICAgQWR2ZXJ0aXNlZCBwYXVzZSBm
cmFtZSB1c2U6IE5vCj4+ICAgICAgICAgIEFkdmVydGlzZWQgYXV0by1uZWdvdGlhdGlvbjogTm8K
Pj4gICAgICAgICAgQWR2ZXJ0aXNlZCBGRUMgbW9kZXM6IE5vdCByZXBvcnRlZAo+PiAgICAgICAg
ICBTcGVlZDogMTAwME1iL3MKPgo+IFdlIGNvdWxkIGNvbnNpZGVyIGFkZGluZyAxMjAwQmFzZVQv
RnVsbD8KCkkgZG9uJ3QgaGF2ZSBhbnkgb3BpbmlvbiBhYm91dCB0aGlzLgpJdCBpcyBncmVhdCB0
aGF0IGl0IHNob3dzIG5pY2VseSBpbiBldGh0b29sIGJ1dCBJIHRoaW5rIHN1cHBvcnRpbmcgbW9y
ZQpzcGVlZHMgaW4gcGh5X3NwZWVkX3RvX3N0cigpIGlzIGVub3VnaC4KCkFsc28geW91IG1heSB3
YW50IHRvIGFkZCBvdGhlciBTT0NzIHRyZ21paSByYW5nZXMgdG9vOgotIDEyMDBCYXNlVC9GdWxs
IGZvciBtdDc2MjEgb25seQotIDIwMDBCYXNlVC9GdWxsIGZvciBtdDc2MjMgYW5kIG10NzY4Mwot
IDI2MDBCYXNlVC9GdWxsIGZvciBtdDc2MjMgb25seQoKSSBsZWF2ZSB0aGUgZGVjaXNpb24gdG8g
eW91LgoKR3JlYXRzLAoKUmVuw6kKCj4KPiAgICBBbmRyZXcKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0
CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
