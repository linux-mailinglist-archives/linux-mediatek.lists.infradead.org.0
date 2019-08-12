Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FD189C2F
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 13:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nf3BLxGEcvj7Zgx/g3hgBYPEHLVFiS6SvDBSck0u3YY=; b=ZBzzs7vEFqivzu
	KMAZ4rL3g49maAD1imG8DzADQ76ugNiC5dBGuarStU2IznDNrEwmtqbCux4o5OYSIgUHnCzQR5D44
	eklmGoXkK7tKfTdyjEi6/DNB3CheXXB8Hp8td3hgNJnBxgVipLNyW0k9Q9RkDNaEvaiqpF+4DGSXZ
	WhlGM4tv3cOz4Qq3hzD+qhCF3t12BY+Z+6n6VtR81tjvF9d1GFQNCi5SGRUtiqiQFY9hEmBvIzHY9
	dvFLiqB7kUV00ChWGlA5tPJRGLCmPWCR8CTZFNRxFqt+0Q8QOhHmOOzbn0VYwPNfLOpgMMdxj4mcd
	Roqgz95TCepYpsR+h4+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx84b-0006bb-Ge; Mon, 12 Aug 2019 11:01:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx83U-0004pR-NS
 for linux-mediatek@lists.infradead.org; Mon, 12 Aug 2019 11:00:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id j16so1903960wrr.8
 for <linux-mediatek@lists.infradead.org>; Mon, 12 Aug 2019 04:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Se9XSbsfGDt4BhyzlQIMi1S9/MkvfhBPx11WicajSSg=;
 b=yaHiSpqBDdc2sT6zI2Dw8zIEtpSIuQSkOCCSmj9RJNlb1WEg3hBK3DieiAioZ8alKu
 AhP6xz8HC1xq2zeOzZD/CESJhRrdOgr9LS9ALNZnKZ7qQmpeLUV9bDwnT3EpLlwruIiP
 qw6Wfo9LBJzqQuQkLSFwdLolV8LwmnGKEdztwiHvhxo4Su+Amv+FnsR+5zM2D+cajBpc
 ylXscLIIU6eUjTydGSw0LQX8ETWkvZ56eeYt1TiS0+Pe7xUOVQiHuRDq1jqfF+s8ugmx
 Yb3gupA+zwYIsrVaxjBkVmzYbfHGadHGrRwNto9vTAoF1Gi8UzYRJPde3HbA0jbocbzQ
 ck9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Se9XSbsfGDt4BhyzlQIMi1S9/MkvfhBPx11WicajSSg=;
 b=rR4L2eC5AtaIoMM416zIHprbCsMz/g/JO2zxJmPq54MpSzJ3itzC5ZCaePoIPnKOAF
 NmTg3Jpr6dwBqqU0udht/bSQNyPzT//iMzP5Bre/WuX3pN1BFDKI+ucsqkdEIFfMht+L
 V0RXHReroppdBg+KEwUTMeC8WUl4Sytubq07JNVjahj2p7GFclVU4oYguWCcsW/axpfi
 2qyZYodKgIgwKtEte0bz+91UYCga6S10Y4FfgoLm16SI3MaEXz1rH6fbqd4sY8kapY5y
 t0o4jI7lGxntdT3uJ80OD+5t/IQEKK9IuFccglULbZ/007zQtTugmaGtwJlnnDXGnpyz
 xgCA==
X-Gm-Message-State: APjAAAWMNljYruAZIHDWTR8EjkrjQKNfqYFqLhkohwenFgW30zCBdRcT
 7R5mgyhKdhlBSghYQpd+3zkffw==
X-Google-Smtp-Source: APXvYqz8c1NJgqCLXi1ZOgbjqMY0Kt0jc3i39Y6I1YxE2q8hdoWNcdXIgZA0cAg94/5QZFrH+80nhg==
X-Received: by 2002:adf:dc51:: with SMTP id m17mr41748135wrj.256.1565607599334; 
 Mon, 12 Aug 2019 03:59:59 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id a81sm5608087wma.3.2019.08.12.03.59.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:59:58 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:59:57 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v4 02/10] mfd: mt6397: extract irq related code from core
 driver
Message-ID: <20190812105957.GP26727@dell>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1564982518-32163-3-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564982518-32163-3-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_040000_849404_15ADA0F6 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Allison Randal <allison@lohutok.net>, linux-rtc@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCAwNSBBdWcgMjAxOSwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gSW4gb3JkZXIg
dG8gc3VwcG9ydCBkaWZmZXJlbnQgdHlwZXMgb2YgaXJxIGRlc2lnbiwgd2UgZGVjaWRlIHRvIGFk
ZAo+IHNlcGFyYXRlIGlycSBkcml2ZXJzIGZvciBkaWZmZXJlbnQgZGVzaWduIGFuZCBrZWVwIG10
NjM5NyBtZmQgY29yZQo+IHNpbXBsZSBhbmQgcmV1c2FibGUgdG8gYWxsIGdlbmVyYXRpb25zIG9m
IFBNSUNzIHNvIGZhci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBIc2luLUhzaXVuZyBXYW5nIDxoc2lu
LWhzaXVuZy53YW5nQG1lZGlhdGVrLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUg
ICAgICAgICAgICB8ICAgMyArLQo+ICBkcml2ZXJzL21mZC9tdDYzOTctY29yZS5jICAgICAgIHwg
MTQ2IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvbWZkL210NjM5
Ny1pcnEuYyAgICAgICAgfCAxODEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvY29yZS5oIHwgICA5ICsrCj4gIDQgZmls
ZXMgY2hhbmdlZCwgMTkyIGluc2VydGlvbnMoKyksIDE0NyBkZWxldGlvbnMoLSkKPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL210NjM5Ny1pcnEuYwoKRm9yIG15IG93biByZWZlcmVu
Y2U6CiAgQWNrZWQtZm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4K
Ci0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFk
CkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cg
TGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGlu
dXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
