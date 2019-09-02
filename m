Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC056A535F
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 11:50:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQ1HoZfZxqxtMjq3eP5CZ9fmYwvhon6Fxf6qkkhP7Bw=; b=l1Q5zUXOeLgixp
	0/R/tOQ04qZcsoQrLeYq2lFcG2tbA+HQm/SH/K6TAaFXK1FT8cJKREM6psUk3r5GYc+9ycsDuoEK7
	bx90oqqzwyovN+YeTDulPUvps5NxZ/uvCei0FuUKTStSczAEdNpSm/zwXiebhgLhpxMaDam2iwPj0
	hpMHakzmbs/KJGzDGx/v09KIS5sVVOBCldPXycCRzjlLKdFOFP9rCnbKY1RbR0c+m0nLh9/9PxhXi
	uVeu2UDJfFwMQjgXV5EyjIglRVGY+XEVaap1xiTWWD3rfR0ySa909oI6WwJhDb995cZSYX3LyCUTs
	jLYcbVDuAUhYo7cTy9Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iyH-0000oR-S0; Mon, 02 Sep 2019 09:50:01 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iy0-0000cp-Jn
 for linux-mediatek@lists.infradead.org; Mon, 02 Sep 2019 09:49:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id g7so13350057wrx.2
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Sep 2019 02:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=E32oxsdnFpfc9iole83hLZS+yX2KdMIZPUDAku90LVw=;
 b=DHcGpJtMYCczLv1+Nie2Tj6mpnjbjmwe3yYNzk9LxjNhZjDCCR3p39Th1I+SqVxIaz
 98Pd8TJLid5zcAoEpcC+GSd4UoNtyF6C86TaShbt57DVzK2mhRYAk24S3WnRQPt9cMvw
 OIl/NQLkhdhBVMXyopRS3RkzS0CS7j8Rglve83RyAivl8MLiri8CYBBwHuIHdoUwEv9R
 GyQPH5u7fCF38I0HqOkIRjcmQbJ+Jut+R88Y5eTqN0Hrfk5jrA31nY/meR6fOX5xbre/
 bfOsadVAiHf9ItjJnm1d0ARtUkZvdmNKScHrdEvfb70KZZ+I3MaywYc7+2ltoBX7lRVm
 AEVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=E32oxsdnFpfc9iole83hLZS+yX2KdMIZPUDAku90LVw=;
 b=HXZvYoqYU5reALzxQW8PXteL27YAl/UKugqmKZdkhnSQPr5wuvBw/QNBPSakzeYhOx
 JCRCDQ/82nD5sFXMC+4qMsCTjBiOKYG/ESo0pueU/KhRmijglulE2e+AItvWVCgxA94f
 8NpZEPLG0NwHKY5d9NZ8yV10L/Fn08NnrhoqmdqRojPPn16ZRXjLnzcVX/2CRwSyQtjC
 xKv8RDloNrVIdlkB4PJQf6gpitPjIM5NO16bPpeh/i31nThu+liJj3BvYzG0xw8fStPM
 5DXRvuNLgs3/HVJTY2NuG4Jx+d/uxa1DIHyic0Ydygr/9juoXIhkPY/wxns0x4g3ikEm
 2QSQ==
X-Gm-Message-State: APjAAAVRr2J0JgKd7lSqNSItyM/WA/SVraxMUVMv/UiEvwTOybgcu8Q4
 C/leV9619dpGies/cyvyFenmhA==
X-Google-Smtp-Source: APXvYqx0dDZhgt2N2frM+clSUwC9JsS7KqvVvVuZzoRhLXZHbrdEBi472foVvr2vFZvp5E2gox599w==
X-Received: by 2002:adf:c508:: with SMTP id q8mr34660218wrf.287.1567417783054; 
 Mon, 02 Sep 2019 02:49:43 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id s26sm1861063wrs.63.2019.09.02.02.49.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:49:42 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:49:41 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 08/13] mfd: mt6323: some improvements of mt6397-core
Message-ID: <20190902094941.GU32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-9-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-9-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024944_649475_42BD0452 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gc2ltcGx5ZmljYXRpb25zIChy
ZXNvdXJjZSBkZWZpbml0aW9ucyBteSBERUZJTkVfUkVTXyogbWFjcm9zKQo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEpvc2VmIEZyaWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+IFNpZ25lZC1vZmYt
Ynk6IEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+IEFja2VkLWZv
ci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gLS0tCj4gY2hhbmdl
cyBzaW5jZSB2NTogbm9uZQo+IGNoYW5nZXMgc2luY2UgdjQ6IGRvIG5vdCB0b3VjaCB5ZWFyIG9m
IGNvcHlyaWdodAo+IGNoYW5nZXMgc2luY2UgdjM6IG1vdmVkIHBhcnQgNiBmb3J3YXJkIHRvIGxl
dCBjb21wYXRpYmxlIGFuZCBkcml2ZXIgYmUgdG9nZXRoZXIKPiBjaGFuZ2VzIHNpbmNlIHYyOiBz
cGxpdHRlZCB2MiBwYXJ0IDQgaW50byA2KzcKPiAtLS0KPiAgZHJpdmVycy9tZmQvbXQ2Mzk3LWNv
cmUuYyB8IDEzICsrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMTAgZGVsZXRpb25zKC0pCgpBcHBsaWVkLCB0aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7n
kLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVu
IHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBU
d2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tZWRpYXRlawo=
