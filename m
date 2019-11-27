Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BC210B9AA
	for <lists+linux-mediatek@lfdr.de>; Wed, 27 Nov 2019 21:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uaf6odRteXs7A7KNaGArP4u7z6xeN9PD7GftgBIFVQw=; b=Vb9haAONNm4sPO
	3eioSp2TEVIF2hPXB/tj6bmslwGxX1DJ3PY136ipT6HO60MWhALn3+LXBnZ4ouJhqReffGFaQ72hA
	b2q72bRC+ic12v4l1SIeDJHzWpvF83wOJcVoCHc1GkjKgcFZvYDr7d1EQlQgdgrgDa0XkW2VMcSPo
	Qh25i721KnBhnHhpAXLoR5LB+RQ0F3+27Qg8OVknOAiCtfbaU5tP9rLUjYjHFi6AhKhAc+OfaVRgf
	GXg/Fa1YXluVLqpFLuLAgMr6hSculz2B5Q2lYgylptT/Fpxqe4nOz31hRBNxxi+sNNZC8leLE/r0p
	6iJaVhZGbWNN26WT/sCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia4M2-0004Aj-52; Wed, 27 Nov 2019 20:56:06 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia4Lg-0003vb-AJ; Wed, 27 Nov 2019 20:55:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8DE6AAC12;
 Wed, 27 Nov 2019 20:55:40 +0000 (UTC)
Subject: Re: [PATCH 4/5] pinctrl: sh-pfc: Use the correct style for SPDX
 License Identifier
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Nishad Kamdar <nishadkamdar@gmail.com>
References: <cover.1574871463.git.nishadkamdar@gmail.com>
 <5a7ed2e4b58ba7ff2f0638a2435a3a1e1c62c9f6.1574871463.git.nishadkamdar@gmail.com>
 <CAMuHMdUqfRioTBV27AKx9zv9YuSqEod6x+A4aguf=h20TDXr6w@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <9bacc7d9-6bd9-0b7c-18cd-d614796397dd@suse.de>
Date: Wed, 27 Nov 2019 21:55:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUqfRioTBV27AKx9zv9YuSqEod6x+A4aguf=h20TDXr6w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_125544_508115_A5D4F878 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sean Wang <sean.wang@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Joe Perches <joe@perches.com>, linux-gpio <linux-gpio@vger.kernel.org>,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-amlogic <linux-amlogic@lists.infradead.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgR2VlcnQsCgpBbSAyNy4xMS4xOSB1bSAyMTozNyBzY2hyaWViIEdlZXJ0IFV5dHRlcmhvZXZl
bjoKPiBPbiBXZWQsIE5vdiAyNywgMjAxOSBhdCA1OjQ2IFBNIE5pc2hhZCBLYW1kYXIgPG5pc2hh
ZGthbWRhckBnbWFpbC5jb20+IHdyb3RlOgo+PiBUaGlzIHBhdGNoIGNvcnJlY3RzIHRoZSBTUERY
IExpY2Vuc2UgSWRlbnRpZmllciBzdHlsZSBpbgo+PiBoZWFkZXIgZmlsZXMgcmVsYXRlZCB0byBS
ZW5lc2VzIFNvYyBwaW5jdHJsIGRyaXZlci4KPj4gSXQgYXNzaWducyBleHBsaWNpdCBibG9jayBj
b21tZW50IGZvciB0aGUgU1BEWCBMaWNlbnNlIElkZW50aWZpZXIuCj4gCj4gSXMgaXQgaW5jb3Jy
ZWN0IHRvIG5vdCBoYXZlIGFuIGV4cGxpY2l0IGJsb2NrIGNvbW1lbnQ/CgpZZXMsIEdyZWcgc2Fp
ZCBzbyB0byBtZS4gSGUgc3VnZ2VzdGVkIEkgcHJvdmlkZSBhIHBhdGNoIGFnYWluc3QgdGhlCmRv
Y3VtZW50YXRpb24gaWYgdGhlIGRvY3MgYXJlIG5vdCBjbGVhciBlbm91Z2gsIGJ1dCBJIGRpZG4n
dCBnZXQgYXJvdW5kCnRvIGl0IChhbmQgaXQncyBub3QgbXkgcnVsZSBpbiB0aGUgZmlyc3QgcGxh
Y2UsIHNvIEknZCBhcHByZWNpYXRlIHRoZQpwZXJzb24gbWFraW5nIHRoYXQgcnVsZSB0byB0YWtl
IGNhcmUgb2YgZG9jdW1lbnRpbmcgaXQpLgoKSG93ZXZlciwgaWYgd2UncmUgdG91Y2hpbmcgdGhl
c2UgbGluZXMgYW55d2F5LCBzaG91bGRuJ3Qgd2UgYmUgdXBkYXRpbmcKdGhlIFNQRFggSWRlbnRp
ZmllciB0byBHUEwtMi4wLW9ubHkgd2hpbGUgYXQgaXQ/CgpDaGVlcnMsCkFuZHJlYXMKCi0tIApT
VVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkg
TsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBO
w7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW1lZGlhdGVrCg==
