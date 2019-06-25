Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156B5557C4
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 21:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5a0UETxl9S8++6966cEea1fyKCnIeIiFqWBRJbrM5E=; b=Kx//2nQlEFQa/W
	SBZM5ib0HqkQZqa6iQUN/arw0p5sTsYaZwvcIg4PlnFf0cwyoLvphKxRNGsYSEpMcxVI3+Yi+YmvX
	MOBZzUoRgNFZg6sSPcuQfMBkPSvU2SykwdMGd+sz0punPx8wQdmN0tPLNpdS1CnHsDbc54PZnF/VS
	ID+cUuM4n/jD75FFybjdQ3RzbE1IkIfSgsVIhHowEp+LXev8Y3dpMIxPOZVUfGnxVkfRZkIvQ4Eql
	VHKdOMJyta5Ho9Z133KEI1gcXCvsXrYEf7dv0/RIzF06p4a4pRlPJrVVH9ywHQNCpwVkkFaDbiVqv
	6BsGRjBLO/ISy7T3+hqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfr8I-00049L-OX; Tue, 25 Jun 2019 19:29:34 +0000
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfr8E-00048n-VM
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 19:29:32 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id E9D101651F3;
 Tue, 25 Jun 2019 15:29:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; s=sasl; bh=+my+WhMrqgL7
 VR0icxCDR+v6790=; b=Okhw9DsdsSF+A7KnE0gT4xNPJpB+Ef7ciXACW0AqCr78
 VFAcZ5z82fVq22G1zAYN8L+FX7NKriz9zXaaUQhVnV7nNuOVmwqvL2pm6Lf9vl/7
 wR4DS/aymvYjyMSRGlG3g9Q2VoOVBiB2r/AjUfIZEyF2XEElYnTcyWZs3Lmewek=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; q=dns; s=sasl; b=UE5HAG
 /vO0Us3y4KwokGWFFNo4p5bvlyiSJqddSzuVMn30vMsoXEJxjDcMWOsE27kwWN2S
 cn2dl49gFtiFez+FnjyAUImA3SQe/SewgqE1wYj357FsVp1j93XZyXII2mwM1ptu
 zB77Emw2nAz/57G8A3MmRv4FXvGiwkvJl3M48=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id DEA841651F2;
 Tue, 25 Jun 2019 15:29:28 -0400 (EDT)
Received: from [192.168.1.134] (unknown [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id EC6761651F1;
 Tue, 25 Jun 2019 15:29:27 -0400 (EDT)
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
To: Andrew Lunn <andrew@lunn.ch>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
 <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
 <1ad9f9a5-8f39-40bd-94bb-6b700f30c4ba@pobox.com>
 <20190625190246.GA27733@lunn.ch>
From: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <4fc51dc4-0eec-30d7-86d1-3404819cf6fe@pobox.com>
Date: Tue, 25 Jun 2019 14:27:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190625190246.GA27733@lunn.ch>
Content-Language: en-US
X-Pobox-Relay-ID: 8C7CBB52-977F-11E9-BFB1-72EEE64BB12D-06139138!pb-smtp2.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_122931_106854_CEB34DAC 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gNi8yNS8xOSAyOjAyIFBNLCBBbmRyZXcgTHVubiB3cm90ZToKPj4gQnV0IHdpbGwgdGhlcmUg
c3RpbGwgYmUgYSBtZWNoYW5pc20gdG8gaWdub3JlIGxpbmsgcGFydG5lcidzIGFkdmVydGlzaW5n
Cj4+IGFuZCBmb3JjZSB0aGVzZSBwYXJhbWV0ZXJzPwo+ID5Gcm9tIG1hbiAxIGV0aHRvb2w6Cj4K
PiAgICAgICAgLWEgLS1zaG93LXBhdXNlCj4gICAgICAgICAgICAgICBRdWVyaWVzIHRoZSBzcGVj
aWZpZWQgRXRoZXJuZXQgZGV2aWNlIGZvciBwYXVzZSBwYXJhbWV0ZXIgaW5mb3JtYXRpb24uCj4K
PiAgICAgICAgLUEgLS1wYXVzZQo+ICAgICAgICAgICAgICAgQ2hhbmdlcyB0aGUgcGF1c2UgcGFy
YW1ldGVycyBvZiB0aGUgc3BlY2lmaWVkIEV0aGVybmV0IGRldmljZS4KPgo+ICAgICAgICAgICAg
YXV0b25lZyBvbnxvZmYKPiAgICAgICAgICAgICAgICAgICBTcGVjaWZpZXMgd2hldGhlciBwYXVz
ZSBhdXRvbmVnb3RpYXRpb24gc2hvdWxkIGJlIGVuYWJsZWQuCj4KPiAgICAgICAgICAgIHJ4IG9u
fG9mZgo+ICAgICAgICAgICAgICAgICAgIFNwZWNpZmllcyB3aGV0aGVyIFJYIHBhdXNlIHNob3Vs
ZCBiZSBlbmFibGVkLgo+Cj4gICAgICAgICAgICB0eCBvbnxvZmYKPiAgICAgICAgICAgICAgICAg
ICBTcGVjaWZpZXMgd2hldGhlciBUWCBwYXVzZSBzaG91bGQgYmUgZW5hYmxlZC4KPgo+IFlvdSBu
ZWVkIHRvIGNoZWNrIHRoZSBkcml2ZXIgdG8gc2VlIGlmIGl0IGFjdHVhbGx5IGltcGxlbWVudHMg
dGhpcwo+IGV0aHRvb2wgY2FsbCwgYnV0IHRoYXQgaXMgaG93IGl0IHNob3VsZCBiZSBjb25maWd1
cmVkLgo+Cj4gCUFuZHJldwo+ClRoYW5rIHlvdSBBbmRyZXcsCgpTbyBpbiB0aGlzIGNvbnRleHQs
IG15IHF1ZXN0aW9uIGlzIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gImVuYWJsaW5nIiBhbmQKImZv
cmNpbmciLsKgIEhlcmUncyB0aGF0IHJlZ2lzdGVyIGZvciB0aGUgbXQ3NjIwICh3aGljaCBoYXMg
YW4gbXQ3NTMwIG9uCml0cyBkaWUpOiBodHRwczovL2ltZ3VyLmNvbS9hL3BUazA2NjjCoCBJIGJl
bGlldmUgdGhpcyBpcyBhbHNvIHdoYXQgUmVuw6kKaXMgc2Vla2luZyBjbGFyaXR5IG9uPwoKVGhh
bmtzLApEYW5pZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbWVkaWF0ZWsK
