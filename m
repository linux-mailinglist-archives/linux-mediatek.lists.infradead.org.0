Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFF9B645
	for <lists+linux-mediatek@lfdr.de>; Sun, 28 Apr 2019 18:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vREnzIM+xEa5VQMfKFvBeyjXZJJWDlr/wJMMEvUNbE=; b=fu07azmgeLugEp
	8ZoSYaJNSTW00Mds+utSgP1PC5mxCxRsl6l1Ggwyc57CITNKHyLb9g/WEgFNW1fqgp9myeAVhh1h6
	7eoQoEbDvj+o5NdMgLSydOkc8pGcDAcgmTIX9uMgRgkV95skNyFl6/vsCD2Jql+ULKLFsJ2gcdth7
	yWReHFKI43+BprwCbXxN5V9UYTgNXB3NFy3l4dt1ZOxyIleywhyXpCBryZvBfCbJ9QccBSKwJzT2Y
	Bs1U5JMp6uhrxEK41vUOtwO6lG5KciWR4L6XLdbd65AtqVYzwYy1kppvL0HzADNT3oex9DfuNB8YQ
	HuK+m3a5jm76LKnAK5Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKn3w-0006Nq-F7; Sun, 28 Apr 2019 16:54:00 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKn3m-0006HQ-GN; Sun, 28 Apr 2019 16:53:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cRMd8mueGQjf3u9Ez32aIcf72f+Jx2olgX7/QRk0Jr8=; b=1E1ztWBvomZnvKFV+Oeb5y2OcO
 Bpc/PetqYR0pYDGHQitn0xdRSySMdTKgJk6OnpFmXMqNDmDniFTuUXyxNLxqJtypiWSNowTRvFzsF
 79dvP93+AwqQgUhxDcfh6xM+JQcDfAApsJ3rNvb8/RciAFp7MzdZW0QXd3hQtNvDiMkg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hKn3O-0000uS-PY; Sun, 28 Apr 2019 18:53:26 +0200
Date: Sun, 28 Apr 2019 18:53:26 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH v2 2/4] dt-bindings: doc: Reflect new NVMEM
 of_get_mac_address behaviour
Message-ID: <20190428165326.GI23059@lunn.ch>
References: <1556456002-13430-1-git-send-email-ynezz@true.cz>
 <1556456002-13430-3-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556456002-13430-3-git-send-email-ynezz@true.cz>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_095350_698185_A96E81E0 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, devicetree@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Alban Bedel <albeu@free.fr>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMjgsIDIwMTkgYXQgMDI6NTM6MjBQTSArMDIwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBBcyBvZl9nZXRfbWFjX2FkZHJlc3Mgbm93IHN1cHBvcnRzIE5WTUVNIHVuZGVyIHRo
ZSBob29kLCB3ZSBuZWVkIHRvIHVwZGF0ZQo+IHRoZSBiaW5kaW5ncyBkb2N1bWVudGF0aW9uIHdp
dGggdGhlIG5ldyBudm1lbS1jZWxsKiBwcm9wZXJ0aWVzLCB3aGljaCB3b3VsZAo+IG1lYW4gY29w
eSZwYXN0aW5nIGEgbG90IG9mIHJlZHVuZGFudCBpbmZvcm1hdGlvbiB0byBldmVyeSBiaW5kaW5n
Cj4gZG9jdW1lbnRhdGlvbiBjdXJyZW50bHkgcmVmZXJlbmNpbmcgc29tZSBvZiB0aGUgTUFDIGFk
ZHJlc3MgcHJvcGVydGllcy4KPiAKPiBTbyBJJ3ZlIGp1c3QgcmVtb3ZlZCBhbGwgdGhlIHJlZmVy
ZW5jZXMgdG8gdGhlIG9wdGlvbmFsIE1BQyBhZGRyZXNzCj4gcHJvcGVydGllcyBhbmQgcmVwbGFj
ZWQgdGhlbSB3aXRoIHRoZSByZWZlcmVuY2UgdG8gdGhlIG5ldC9ldGhlcm5ldC50eHQKPiBmaWxl
LiAgV2hpbGUgYXQgaXQsIEkndmUgYWxzbyByZW1vdmVkIG90aGVyIG9wdGlvbmFsIEV0aGVybmV0
IHByb3BlcnRpZXMuCgpIaSBQZXRyCgpJIHRoaW5rIGVhY2ggaW5kaXZpZHVhbCBiaW5kaW5nIG5l
ZWRzIHRvIGdpdmUgYSBoaW50IGlmCm9mX2dldF9tYWNfYWRkcmVzcygpIGlzIHVzZWQsIGFuZCBo
ZW5jZSBpZiB0aGVzZSBvcHRpb25hbCBwcm9wZXJ0aWVzCmFyZSByZXNwZWN0ZWQuIFRoZSBzYW1l
IGlzIHRydWUgZm9yIG90aGVyIG9wdGlvbmFsIHByb3BlcnRpZXMuIEkgZG9uJ3QKd2FudCB0byBo
YXZlIHRvIGxvb2sgYXQgdGhlIGRyaXZlciB0byBrbm93IHdoaWNoIG9wdGlvbmFsIHByb3BlcnRp
ZXMKYXJlIGltcGxlbWVudGVkLCB0aGUgYmluZGluZyBzaG91bGQgdGVsbCBtZS4gV2hhdCB0aGUg
b3B0aW9uYWwKcHJvcGVydGllcyBtZWFuLCBhbmQgd2hpY2ggb3JkZXIgdGhleSBhcmUgdXNlZCBp
biBjYW4gdGhlbiBiZSBkZWZpbmVkCmluIGV0aGVybmV0LnR4dC4KClNvIGkgd291bGQgc3VnZ2Vz
dHMgc29tZXRoaW5nIGxpa2U6CgpUaGUgTUFDIGFkZHJlc3Mgd2lsbCBiZSBkZXRlcm1pbmVkIHVz
aW5nIHRoZSBvcHRpb25hbCBwcm9wZXJ0aWVzCmRlZmluZWQgaW4gZXRoZXJuZXQudHh0LgoKQW5k
IGxlYXZlIGFsbCB0aGUgb3RoZXIgb3B0aW9uYWwgcGFyYW1ldGVycyBpbiB0aGUgYmluZGluZ3Mu
CgoJQW5kcmV3CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW1lZGlhdGVrCg==
