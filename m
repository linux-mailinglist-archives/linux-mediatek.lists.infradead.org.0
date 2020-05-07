Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 406291C9702
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 May 2020 19:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDdugWjgdatoBTwKnna3/edkM41HVb8vslz1o5gFlQQ=; b=RpfXzhBXaibeyq
	KsWOjRph6of3c83lHbW6hKwFee4rN1NiE+/KojATNa2H38zeVQEyjnV/7AVaEH/nyDKU++J78xaqt
	dpyaO7BA9GZb4xCQyAihioJo/imIdrtBY+67Sq+l+7g/HKBupi4N/sCu55XVgPCRoLkrvhRgyu3Av
	QdgjScyZlPUHgcyu54X/Qtwq4FeDAza6CQ0AdzSyRHvPqafTrfC3HuTlNgJlMyd/uNsfUa5Lqiugq
	riDP6oxy23hCwHtRfTFctifW62C5bnh5TzHaE9p1AgVi8hw4ddbeGX2jhRXHRQTIs/t5Uz5U1Ar/N
	lEx4ZEf6LZZEvRolk7WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjuI-00044g-88; Thu, 07 May 2020 17:01:58 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjuE-000441-JY
 for linux-mediatek@lists.infradead.org; Thu, 07 May 2020 17:01:56 +0000
Received: by mail-qt1-x843.google.com with SMTP id p12so1016471qtn.13
 for <linux-mediatek@lists.infradead.org>; Thu, 07 May 2020 10:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AogGO7KQ2cbQNwYsj968bylJ7TQTugwVFwFQ369LPww=;
 b=B9521p8GGVcZpv1qM6GfYzouKvPp4grKwjYFaXKUDPG4zfEuTqq3geopKa9AL0tOb+
 5Mxtar2ygaAjvMyZDIRb0W9xvnacTchxTSMHI1tZPA2PbNDtQCUh8e9BQackKUrAvFvD
 K/r3KBj6JEFLxpFwhYYzgnUafXu+gr4v+lpgKsj9w51U75EBYUNEN5AEE+mpiXIoVLfX
 YUCLKWuxDU6umtMxIF3sS2wwRZWavK4GF7RBR78va/EV/Trd0n92xXmWZM15cG1YUCPE
 447hhPafKpmEgEnBqlAtJlVO7nr1VcdIbXbeVCxKhZwsqhFlAFqrzadqLRKUS34zqkYz
 Sbkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AogGO7KQ2cbQNwYsj968bylJ7TQTugwVFwFQ369LPww=;
 b=JKLqOLylm/mYYNBk/Fvw6Gm6ja1J9PE06HEwhlybTR5H8HgI0NMllqoGNdlU6vJlaZ
 e7gWOwxzp45WWU4N1PhvS9aEiKY3Nhns5Y8jfpvRPotM5U7HWBj159pPadQAqCQ2b2c+
 ww/GRh+JesWCMS0ZGficNfMiHlPuwwBMxIaCMwkPdSs0YfO7SOlUBB4e1tFhx/hEKY4r
 UHYrVzEDbvyUX7kIHMrmNKcZG9bwfPAuX3SIuOWNXYuA3kNHmmrWvwNtgZt0WIElz5zs
 ZB1jff8wz0qP3ibX/7gaHNrWoJJWHrBrqebq+PrQxZaMQnpa1ORE71NN/7MjACp7I0t9
 Q48g==
X-Gm-Message-State: AGi0PuZz7Sim9TnmQ5d6Oue+ekayZQvoL+2XNKbSFZMXuTndWYt+X54U
 Tbs/uHIv183qj8cwO3iyVPQR9ZbCk9KH5ZTl+kGmyw==
X-Google-Smtp-Source: APiQypIICB3A2kzpJhwMTKVrN3+4Xn62nAmH23vrPICDvrpFzW7p9tV7KhQx84nSLJLOK2UmDVQW8wd1hjqshOZqSn0=
X-Received: by 2002:ac8:568b:: with SMTP id h11mr15009985qta.197.1588870913354; 
 Thu, 07 May 2020 10:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
 <1588844771.5921.27.camel@mtksdccf07>
 <CAMpxmJW4qZ_Wnp_oRa=j=YnvTzVa3HZ13Hgwy71jS6L3Bd3oMQ@mail.gmail.com>
 <20200507131645.GM208718@lunn.ch>
In-Reply-To: <20200507131645.GM208718@lunn.ch>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 7 May 2020 19:01:42 +0200
Message-ID: <CAMpxmJV7xGhE4DoZAEYg=wjE-a1MEnc7carZ39zdvWtKAp+qfA@mail.gmail.com>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_100154_666983_771AF8A7 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Felix Fietkau <nbd@openwrt.org>, Arnd Bergmann <arnd@arndb.de>,
 netdev <netdev@vger.kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Sean Wang <sean.wang@mediatek.com>, LKML <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "Mark-MC.Lee" <Mark-MC.Lee@mediatek.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Y3p3LiwgNyBtYWogMjAyMCBvIDE1OjE2IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4gbmFw
aXNhxYIoYSk6Cj4KPiBPbiBUaHUsIE1heSAwNywgMjAyMCBhdCAxMjo1MDoxNVBNICswMjAwLCBC
YXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gY3p3LiwgNyBtYWogMjAyMCBvIDExOjQ2IE1h
cmstTUMuTGVlIDxNYXJrLU1DLkxlZUBtZWRpYXRlay5jb20+IG5hcGlzYcWCKGEpOgo+ID4gPgo+
ID4gPiBIaSBCYXJ0b3N6Ogo+ID4gPiAgSSB0aGluayB0aGUgbmFtaW5nIG9mIHRoaXMgZHJpdmVy
IGFuZCBpdHMgS2NvbmZpZyBvcHRpb24gaXMgdG9vIGdlbmVyaWMKPiA+ID4gdGhhdCB3aWxsIGNv
bmZ1c2Ugd2l0aCBjdXJyZW50IG1lZGlhdGVrIFNvQ3MgZXRoIGRyaXZlciBhcmNoaXRlY3R1cmUo
Zm9yCj4gPiA+IGFsbCBtdDd4eHggU29DcykuCj4gPiA+ICAgU2luY2UgbXRrX2V0aF9tYWMuYyBp
cyBub3QgYSBjb21tb24gTUFDIHBhcnQgZm9yIGFsbCBtZWRpYXRlayBTb0MgYnV0Cj4gPiA+IG9u
bHkgYSBzcGVjaWZpYyBldGggZHJpdmVyIGZvciBtdDg1eHgsIGl0IHdpbGwgYmUgbW9yZSByZWFz
b25hYmxlIHRvCj4gPiA+IG5hbWUgaXQgYXMgbXQ4NXh4X2V0aC5jIGFuZCBjaGFuZ2UgTkVUX01F
RElBVEVLX01BQyB0bwo+ID4gPiBORVRfTUVESUFURUtfTVQ4NVhYLiBIb3cgZG8geW91IHRoaW5r
Pwo+ID4gPgo+ID4KPiA+IEhpIE1hcmssCj4gPgo+ID4gSSBhY3R1YWxseSBjb25zdWx0ZWQgdGhp
cyB3aXRoIE1lZGlhVGVrIGFuZCB0aGUgbmFtZSBpcyB0aGVpciBpZGVhLgo+ID4gTWFueSBkcml2
ZXJzIGluIGRyaXZlcnMvbmV0L2V0aGVybmV0IGhhdmUgdmVyeSB2YWd1ZSBuYW1lcy4gSSBndWVz
cwo+ID4gdGhpcyBpc24ndCBhIHByb2JsZW0uCj4KPiBUaGV5IGhhdmUgdmFndWUgbmFtZXMsIGJ1
dCB0aGV5IHRlbmQgdG8gYmUgbm90IGNvbmZ1c2luZy4KPgo+IE5FVF9NRURJQVRFS19NQUMgdnMg
TkVUX01FRElBVEVLX1NPQyBpcyBjb25mdXNpbmcuCj4KPiBJIHRoaW5rIHRoZSBwcm9wb3NlZCBu
YW1lLCBtdDg1eHhfZXRoLmMgYW5kIE5FVF9NRURJQVRFS19NVDg1WFggaXMKPiBnb29kLiBPciBz
b21lIHZhcmlhbnQgb24gdGhpcywgbXQ4eHh4Pwo+CgpJJ3ZlIGp1c3QgdmVyaWZpZWQgd2l0aCBN
ZWRpYVRlayB0aGF0IHRoaXMgSVAgd2lsbCBiZSB1c2VkIGluIGZ1dHVyZQpkZXNpZ25zIGFzIHdl
bGwgLSBldmVuIG9uIG9uZXMgdGhhdCBkb24ndCBzaGFyZSB0aGUgbXQ4KiBwcmVmaXguIEl0CmRv
ZXNuJ3QgcmVhbGx5IGhhdmUgYSBuYW1lIHRob3VnaCBieSBpdHNlbGYuIEhvdyBtdWNoIGNvbmZ1
c2lvbiBjYW4gaXQKY2F1c2UgYW55d2F5PyBQZW9wbGUgd2hvIHdhbnQgdG8gY29tcGlsZSB0aGlz
IGRyaXZlciB3aWxsIGtub3cgd2hpY2gKb25lIHRvIGNob29zZSwgcmlnaHQ/IEl0J3Mgbm90IGxp
a2UgaXQncyBhbiBpMmMgY29tcG9uZW50IHNoYXJlZAphY3Jvc3MgbWFueSBib2FyZCBkZXNpZ25z
LgoKQmFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1t
ZWRpYXRlawo=
