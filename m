Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0C1A533A
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 11:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivDCOELwyshyXuu26QardhM2WaEbkdLdizxgNyxrg54=; b=UooO35XXNMmo5m
	S6c7jSPXie6/VD2jbqLHDuIPdz8oxoHWJ87r7iqho0uI0tbhwsAxVZFUANLvKdB8PH3qj79IhO0cZ
	p5ZkhgbqkghrS4d/vNNG38ogiyMZdfilhzZFFiFsLUpNTlZ5jWT7Xb+JHshcoAyQ7VdzRMD8YAMNR
	tyJ2jDWu9jUaWUtd+ALL5Xb6QQJ7ZmI+b26OAUM0e0r54dw7OoKBKAeiNHaU5RKXgB2SzQbwAHPtF
	oGs/VIS6VU0Egq1kS6vjECm71sKjmhZDfDIYRQP3AA5Q9vDofIxtww5nzSLgC00sUhydGKxGoIHQG
	diLNjpy8gRZPxal06MVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4itJ-0006rZ-KN; Mon, 02 Sep 2019 09:44:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4itF-0006qM-IN
 for linux-mediatek@lists.infradead.org; Mon, 02 Sep 2019 09:44:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id q12so13262579wrj.12
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Sep 2019 02:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=qd++qlXo+afPltQBesGSfDh/78ykDbV4CflLE8Z4FBI=;
 b=CmcNGkZYbOXX56CkkyUQiEcj2V/JwCX/HPonVAuRIH/jfFxLuIXgB/AQ67mn1ufEGG
 kg2qfhRcSGATrqKjKdds6Tp3aqpt29i4pYMDp4zrA2C/2v1vDDR9SlkRMDr11o7EdUBb
 qCQ7gKVZ8awETYWQ8cpQ09UfE3qotA+q3rmDNURtCvoBXgBeS8/MYX3qbfgsnzRNatc7
 lO/hXSzdOPqYfFqBKmjzdTfF3D8nKgBHZWKIx3YXfG5WMLX+qb2icEeOW7r5XJjCs54C
 t+YvB/Ymr7JjDpaxktA9g5I+a7eHzMNHeJjNoE96/Ag9zpbphvfNXea4hrooRMzrSS7b
 uZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=qd++qlXo+afPltQBesGSfDh/78ykDbV4CflLE8Z4FBI=;
 b=goIpY0GddkMs7HrK6+sFP1OIv1RCBj+ve6/rMBOpPbt7ltKkbVe48ayRS/choZP1iV
 7RAEbdo958XPJ0cZLJ85m0ncW3oArQ16619MKgAYTrzaXr8fzC3FJ2CmMCXD7VLyVoMw
 JoOdjlqsaEuEv9cO1jOmuFVaRvHXUQOiPLHU5l8CTPtQI1lA1WpPVT3vu75zt8QOvpm9
 frVtVI2OkplpD/wYARzDYCl/E8cvjzrpljxPi7+tabCmFZpYenb4vwCy340YHrb2Gxg0
 ymjgYZzjZVCCF476egKFgNFdvCHkjDNYjUgWnWi1iYAlrz8GiBVTLuXXrq15nhaUXoxo
 96Cw==
X-Gm-Message-State: APjAAAXz6+UjFj3oZMDvLivrYkf41BlkGKbtWuvkWd55aqCU03rJLW2m
 UXRzw8wM6i7Mnqdu9WR+WcR6YQ==
X-Google-Smtp-Source: APXvYqzBC9wQvqJpV9XW7R3+58fb834Rs94m6nZbv917724zDE4pMNUIC8FJHqYHZ/5VOym469o4yA==
X-Received: by 2002:adf:e7c4:: with SMTP id e4mr31602370wrn.62.1567417487988; 
 Mon, 02 Sep 2019 02:44:47 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id y6sm4378512wmi.14.2019.09.02.02.44.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:44:47 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:44:45 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 03/13] dt-bindings: mfd: mediatek: add mt6323
 power-controller
Message-ID: <20190902094445.GR32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-4-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-4-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024449_606894_D5091F50 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gU3VuLCAxOCBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gLSBhZGQgcG93ZXJjb250cm9s
bGVyLXNlY3Rpb24gdG8gZXhpc3RpbmcgYmluZGluZy1kb2N1bWVudAo+IC0gYWRkIG10NjMyMy1w
d3JjIGJpbmRpbmdzLWRvY3VtZW50IHdpdGggZXhhbXBsZQo+IAo+IFN1Z2dlc3RlZC1ieTogRnJh
bmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gU2lnbmVkLW9mZi1ieTog
Sm9zZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gU2lnbmVkLW9mZi1ieTogRnJh
bmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gQWNrZWQtZm9yLU1GRC1i
eTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiBjaGFuZ2VzIHNpbmNl
IHY1OiBzcGxpdCBvdXQgbm9uLXB3cmMgcmVsYXRlZCBjaGFuZ2VzCj4gY2hhbmdlcyBzaW5jZSB2
NDogbm9uZQo+IGNoYW5nZXMgc2luY2UgdjM6IG5vbmUKPiBjaGFuZ2VzIHNpbmNlIHYyOiBub25l
ICg9djIgcGFydCA3KQo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvbXQ2Mzk3
LnR4dCAgICAgICAgfCAgNiArKysrKysKPiAgLi4uL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L210NjMy
My1wb3dlcm9mZi50eHQgIHwgMjAgKysrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDI2IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9yZXNldC9tdDYzMjMtcG93ZXJvZmYudHh0CgpBcHBs
aWVkLCB0aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBU
ZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJN
IFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFp
bGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
