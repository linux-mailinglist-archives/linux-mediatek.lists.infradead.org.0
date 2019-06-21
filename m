Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97154DF6D
	for <lists+linux-mediatek@lfdr.de>; Fri, 21 Jun 2019 05:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WiQHW2+mA7bJzvfpzZFLI450Lx86/C4+psM7u86jCqY=; b=oqINuDv+kBSF9+
	w2UpNvskMI6e5qDI5IZbES5zp6jg8lf/6MkiKgcTGdqKkO8QpVq6D/Ii3FAWzNFE5xdRPi0Z46jKD
	L8mGxaLt38irJSOuoAJGh3F/8XGNZrLcVgjktf+C4T4yX9afJxmWqxGfF9V3VoUXKZA1Arf2Obahg
	aRYEx93F3kOaz1OjsczD6d+6ZLX2yxUY88JpupyurudhXd0IBkmjrS0n8nnM8NxL7xL7YU7hKqlKw
	UbPGYIESrTbFulnoQtgkjSjAXyoZ4c02dAr4jytA1/ORd0jiE5EtgWghU2c7dWNaq+skSg9TnJnnv
	uEVqCUsAdtazo7m2PeCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heAeE-00037Y-JN; Fri, 21 Jun 2019 03:55:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heAeA-000375-Rv
 for linux-mediatek@lists.infradead.org; Fri, 21 Jun 2019 03:55:32 +0000
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD69521530
 for <linux-mediatek@lists.infradead.org>; Fri, 21 Jun 2019 03:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561089330;
 bh=CB0BVuWRQkXTBVGb9UHWbA6rwa6WvzmY/NDqRPZYwwU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XqPDN2ZNzQB7DkBCUx2OniciL88yDnBFNm/5PmwYB93b79pLI7Z17M2QDvSTXMHHj
 F7o6gG+d1hqN8C8vmFdKyx+tbk1OYLK75yqwvKJM6fAquijXJBT3Z0KydXF/UNM2RY
 sBdJHRE1y9eY9ZHD6OE+gYe/IXrb2O7Y7U+dXy7c=
Received: by mail-wr1-f41.google.com with SMTP id x17so5034805wrl.9
 for <linux-mediatek@lists.infradead.org>; Thu, 20 Jun 2019 20:55:29 -0700 (PDT)
X-Gm-Message-State: APjAAAWNIZ4bWQJmm6RaAQBN9k/8FyQb4ChSDgTAlTzjTXkWLftlRR9N
 DCMKqe1MM9fTGNtbSUqNGUfKtBeDE8yx/nJHwVE=
X-Google-Smtp-Source: APXvYqw1oBEMTWkRYK4KwUGgtatvlFEs4uRUsVCarkwsEYrBQV82ffY92H9Yw+zgQ2sCr1HJP1H7CJMT60ddiXTlSDw=
X-Received: by 2002:adf:afd5:: with SMTP id y21mr92411754wrd.12.1561089328389; 
 Thu, 20 Jun 2019 20:55:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190620122155.32078-1-opensource@vdorst.com>
 <74C80E79-877C-4DEC-BC82-1195C3D0981F@public-files.de>
In-Reply-To: <74C80E79-877C-4DEC-BC82-1195C3D0981F@public-files.de>
From: Sean Wang <sean.wang@kernel.org>
Date: Thu, 20 Jun 2019 20:55:17 -0700
X-Gmail-Original-Message-ID: <CAGp9Lzon8QMO3=jwLYNO_je+x2E3E-Zocm=Do-=5x334GqZZLw@mail.gmail.com>
Message-ID: <CAGp9Lzon8QMO3=jwLYNO_je+x2E3E-Zocm=Do-=5x334GqZZLw@mail.gmail.com>
Subject: Re: [PATCH v2 net-next 0/2] net: mediatek: Add MT7621 TRGMII mode
 support
To: Frank Wunderlich <frank-w@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_205530_923481_DC78A415 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org,
 =?UTF-8?B?U2VhbiBXYW5nICjnjovlv5fkupgp?= <sean.wang@mediatek.com>,
 linux-mips@vger.kernel.org, vivien.didelot@gmail.com,
 =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgNjowMiBBTSBGcmFuayBXdW5kZXJsaWNoCjxmcmFuay13
QHB1YmxpYy1maWxlcy5kZT4gd3JvdGU6Cj4KPiBUZXN0ZWQgb24gQmFuYW5hcGkgUjIgKG10NzYy
MykKPgo+IFRlc3RlZC1ieTogIkZyYW5rIFd1bmRlcmxpY2giIDxmcmFuay13QHB1YmxpYy1maWxl
cy5kZT4KClRoZXNlIGNoYW5nZXMgYWxzbyBsb29rIGdvb2QgdG8gbWUsIHRoYW5rcyBmb3IgYWRk
IHRoZSBwYXRjaCB0byBlbnJpY2gKZGlmZmVyZW50IGFwcGxpY2F0aW9uIHZhcmlhbnRzLgoKQWNr
ZWQtYnk6IFNlYW4gV2FuZyA8c2Vhbi53YW5nQGtlcm5lbC5vcmc+Cgo+Cj4gQW0gMjAuIEp1bmkg
MjAxOSAxNDoyMTo1MyBNRVNaIHNjaHJpZWIgIlJlbsOpIHZhbiBEb3JzdCIgPG9wZW5zb3VyY2VA
dmRvcnN0LmNvbT46Cj4gPkxpa2UgbWFueSBvdGhlciBtZWRpYXRlayBTT0NzLCB0aGUgTVQ3NjIx
IFNPQyBhbmQgdGhlIGludGVybmFsIE1UNzUzMAo+ID5zd2l0Y2ggYm90aCBzdXBwb3J0cyBUUkdN
SUkgbW9kZS4gTVQ3NjIxIFRSR01JSSBzcGVlZCBpcyBmaXggMTIwME1CaXQuCj4gPgo+ID52MS0+
djI6Cj4gPiAtIEZpeCBicmVha2FnZSBvbiBub24gTVQ3NjIxIFNPQwo+ID4gLSBTdXBwb3J0IDI1
TUh6IGFuZCA0ME1IeiBYVEFMIGFzIE1UNzUzMCBjbG9ja3NvdXJjZQo+ID4KPiA+UmVuw6kgdmFu
IERvcnN0ICgyKToKPiA+ICBuZXQ6IGV0aGVybmV0OiBtZWRpYXRlazogQWRkIE1UNzYyMSBUUkdN
SUkgbW9kZSBzdXBwb3J0Cj4gPiAgbmV0OiBkc2E6IG10NzUzMDogQWRkIE1UNzYyMSBUUkdNSUkg
bW9kZSBzdXBwb3J0Cj4gPgo+ID4gZHJpdmVycy9uZXQvZHNhL210NzUzMC5jICAgICAgICAgICAg
ICAgICAgICB8IDQ2ICsrKysrKysrKysrKysrKystLS0tLQo+ID4gZHJpdmVycy9uZXQvZHNhL210
NzUzMC5oICAgICAgICAgICAgICAgICAgICB8ICA0ICsrCj4gPiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jIHwgMzggKysrKysrKysrKysrKysrLS0KPiA+IGRyaXZl
cnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmggfCAxMSArKysrKwo+ID4gNCBm
aWxlcyBjaGFuZ2VkLCA4NSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtbWVkaWF0
ZWsgbWFpbGluZyBsaXN0Cj4gTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1l
ZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
