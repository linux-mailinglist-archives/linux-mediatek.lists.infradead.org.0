Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1550851FE4
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 02:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9TzvGW2O07XE99gsGb8JOe5VPz0SB7bWhe/FKRjDIg=; b=MF5DciJRQGUI7f
	Z2m5746excNGxnM+lSXVRBgNI17+j6aLFyAWQuzX0dmGFdpI1nAqPOuP2/hSPiCVYeEMDNz9fBZEW
	uexFBQfT05DkRvdpiBNjX0h+j0RRpX6lKsHc4CZ2ePLxLFKiWnf9PB6X4mV+52lSWu3QfI20hSwFz
	lNUy8s5p112YzjaaEecoaRyV/imeS3YXT30nieOsMXJjxLMNAqgtX/IgyuFZVkxIj/EL9hRKfDsvy
	dcgdcfW4HvnjwmcE6KtQOKPaHY3KSOCiYk05rmDz63xkQrGsquZfqT1K2uSdyRggmUpsg8Wwb9cjF
	Y13zg6AkgpjQ+tfY2xYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfZGA-0002au-Nl; Tue, 25 Jun 2019 00:24:30 +0000
Received: from pb-smtp1.pobox.com ([64.147.108.70])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfZG7-0002a7-7z
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 00:24:28 +0000
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id B144B166BE8;
 Mon, 24 Jun 2019 20:24:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; s=sasl; bh=r+2vjC+8qYvx
 HZ84MVBNXT/hDG4=; b=O0VuT9wZ72iFZZ/b9C//DMGpe6ZZgdGq4fv62raKskLq
 Oo61S+/rij+Ewbuwf71XAsqYx5aB1czewvr9dmc5IUOmC5G2ryumNn8fhXtG9U26
 YNnuZfaBA9NF0FGPqyuF6B65+UaBXqYqQA5x4crYkh87iIzIbJuhFCFgw6yTuzM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; q=dns; s=sasl; b=UpzZkQ
 LII21HIs/ulvwXSG/G8X3Wt1TzO5MVKalnQk9wRKUWHPnISAh9wZTzRileMlo3k/
 msaqxR663keGrMwmpMGUTMzHIBNk5H9tmWHT0BhHG6EYiuAPV8DxfXOVLFRk3Yut
 aZlnmBGw3ggPHfpwloB7jYHUc9HcxT20cCF+c=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id A7848166BE7;
 Mon, 24 Jun 2019 20:24:20 -0400 (EDT)
Received: from [192.168.1.134] (unknown [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 88C3B166BE6;
 Mon, 24 Jun 2019 20:24:16 -0400 (EDT)
Subject: Re: [PATCH RFC net-next 5/5] net: dsa: mt7530: Add
 mediatek,ephy-handle to isolate external phy
To: Andrew Lunn <andrew@lunn.ch>, =?UTF-8?Q?Ren=c3=a9_van_Dorst?=
 <opensource@vdorst.com>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-6-opensource@vdorst.com>
 <20190624215248.GC31306@lunn.ch>
From: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <2a421ed9-94ed-a454-29c2-f52f6a070a70@pobox.com>
Date: Mon, 24 Jun 2019 19:22:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190624215248.GC31306@lunn.ch>
Content-Language: en-US
X-Pobox-Relay-ID: 914C6F74-96DF-11E9-9D5E-46F8B7964D18-06139138!pb-smtp1.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_172427_370040_0EC9430E 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
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
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.70 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gNi8yNC8xOSA0OjUyIFBNLCBBbmRyZXcgTHVubiB3cm90ZToKPj4gK3N0YXRpYyBpbnQgbXQ3
NTMwX2lzb2xhdGVfZXBoeShzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMsCj4+ICsJCQkgICAgICAgc3Ry
dWN0IGRldmljZV9ub2RlICplcGh5X25vZGUpCj4+ICt7Cj4+ICsJc3RydWN0IHBoeV9kZXZpY2Ug
KnBoeWRldiA9IG9mX3BoeV9maW5kX2RldmljZShlcGh5X25vZGUpOwo+PiArCWludCByZXQ7Cj4+
ICsKPj4gKwlpZiAoIXBoeWRldikKPj4gKwkJcmV0dXJuIDA7Cj4+ICsKPj4gKwlyZXQgPSBwaHlf
bW9kaWZ5KHBoeWRldiwgTUlJX0JNQ1IsIDAsIChCTUNSX0lTT0xBVEUgfCBCTUNSX1BET1dOKSk7
Cj4gZ2VucGh5X3N1c3BlbmQoKSBkb2VzIHdoYXQgeW91IHdhbnQuCj4KPj4gKwlpZiAocmV0KQo+
PiArCQlkZXZfZXJyKGRzLT5kZXYsICJGYWlsZWQgdG8gcHV0IHBoeSAlcyBpbiBpc29sYXRpb24g
bW9kZSFcbiIsCj4+ICsJCQllcGh5X25vZGUtPmZ1bGxfbmFtZSk7Cj4+ICsJZWxzZQo+PiArCQlk
ZXZfaW5mbyhkcy0+ZGV2LCAiUGh5ICVzIGluIGlzb2xhdGlvbiBtb2RlIVxuIiwKPj4gKwkJCSBl
cGh5X25vZGUtPmZ1bGxfbmFtZSk7Cj4gTm8gbmVlZCB0byBjbG9nIHVwIHRoZSBzeXN0ZW0gd2l0
aCB5ZXQgbW9yZSBrZXJuZWwgbWVzc2FnZXMuCj4KPiAgICBBbmRyZXcKPgpZZXMsIGtlZXAgaW4g
bWluZCB0aGF0IG1hbnkgbXQ3NTMwLWJhc2VkIGRldmljZXMgaGF2ZSBhIDU2ayBzZXJpYWwKY29u
c29sZSB0aGF0IGdldHMgcmluZyBidWZmZXIgc3Bldy7CoCBUaGlzIGNyZWF0ZWQgYSByZWFsIHBy
b2JsZW0gb24gdGhlCm10NzYyMCB3aWZpIGRyaXZlcnMgd2hlbiB0aGV5IHNwZXdlZCBldmVyeSB0
aW1lIGEgcGFja2V0IG5lZWRlZCB0byBiZQpkcm9wcGVkLsKgIFNvIGF0IHRoZSB2ZXJ5IGxlYXN0
LCBmb3IgYW55IG1lc3NhZ2UgdGhhdCBjYW4gYmUgc3BhbW1lZCwKcmF0ZSBsaW1pdCBpdCBwbGVh
c2UuCgpEYW5pZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbWVkaWF0ZWsK
