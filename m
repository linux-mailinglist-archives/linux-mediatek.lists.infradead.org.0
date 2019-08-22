Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A049A112
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 22:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLRolUOAk/Q4tpF42VldYHr2OlonTO6QIvJbWNO7i/A=; b=Yr8Em9z9nKB8Jz
	EDvcnLGTCd35qaG8Jdr9GzevSoi+hudW/FNdGxXtmfMpboKRerk311pMynMrNnO21HCMq635I30AV
	3mz1gY/tlYDIQC8fFRdCLgFqqRWzPBIBi8j0eM58XcvO90gme6EQaRmgqIVnbkETqqZ/6wqnHXARh
	Pn/OkXdSBkb7/Ak4JpBmnMvbjulZniVw57TT9OBV9cNvPL4uxzjZh6fqx+hWIZge5xoP8kbmwzKAY
	miJ7m9FgFfM/R67muHzojeWmVXdnONBQDbeo1crtJrU2nLPYFTFUOVU1IJYK//qFeVJ5GZVJ3p4Oj
	zcoeLxxT+Erfsq42y77Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0thX-0003Yi-JW; Thu, 22 Aug 2019 20:28:55 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0thU-0003YH-2h
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 20:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566505724;
 bh=pF0dgdCpgl4enpI6SdBXTKqpcVBK5za8jnquv0x1bRU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=NXVwIT7tCIb8dvVcorSB3fdlhvZNjSwBVymRUXWQJNmvJY0UStyr4uSaBRmkxcUy0
 RA0aNiai7yUhCaIOJ4heMt76W5tGP3FxdbuvBnJi+4X+1FvPbkVzgHBrZ8u6fF4poi
 p87T69qQq5a9FDQZrjA42tSZrbEZDI+srgz8VLhc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.89] ([217.61.154.89]) by web-mail.gmx.net
 (3c-app-gmx-bs43.server.lan [172.19.170.95]) (via HTTP); Thu, 22 Aug 2019
 22:28:44 +0200
MIME-Version: 1.0
Message-ID: <trinity-5d117f0d-9f34-4a2b-8a12-1cd34152c108-1566505724458@3c-app-gmx-bs43>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Mark Brown" <broonie@kernel.org>
Subject: Aw: Re: BUG: devm_regulator_get returns EPROBE_DEFER
 (5.3-rc5..next-20190822) for bpi-r2/mt7623/mt7530
Date: Thu, 22 Aug 2019 22:28:44 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190822193015.GK23391@sirena.co.uk>
References: <trinity-584a4b1c-18c9-43ae-8c1a-5057933ad905-1566501837738@3c-app-gmx-bs43>
 <20190822193015.GK23391@sirena.co.uk>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:i4Hx9cJguNAPQETNd9mSs1bTlBVLDuFWF/KISNtejmaHipYzr/LzXxBqLzzgSyyNTLhKP
 QlctORci17513NEMK4wUbVHJ5lHYkh7pbpid6BopWdU7Kk1fyFz7ffHMFtT3Ea82MTFhgBSod0vy
 2k7AuehKjyB2uCNat9OO3R1G3GW3VVbSvyXvzVzIlWKAn+kH0wbbiQrRUDIvgveJYorqPKi11B/r
 U+8XIK5rfhaAMppQlUu08EuI6MR7ezRDuFV/fOzS+Xpv1mkkZYkN4ElaTV+2PODEODp5/rl83Kji
 tk=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JhRVqcGM0fU=:JCYujooCTmUMHi6+YWGqjA
 Z6O0xAeSkqTOWcW9S9Iz2rUU+047BwinHRFjCw8YLRmJ5XxcFT0PnfIq6WkEoGBirTxPpAghf
 rNXney7yNaLQGdJxWbT55pWU27JKWkkuo/RLiKZ31NofEg1oi4+HCQGP/n2aJ7FhsHXJhf8HN
 inVvctE6CVb7+ihleYC24Fka3vZtLU4qYITv26FDuEWj+FrLAW6crw0GafIOg6quOJOIpeiek
 N4Z9RhDDyAUsTgRD+6mJa5U2hPjBIY5ptOxlNy66HerwtE9kNf7HNe8oh290zMEN2Cip+0dCM
 GjjadVwkmvNEiqbPx6ljQSv3Dxe0Adl80k/xXaPfmxzctRoC9b2fiPyNdpnbcOFYNKUXlZ7/9
 BbRP5PryLEcyQ0qBprLzhj7eAO0aL3KxtYCyGKle964paeTHDL/w1LUkV0egUFQswMoF81F5+
 If2UkPdO9ISb4lPZDJ/s8kOHEsCV749Z8koManeCBArH/ADIrNCiN7pW5RTNPZTeP0P+KMqZ9
 xxznXpjSpRB5+AY83KBWBbRGcuvE7hKGEHAbD4SAM4XGvN50gOmI4O+NOH+VILx8swOkqK8W/
 9dj4kUc9HO0CFojzZaUBD4Ylc3WmZa9gpmE7PcvTRBuJm2wlEYH5hzwakk0qbfXKlfHUpXdNc
 vqVijZWwQ3GfJv9i1XjeUASDb9ZO98JHxy7uYcmPH4rEizw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_132852_457697_5AD03FD0 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Y2ZiYTVkZTliOTlmIGRyaXZlcnM6IEludHJvZHVjZSBkZXZpY2UgbG9va3VwIHZhcmlhbnRzIGJ5
IG9mX25vZGUKCnRoaXMgbG9va3Mgc3VzcGljaW9zIHRvIG1lIHNpbmNlIHRoZSBjaGFuZ2UgaXMg
aW4gdGhlIGZ1bmN0aW9uIHdoaWNoIGZhaWxzOgoKc3RydWN0IHJlZ3VsYXRvcl9kZXYgKm9mX2Zp
bmRfcmVndWxhdG9yX2J5X25vZGUoc3RydWN0IGRldmljZV9ub2RlICpucCkKIHsKICAgICAgICBz
dHJ1Y3QgZGV2aWNlICpkZXY7CiAKLSAgICAgICBkZXYgPSBjbGFzc19maW5kX2RldmljZSgmcmVn
dWxhdG9yX2NsYXNzLCBOVUxMLCBucCwgb2Zfbm9kZV9tYXRjaCk7CisgICAgICAgZGV2ID0gY2xh
c3NfZmluZF9kZXZpY2VfYnlfb2Zfbm9kZSgmcmVndWxhdG9yX2NsYXNzLCBucCk7CgoKYnV0IGkg
Y2Fubm90IHJldmVydCB0aGlzIGNvbW1pdCBzbyBpIGRpZCBpdCBtYW51YWxseS4uLmJ1dCB0aGlz
IGRvZXMgbm90IHNlZW0gdG8gYmUgdGhlIGNhdXNlLi4uc3RpbGwgZXJyb3IgNTE3LCBhbHNvIGEg
Y2hhbmdlIGluIGNvcmUuYyBpcyBub3QgdGhlIGNhdXNlLi4uCgpob3cgY2FuIGkgY2hlY2sgaW5z
dGFudGlhdGlvbiBhdCBydW50aW1lPwoKcmVnYXJkcyBGcmFuawoKCj4gR2VzZW5kZXQ6IERvbm5l
cnN0YWcsIDIyLiBBdWd1c3QgMjAxOSB1bSAyMTozMCBVaHIKPiBWb246ICJNYXJrIEJyb3duIiA8
YnJvb25pZUBrZXJuZWwub3JnPgo+IEFuOiAiRnJhbmsgV3VuZGVybGljaCIgPGZyYW5rLXdAcHVi
bGljLWZpbGVzLmRlPgo+IENjOiAiTGlhbSBHaXJkd29vZCIgPGxnaXJkd29vZEBnbWFpbC5jb20+
LCBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnLCBsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZy
YWRlYWQub3JnLCAiUmVuw6kgdmFuIERvcnN0IiA8b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgo+IEJl
dHJlZmY6IFJlOiBCVUc6IGRldm1fcmVndWxhdG9yX2dldCByZXR1cm5zIEVQUk9CRV9ERUZFUiAo
NS4zLXJjNS4ubmV4dC0yMDE5MDgyMikgZm9yIGJwaS1yMi9tdDc2MjMvbXQ3NTMwCj4KPiBPbiBU
aHUsIEF1ZyAyMiwgMjAxOSBhdCAwOToyMzo1N1BNICswMjAwLCBGcmFuayBXdW5kZXJsaWNoIHdy
b3RlOgo+IAo+ID4gc2VlbXMgb2ZfZmluZF9yZWd1bGF0b3JfYnlfbm9kZShub2RlKTsgaXMgZmFp
bGluZyBoZXJlLCBidXQgaSBzZWUgdGhlIGR0cy1ub2RlIChtdDYzMjNfdnBhX3JlZzogYnVja192
cGEpIGluIC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS8uLi4KPiAKPiBJdCdzIG5vdCBsb29raW5n
IGZvciB0aGUgbm9kZSBpbiB0aGUgZGV2aWNlIHRyZWUsIGl0J3MgbG9va2luZwo+IGZvciB0aGF0
IHJlZ3VsYXRvciB0byBpbnN0YW50aWF0ZSBhdCBydW50aW1lLiAgSXMgdGhhdCBoYXBwZW5pbmc/
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0
ZWsK
