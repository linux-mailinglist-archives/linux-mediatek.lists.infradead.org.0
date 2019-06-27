Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBB858AC9
	for <lists+linux-mediatek@lfdr.de>; Thu, 27 Jun 2019 21:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0fpQND3sLWPQQNADfNZg1Dvd1aywFqUSvWo6xtkEMk=; b=a2fNgW4A0xlvs+
	54a4c+yUdqv7v5xZOj3Dzd6MyXiTPT7sJeHsvO3wAvHFKoFlOXgGNiPtHjhB9lAnijU80q3N6/kzb
	P43qMbjWa8aWxwFB+F0UePYK86dfa2+tasaqUnn2BjAl6uYUVD4Wvrb7whg0GwdJA9A3xMLxU9YDg
	i3OkpNU4VwgA04RocNnGsWPypE3kV2SXG63/NKQRxWhQj13U4IGi0xuc0x7xTlAis2OLTz1KqoDly
	rLMppsYA5IPRroiKB0Avned6XSMIZpKOR6mQylMHFRWXvgL/Jh+g/vypteJPlj05jPD8IcAF3OQae
	5r+FX1fxojaNERZXagvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZnW-00072g-MH; Thu, 27 Jun 2019 19:11:06 +0000
Received: from pb-smtp1.pobox.com ([64.147.108.70])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZnS-00071i-2O
 for linux-mediatek@lists.infradead.org; Thu, 27 Jun 2019 19:11:03 +0000
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id A2AED157CAE;
 Thu, 27 Jun 2019 15:10:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; s=sasl; bh=wb9ITU4KH88C
 r4Wml648++v4DXU=; b=Rot878kMWE5XjbhBSU7QDKCIAgG6d5RBTIH120Iog9Qw
 W3R3fzUiv4n3/zZ109X4lpqnVdfsaMS/GrtVF0iReaVTkMGAK9o3SRJIadNVJL9S
 5oylDOK6A19ikEt42myiaeTth2AaddFoTrHy6Hcm3f+SGMyqne4grOqqQ6Mnzsk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; q=dns; s=sasl; b=MiZNDA
 sR3PuH0LmolzMmwuXjTO7B9N7vuwsFLVSrnQphaPw01ZlzDxOzBqeDXps+Q21ULx
 n5vMeeRFDHmTPapRI5niUMMdrV/n64vEE0FLpEJg07tyqMsA/bUisWUBxMadVd92
 VE3cd3TV+GkBoWS/9o4SxmIEQoWnVtARdm4Xo=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 98848157CAD;
 Thu, 27 Jun 2019 15:10:55 -0400 (EDT)
Received: from [192.168.1.134] (unknown [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 6957B157CAC;
 Thu, 27 Jun 2019 15:10:53 -0400 (EDT)
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
From: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <e469daa1-3e28-db9c-e29a-7f68cc676fda@pobox.com>
Date: Thu, 27 Jun 2019 14:09:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190625204148.GB27733@lunn.ch>
Content-Language: en-US
X-Pobox-Relay-ID: 49051B76-990F-11E9-8B0D-46F8B7964D18-06139138!pb-smtp1.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_121102_203312_8F5A4262 
X-CRM114-Status: GOOD (  22.83  )
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
 sean.wang@mediatek.com, Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 vivien.didelot@gmail.com,
 =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

CgpPbiA2LzI1LzE5IDM6NDEgUE0sIEFuZHJldyBMdW5uIHdyb3RlOgo+IE9uIFR1ZSwgSnVuIDI1
LCAyMDE5IGF0IDAyOjI3OjU1UE0gLTA1MDAsIERhbmllbCBTYW50b3Mgd3JvdGU6Cj4+IE9uIDYv
MjUvMTkgMjowMiBQTSwgQW5kcmV3IEx1bm4gd3JvdGU6Cj4+Pj4gQnV0IHdpbGwgdGhlcmUgc3Rp
bGwgYmUgYSBtZWNoYW5pc20gdG8gaWdub3JlIGxpbmsgcGFydG5lcidzIGFkdmVydGlzaW5nCj4+
Pj4gYW5kIGZvcmNlIHRoZXNlIHBhcmFtZXRlcnM/Cj4+PiA+RnJvbSBtYW4gMSBldGh0b29sOgo+
Pj4KPj4+ICAgICAgICAtYSAtLXNob3ctcGF1c2UKPj4+ICAgICAgICAgICAgICAgUXVlcmllcyB0
aGUgc3BlY2lmaWVkIEV0aGVybmV0IGRldmljZSBmb3IgcGF1c2UgcGFyYW1ldGVyIGluZm9ybWF0
aW9uLgo+Pj4KPj4+ICAgICAgICAtQSAtLXBhdXNlCj4+PiAgICAgICAgICAgICAgIENoYW5nZXMg
dGhlIHBhdXNlIHBhcmFtZXRlcnMgb2YgdGhlIHNwZWNpZmllZCBFdGhlcm5ldCBkZXZpY2UuCj4+
Pgo+Pj4gICAgICAgICAgICBhdXRvbmVnIG9ufG9mZgo+Pj4gICAgICAgICAgICAgICAgICAgU3Bl
Y2lmaWVzIHdoZXRoZXIgcGF1c2UgYXV0b25lZ290aWF0aW9uIHNob3VsZCBiZSBlbmFibGVkLgo+
Pj4KPj4+ICAgICAgICAgICAgcnggb258b2ZmCj4+PiAgICAgICAgICAgICAgICAgICBTcGVjaWZp
ZXMgd2hldGhlciBSWCBwYXVzZSBzaG91bGQgYmUgZW5hYmxlZC4KPj4+Cj4+PiAgICAgICAgICAg
IHR4IG9ufG9mZgo+Pj4gICAgICAgICAgICAgICAgICAgU3BlY2lmaWVzIHdoZXRoZXIgVFggcGF1
c2Ugc2hvdWxkIGJlIGVuYWJsZWQuCj4+Pgo+Pj4gWW91IG5lZWQgdG8gY2hlY2sgdGhlIGRyaXZl
ciB0byBzZWUgaWYgaXQgYWN0dWFsbHkgaW1wbGVtZW50cyB0aGlzCj4+PiBldGh0b29sIGNhbGws
IGJ1dCB0aGF0IGlzIGhvdyBpdCBzaG91bGQgYmUgY29uZmlndXJlZC4KPj4+Cj4+PiAJQW5kcmV3
Cj4+Pgo+PiBUaGFuayB5b3UgQW5kcmV3LAo+Pgo+PiBTbyBpbiB0aGlzIGNvbnRleHQsIG15IHF1
ZXN0aW9uIGlzIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gImVuYWJsaW5nIiBhbmQKPj4gImZvcmNp
bmciLsKgIEhlcmUncyB0aGF0IHJlZ2lzdGVyIGZvciB0aGUgbXQ3NjIwICh3aGljaCBoYXMgYW4g
bXQ3NTMwIG9uCj4+IGl0cyBkaWUpOiBodHRwczovL2ltZ3VyLmNvbS9hL3BUazA2NjjCoCBJIGJl
bGlldmUgdGhpcyBpcyBhbHNvIHdoYXQgUmVuw6kKPj4gaXMgc2Vla2luZyBjbGFyaXR5IG9uPwo+
IExldHMgc3RhcnQgd2l0aCBub3JtYWwgb3BlcmF0aW9uLiBJZiB0aGUgTUFDIHN1cHBvcnRzIHBh
dXNlIG9yIGFzeW0KPiBwYXVzZSwgaXQgY2FsbHMgcGh5X3N1cHBvcnRfc3ltX3BhdXNlKCkgb3Ig
cGh5X3N1cHBvcnRfYXN5bV9wYXVzZSgpLgo+IHBoeWxpYiB3aWxsIHRoZW4gY29uZmlndXJlIHRo
ZSBQSFkgdG8gYWR2ZXJ0aXNlIHBhdXNlIGFzIGFwcHJvcHJpYXRlLgo+IE9uY2UgYXV0by1uZWcg
aGFzIGNvbXBsZXRlZCwgdGhlIHJlc3VsdHMgb2YgdGhlIG5lZ290aWF0aW9uIGFyZSBzZXQgaW4K
PiBwaHlkZXYuIFNvIHBoZGV2LT5wYXVzZSBhbmQgcGh5ZGV2LT5hc3ltX3BhdXNlLiBUaGUgTUFD
IGNhbGxiYWNrIGlzCj4gdGhlbiB1c2VkIHRvIHRlbGwgdGhlIE1BQyBhYm91dCB0aGUgYXV0b25l
ZyByZXN1bHRzLiBUaGUgTUFDIHNob3VsZCBiZQo+IHByb2dyYW1tZWQgdXNpbmcgdGhlIHZhbHVl
cyBpbiBwaGRldi0+cGF1c2UgYW5kIHBoeWRldi0+YXN5bV9wYXVzZS4KPgo+IEZvciBldGh0b29s
LCB0aGUgTUFDIGRyaXZlciBuZWVkcyB0byBpbXBsZW1lbnQgLmdldF9wYXVzZXBhcmFtIGFuZAo+
IC5zZXRfcGF1c2VwYXJhbS4gVGhlIHNldF9wYXVzZXBhcmFtIG5lZWRzIHRvIHZhbGlkYXRlIHRo
ZSBzZXR0aW5ncywKPiB1c2luZyBwaHlfdmFsaWRhdGVfcGF1c2UoKS4gSWYgdmFsaWQsIHBoeV9z
ZXRfYXN5bV9wYXVzZSgpIGlzIHVzZWQgdG8KPiB0ZWxsIHRoZSBQSFkgYWJvdXQgdGhlIG5ldyBj
b25maWd1cmF0aW9uLiBUaGlzIHdpbGwgdHJpZ2dlciBhIG5ldwo+IGF1dG8tbmVnIGlmIGF1dG8t
bmVnIGlzIGVuYWJsZWQsIGFuZCB0aGUgcmVzdWx0cyB3aWxsIGJlIHBhc3NlZCBiYWNrCj4gaW4g
dGhlIHVzdWFsIHdheS4gSWYgYXV0by1uZWcgaXMgZGlzYWJsZWQsIG9yIHBhdXNlIGF1dG8tbmVn
IGlzCj4gZGlzYWJsZWQsIHRoZSBNQUMgc2hvdWxkIGNvbmZpZ3VyZSBwYXVzZSBkaXJlY3RseSBi
YXNlZCBvbiB0aGUKPiBzZXR0aW5ncyBwYXNzZWQuCj4KPiBMb29raW5nIGF0IHRoZSBkYXRhIHNo
ZWV0IHBhZ2UsIHlvdSB3YW50IEZPUkNFX01PREVfUG4gc2V0LiBZb3UgbmV2ZXIKPiB3YW50IHRo
ZSBNQUMgZGlyZWN0bHkgdGFsa2luZyB0byB0aGUgUEhZLiBCYWQgdGhpbmdzIHdpbGwgaGFwcGVu
LgoKU28gd2hhdCBleGFjdGx5IGRvIHlvdSBtZWFuIGJ5IHRoZSBNQUMgZGlyZWN0bHkgdGFsa2lu
ZyB0byB0aGUgUEhZP8KgIERvCnlvdSBtZWFuIHNldHRpbmcgc3BlZWQsIGR1cGxleCwgZXRjLiB2
aWEgdGhlIE1BQyByZWdpc3RlcnMgaW5zdGVhZCBvZgp2aWEgTURJTyB0byB0aGUgTUlJIHJlZ2lz
dGVycyBvZiB0aGUgUEhZPwoKPiBUaGVuIHVzZSBGT1JDRV9SWF9GQ19QbiBhbmQgRk9SQ0VfVFhf
UG4gdG8gcmVmbGVjdCBwaHlkZXYtPnBhdXNlIGFuZAo+IHBoeWRldi0+YXN5bV9wYXVzZS4KPgo+
IFRoZSBzYW1lIGlkZWEgYXBwbGllcyB3aGVuIHVzaW5nIHBoeWxpbmsuCj4KPiAgICAgQW5kcmV3
CgpZb3UncmUgaGVscCBpcyBncmVhdGx5IGFwcHJlY2lhdGVkIGhlcmUuwqAgQWRtaXR0ZWRseSwg
SSdtIGFsc28gdHJ5aW5nIHRvCmdldCB0aGlzIHdvcmtpbmcgaW4gdGhlIG5vdyBkZXByZWNhdGVk
IHN3Y29uZmlnIGZvciBhIDMuMTgga2VybmVsIHRoYXQncwppbiBwcm9kdWN0aW9uLsKgIEluIG15
IGNvZGUsIEkgaGFkIGp1c3Qgc2V0IHRoZSBhcHByb3ByaWF0ZSBiaXRzIGluIGJvdGgKdGhlIE1B
QyBhbmQgbWlpIHJlZ2lzdGVycyAtLSBkaWQgSSBqdXN0IHNob290IG15c2VsZiBpbiB0aGUgZm9v
dCBvciBvbmx5CnRvZSBvciB0d28/IDopwqAgSSBzaG91bGQgcHJvYmFibHkgc3RhcnQgYSBzZXBh
cmF0ZSB0aHJlYWQgZm9yIHRoaXMuwqAKKEFuZCBwcm9iYWJseSBhdHRlbXB0IHRvIHdyZXN0bGUg
YW4gbXQ3NTMwIHByb2dyYW1tZXIncyBndWlkZSBvdXQgb2YKTWVkaWFUZWshKQoKVGhhbmtzLApE
YW5pZWwKClBTOiBJIGZvdW5kIGEgcmF0aGVyIGh1bW9yb3VzIHF1b3RlIGZyb20gdGhlIG10NzYy
MSBkYXRhc2hlZXQgcmVnYXJkaW5nCnRoZSBNQUMgcmVnaXN0ZXJzIChhdCAweDMwMDAgZm9yIHBv
cnQgMCwgMHgzMTAwIGZvciBwb3J0IDEsIGV0Yy4pOgoKICAgIDIuNCBMaW5rIFN0YXR1cwoKICAg
IFlvdSBjYW4gZmluZCBNQUMgY29udHJvbCByZWdpc3RlciBwdXQgYXQgMHgzNTAwIGZvciBNQUMg
NSwgYW5kCiAgICAweDM2MDAgZm9yIE1BQyA2LiBZb3UgY2FuIGNoYW5nZQogICAgTUFDIGFiaWxp
dHkgYXQgdGhpcyByZWdpc3Rlci4gV2Ugd291bGQgc3VnZ2VzdCBkb27igJl0IHVzZSB0aGUKICAg
IHJlZ2lzdGVyIDB4MzAwMCB0byAweDM0MDAuIEl0IG1heSBub3QKICAgIHdvcmsuCgpJJ20gbm90
IHN1cmUgaWYgdGhpcyBvbmx5IGFwcGxpZXMgdG8gc29tZXRoaW5nIGluIGJldHdlZW4gdGhlIG10
NzYyMSBhbmQKaXQncyBpbnRlcm5hbCBtdDc1MzAgb3Igbm90LgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0
CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
