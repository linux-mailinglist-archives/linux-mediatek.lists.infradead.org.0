Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68794493BA
	for <lists+linux-mediatek@lfdr.de>; Mon, 17 Jun 2019 23:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rsQGrjN4vg2BMk4mvQFm83Iu6N4WyXT9/qVuOhFLKok=; b=t8Um9y7q4c1kh4abjzvat703y
	gHEyYz7WAu0TfSQtRryHmMeMavMYhBG6znN4dXtdOQ/DHYG630difDRS24prlNQiJ9EG0hO5kBgL8
	mm18SZFxuMkyQenA9v/gXdbIOdSmvM2PjZfE3qsO5x6MfydWUPILi7iaJGxwFiOSPS50eST2u0MNU
	yGKU49DhZNxWiz5iy11MiniarnMbUjk1+rPXWhV0ivWXW4+CvoVXevwjPxUnrJD788lRg59CHXJ2N
	O5EwyDgK40yBEilcBiNRuosVX+Zqakp26SQExzUZbMtSRrWQV1G7sWLEoHNlcbvE+dAlU4tfYgsQP
	+bdYgAwHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczFg-0002Zg-Q5; Mon, 17 Jun 2019 21:33:20 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hczFc-0002Yt-RY
 for linux-mediatek@lists.infradead.org; Mon, 17 Jun 2019 21:33:19 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 56AD65FEE7;
 Mon, 17 Jun 2019 23:33:12 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="HZgKxU3I"; dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 168891C79191;
 Mon, 17 Jun 2019 23:33:12 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 168891C79191
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1560807192;
 bh=mpnW9o2NLTWC9DpV89ZrktdnkCj2Hk6BtAKmEs1R7Io=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HZgKxU3IqFhH818JqCma8/K3LSV4G9kSX63CnGbmPzy+ryh6//NEyxE0Amsd0s/RK
 k92SraEHuiQKFMQCSWdJb+Q3Z4oGDqMZMMHQQajOArKc4DYo+o8HK1GjWsEJEyum6w
 KMKFnzGCXNqOwGCH362eRwwKoJdxQRwRysuXHnHk1Z8/9NqbX9GoEaQzOlaP3+o07L
 3HMijpcylvGBsh08uk7C281KkLD7EA001NidmPBtopdbh+R7q1mhLR1pGSQSCSU+Du
 XDxoWzNjz37gPi8riDve5Gz6Kh8FmHOEoaUoibX2FKj1k31NtURqtng2ia+vXzpqBE
 XP8LnlTrOr7oA==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Mon, 17 Jun 2019 21:33:12 +0000
Date: Mon, 17 Jun 2019 21:33:12 +0000
Message-ID: <20190617213312.Horde.fcb9-g80Zzfd-IMC8EQy50h@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next 0/2] net: mediatek: Add MT7621 TRGMII mode support
References: <20190616182010.18778-1-opensource@vdorst.com>
 <20190617140223.GC25211@lunn.ch>
In-Reply-To: <20190617140223.GC25211@lunn.ch>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_143317_591026_102F0872 
X-CRM114-Status: GOOD (  12.23  )
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

UXVvdGluZyBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+OgoKPiBPbiBTdW4sIEp1biAxNiwg
MjAxOSBhdCAwODoyMDowOFBNICswMjAwLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4+IExpa2Ug
bWFueSBvdGhlciBtZWRpYXRlayBTT0NzLCB0aGUgTVQ3NjIxIFNPQyBhbmQgdGhlIGludGVybmFs
ICAKPj4gTVQ3NTMwIHN3aXRjaCBib3RoCj4+IHN1cHBvcnRzIFRSR01JSSBtb2RlLiBNVDc2MjEg
VFJHTUlJIHNwZWVkIGlzIDEyMDBNQml0Lgo+Cj4gSGkgUmVuw6kKPgoKSGkgQW5kcmV3LAoKPiBJ
cyBUUkdNSUkgdXNlZCBvbmx5IGJldHdlZW4gdGhlIFNvQyBhbmQgdGhlIFN3aXRjaD8gT3IgZG9l
cyBleHRlcm5hbAo+IHBvcnRzIG9mIHRoZSBzd2l0Y2ggYWxzbyBzdXBwb3J0IDEyMDBNYml0L3M/
IElmIGV4dGVybmFsIHBvcnRzIHN1cHBvcnQKPiB0aGlzLCB3aGF0IGRvZXMgZXRodG9vbCBzaG93
IGZvciBTcGVlZD8KCk9ubHkgdGhlIGZpcnN0IEdNQUMgb2YgdGhlIFNPQyBhbmQgcG9ydCA2IG9m
IHRoZSBzd2l0Y2ggc3VwcG9ydHMgdGhpcyBtb2RlLgpUaGUgc3dpdGNoIGNhbiBiZSBpbnRlcm5h
bCBpbiB0aGUgU09DIGJ1dCBhbHNvIGEgc2VwYXJhdGUgY2hpcC4KClBIWUxJTksgYW5kIGV0aGVy
dG9vbCByZXBvcnRzIHRoZSBsaW5rIGFzIDFHYml0LgpUaGUgbGluayBpcyBmaXhlZC1saW5rIHdp
dGggc3BlZWQgPSAxMDAwLgoKZG1lc2cgb3V0cHV0IHdpdGggdW5wb3N0ZWQgUEhZTElOSyBwYXRj
aGVzOgpbICAgIDUuMjM2NzYzXSBtdDc1MzAgbWRpby1idXM6MWY6IGNvbmZpZ3VyaW5nIGZvciBm
aXhlZC90cmdtaWkgbGluayBtb2RlClsgICAgNS4yNDk4MTNdIG10NzUzMCBtZGlvLWJ1czoxZjog
cGh5bGlua19tYWNfY29uZmlnOiAgCm1vZGU9Zml4ZWQvdHJnbWlpLzFHYnBzL0Z1bGwgYWR2PTAw
LDAwMDAwMDAwLDAwMDAwMjIwIHBhdXNlPTEyIGxpbms9MSAgCmFuPTEKWyAgICA2LjM4OTQzNV0g
bXRrX3NvY19ldGggMWUxMDAwMDAuZXRoZXJuZXQgZXRoMDogcGh5bGlua19tYWNfY29uZmlnOiAg
Cm1vZGU9Zml4ZWQvdHJnbWlpLzFHYnBzL0Z1bGwgYWR2PTAwLDAwMDAwMDAwLDAwMDAwMjIwIHBh
dXNlPTEyIGxpbms9MSAgCmFuPTEKCiMgZXRodG9vbCBldGgwClNldHRpbmdzIGZvciBldGgwOgog
ICAgICAgICAgU3VwcG9ydGVkIHBvcnRzOiBbIE1JSSBdCiAgICAgICAgICBTdXBwb3J0ZWQgbGlu
ayBtb2RlczogICAxMDAwYmFzZVQvRnVsbAogICAgICAgICAgU3VwcG9ydGVkIHBhdXNlIGZyYW1l
IHVzZTogTm8KICAgICAgICAgIFN1cHBvcnRzIGF1dG8tbmVnb3RpYXRpb246IE5vCiAgICAgICAg
ICBTdXBwb3J0ZWQgRkVDIG1vZGVzOiBOb3QgcmVwb3J0ZWQKICAgICAgICAgIEFkdmVydGlzZWQg
bGluayBtb2RlczogIDEwMDBiYXNlVC9GdWxsCiAgICAgICAgICBBZHZlcnRpc2VkIHBhdXNlIGZy
YW1lIHVzZTogTm8KICAgICAgICAgIEFkdmVydGlzZWQgYXV0by1uZWdvdGlhdGlvbjogTm8KICAg
ICAgICAgIEFkdmVydGlzZWQgRkVDIG1vZGVzOiBOb3QgcmVwb3J0ZWQKICAgICAgICAgIFNwZWVk
OiAxMDAwTWIvcwogICAgICAgICAgRHVwbGV4OiBGdWxsCiAgICAgICAgICBQb3J0OiBNSUkKICAg
ICAgICAgIFBIWUFEOiAwCiAgICAgICAgICBUcmFuc2NlaXZlcjogaW50ZXJuYWwKICAgICAgICAg
IEF1dG8tbmVnb3RpYXRpb246IG9uCiAgICAgICAgICBDdXJyZW50IG1lc3NhZ2UgbGV2ZWw6IDB4
MDAwMDAwZmYgKDI1NSkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZHJ2IHByb2Jl
IGxpbmsgdGltZXIgaWZkb3duIGlmdXAgcnhfZXJyIHR4X2VycgogICAgICAgICAgTGluayBkZXRl
Y3RlZDogeWVzCgoKCkkgYWxyZWFkeSBoYXZlIHJlcG9ydCBmcm9tIGEgTVQ3NjIzIHVzZXIgdGhh
dCB0aGlzIHBhdGNoIGdpdmVzIGlzc3Vlcy4KCkkgc2VuZCB2MiBvZiB0aGUgcGF0Y2ggaWYgSSBm
aXhlZCB0aGF0IGlzc3VlLgoKQWxzbyBJIHRoaW5rIGl0IGlzIGJldHRlciB0byBhZGQgYSBYVEFM
IGZyZXF1ZW5jeSBjaGVjay4KVGhlIFBMTCB2YWx1ZXMgYXJlIG9ubHkgdmFsaWQgd2l0aCBhIDQw
TUh6IGNyeXN0YWwuCgpBbnkgb3RoZXIgY29tbWVudHMgZm9yIHYyPwoKR3JlYXRzLAoKUmVuw6kK
Cgo+Cj4gICAgICBUaGFua3MKPiAJQW5kcmV3CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1t
ZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
