Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE14DCEBE6
	for <lists+linux-mediatek@lfdr.de>; Mon,  7 Oct 2019 20:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0aGS8NDFtJ73//s1/uvQ5BWzOEl+ZuUWPTpU8wrOKKo=; b=YObwKlF2O+tRu3CF24VlZmN87
	hwU7kNpU9KzDvg7brTchNbcT9AoxgZVOYkdgzEpZ4vmvBA/PXbqq75wYNgGbo6hOk8QllM9mnWG9x
	jiCGY0YckIDI6t3f+6g61iP0o0Vg0Uwfj2jMJH73D8xpbxYunm0O/g+I227I2pt6+Dh9EnbrObvG1
	J7cogrTVc2wA5VT3MQBqakfhs9i7jxg7xI9QzmxC5v6ixP9kjCBjoRr1YT5A8Vr9ynzoUg8WAkymf
	C4RTjBc0WeoivXTJTj1FZwMwad9lmFqRHgqHWdxkE9tV97ho5rbYlE+bIeQDPSiNrjoOLxin6Kf5Q
	pjlXr1tBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXmA-00060u-0h; Mon, 07 Oct 2019 18:30:30 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXlg-0004c7-Dp; Mon, 07 Oct 2019 18:30:02 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 5F2975FBBE;
 Mon,  7 Oct 2019 20:29:51 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="gB6StrYQ"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 103F33BDFA;
 Mon,  7 Oct 2019 20:29:51 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 103F33BDFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1570472991;
 bh=PJRj7CNzltxsgCzgkYQhlPJcmHFIWoaKnYaHjEpLLi0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gB6StrYQNgVdqp0Wvh6BgRF67o63rl9KVghZwNF9rt+P5skb0TrlBjzDbNoU7sp2L
 N8cslb82wxENmE1kJiR1XMHcNDoRKcmRns4k9r2J1YlhZuru7SpxgKCteHwwPiTlTp
 ZlVvxvwWytQf3Cg4EZap6E4lgXeS2S7LenS0p4Ib1Ue+cBQhUBStBtORIH4Bkjw8s5
 OxHW0tzHwEPILuD1hIu9FIVWS0CWIF7/dLaZjiYwy54nhKLMIGW2JtQbUuRDRs6AOT
 7+mYpM4uugfhs/gewc4uMheLEbDr8zDfobM9KWoIb6vbjZgF0Yd/59ErEcDnTt7G2L
 Kyw9Mebp0COig==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Mon, 07 Oct 2019 18:29:51 +0000
Date: Mon, 07 Oct 2019 18:29:51 +0000
Message-ID: <20191007182951.Horde.3g45LJ1CPqFA0OM9CNZND4A@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: MarkLee <Mark-MC.Lee@mediatek.com>
Subject: Re: [PATCH net,v2 1/2] net: ethernet: mediatek: Fix MT7629 missing
 GMII mode support
References: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
 <20191007070844.14212-2-Mark-MC.Lee@mediatek.com>
In-Reply-To: <20191007070844.14212-2-Mark-MC.Lee@mediatek.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_113000_602729_CAB52BE3 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Nelson Chang <nelson.chang@mediatek.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBNYXJrTGVlIDxNYXJrLU1DLkxlZUBtZWRpYXRlay5jb20+OgoKPiBBZGQgbWlzc2lu
ZyBjb25maWd1cmF0aW9uIGZvciBtdDc2MjkgZ21paSBtb2RlIHN1cHBvcnQKPgo+IEZpeGVzOiA3
ZTUzODM3MjY5NGIgKCJuZXQ6IGV0aGVybmV0OiBtZWRpYXRlazogUmUtYWRkIHN1cHBvcnQgU0dN
SUkiKQo+IFNpZ25lZC1vZmYtYnk6IE1hcmtMZWUgPE1hcmstTUMuTGVlQG1lZGlhdGVrLmNvbT4K
PiAtLQo+IHYxLT52MjoKPiAqIG5vIGNoYW5nZQo+IC0tLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210
a19ldGhfc29jLmMgIAo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9z
b2MuYwo+IGluZGV4IGM2MTA2OTM0MGY0Zi4uNzAzYWRiOTY0MjllIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKPiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jCj4gQEAgLTI2MSw2ICsyNjEsNyBA
QCBzdGF0aWMgdm9pZCBtdGtfbWFjX2NvbmZpZyhzdHJ1Y3QgcGh5bGlua19jb25maWcgIAo+ICpj
b25maWcsIHVuc2lnbmVkIGludCBtb2RlLAo+ICAJCWdlX21vZGUgPSAwOwo+ICAJCXN3aXRjaCAo
c3RhdGUtPmludGVyZmFjZSkgewo+ICAJCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RFX01JSToKPiAr
CQljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9HTUlJOgo+ICAJCQlnZV9tb2RlID0gMTsKPiAgCQkJ
YnJlYWs7Cj4gIAkJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfUkVWTUlJOgo+IC0tCj4gMi4xNy4x
CgpSZXZpZXdlZC1ieTogUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVk
aWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
