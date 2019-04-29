Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBB9DFAA
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 11:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7GVzipyvftmFNynmQcHYhfh1s6eOBe40BcoILczh8z4=; b=K0vB7yEqBplx6nd+u/0hsyzsx
	nhlwjp30Wy/ReAGDcrfIVZ4YZmPIqdm4ABhJw2M1Mue1eiAX4dTUt6pg2K2ZXqPcD1feLEmTWW4Ek
	/qJjnebt6f49gbFqR2XKSfEFY0h9bLL+Vd3Un1IlDIiW80eqY/Vo10f5Vnwd6XZY5TxSsi7XL29O9
	69E9+4tW52B4zxTSCoGvd1iTCBTpJrdclJl1GK1Pv0q+9S3onEBT75OGq4Kl6KH33P3uhQwVnGtxE
	1ZwIE9hUZXH7oJLRU20z0HF8Xe0tZMlwVf5us5U2GXryrqxo3zvEblrfecjNNNwbCM4u9In7ID/YT
	7kpjYLxWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL2nt-00032e-Iy; Mon, 29 Apr 2019 09:42:29 +0000
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL2np-0002pb-HX
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 09:42:27 +0000
Received: from player763.ha.ovh.net (unknown [10.108.42.102])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id E0489191020
 for <linux-mediatek@lists.infradead.org>;
 Mon, 29 Apr 2019 11:42:07 +0200 (CEST)
Received: from RCM-web2.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player763.ha.ovh.net (Postfix) with ESMTPSA id 6AD53539C53C;
 Mon, 29 Apr 2019 09:41:53 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 29 Apr 2019 11:41:53 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Xiaolei Li <xiaolei.li@mediatek.com>
Subject: Re: [RFC PATCH v3 1/1] mtd: rawnand: mtk: Re-license MTK NAND driver
 as Dual MIT/GPL
In-Reply-To: <20190429085116.60081-2-xiaolei.li@mediatek.com>
References: <20190429085116.60081-1-xiaolei.li@mediatek.com>
 <20190429085116.60081-2-xiaolei.li@mediatek.com>
Message-ID: <82cc648b1e92d5ed6876b025a2da1821@milecki.pl>
X-Sender: rafal@milecki.pl
User-Agent: Roundcube Webmail/1.3.9
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 14334113192761462303
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddriedvgddulecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_024225_794662_0C5F535A 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.63.121 listed in list.dnswl.org]
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: daniel.thompson@linaro.org, ryder.lee@mediatek.com,
 srv_heupstream@mediatek.com, richard@nod.at, miquel.raynal@bootlin.com,
 jorge.ramirez-ortiz@linaro.org, yingjoe.chen@mediatek.com,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 yellowriver2010@hotmail.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gMjAxOS0wNC0yOSAxMDo1MSwgWGlhb2xlaSBMaSB3cm90ZToKPiBJdCBpcyBhbGxvd2VkIHRv
IHVzZSBNVEsgTkFORCBkcml2ZXIgd2l0aCBHUEwtMi4wIG9yIE1JVCBsaWNlbnNlLgoKV2hhdCBk
byB5b3UgbWVhbiBieSAiSXQgaXMgYWxsb3dlZCI/IEFjY29yZGluZyB0byB0aGUgbGljZW5zZSBp
dCdzIApyYXRoZXIgbm90LgoKRGlkIHlvdSBtZWFuIHNvbWV0aGluZyBsaWtlICJJdCBpdCB3YW50
ZWQiPwoKCj4gQnV0IG5vdyBpdCBpcyBvbmx5IGxpY2Vuc2VkIGFzIEdQTC0yLjAuCj4gU28gcmUt
bGljZW5zZSBpdCBhcyBkdWFsIE1JVC9HUEwgYW5kIHJlcGxhY2UgbGljZW5zZSB0ZXh0IHdpdGgK
PiBTUERYIHRhZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBYaWFvbGVpIExpIDx4aWFvbGVpLmxpQG1l
ZGlhdGVrLmNvbT4KPiBBY2tlZC1ieTogSm9yZ2UgUmFtaXJlei1PcnRpeiA8am9yZ2UucmFtaXJl
ei1vcnRpekBsaW5hcm8ub3JnPgo+IEFja2VkLWJ5OiBSeWRlciBMZWUgPHJ5ZGVyLmxlZUBtZWRp
YXRlay5jb20+CgpNeSBkZXZlbG9wbWVudCBpbnZvbHZlbWVudCB3YXMgdHJpdmlhbC9taW5pbWFs
LCBzbyBJJ20gT0sgaWYgdGhhdCdzIHdoYXQgCm1vc3QKZGV2ZWxvcGVycyB3YW50LgoKQWNrZWQt
Ynk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlz
dApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
