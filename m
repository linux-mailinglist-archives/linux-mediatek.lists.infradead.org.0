Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAA689B51
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 12:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCXCPwamfKQ4byCkiDdAtaWYr/dQ/ZtsOrN6TRF4N+w=; b=J0+pLQBi0q/XBk
	L9vi0ViJdAWnsswNDj1LdqaTiaT/QttgSNA8ocrmNiDyr2Mgx6JuIRdo03xl1dTaS8Uuw3fJM0ajZ
	4JnBcG+E8R0UogADBmoAsQwE3rE7SxD30IIY2SjRVAou79FPgeBfmxuD6/WtoSW3Jp6Rr1VX07ghC
	5Tx3jXiCkIg7Gni2Is6mq4hbI6C7QeIfdxrUT4cea7QrSEz2N6PLfQ/O3DtUQXJO83qFue1NV9XR8
	rrOiTC9ro+hyD8zQaPE4ljmpSnphkUNs1xrKI438R60Da0RWAG/Do7knIj+bdxtaOvBOXCMqtk7LK
	kdzI5exs9dIEN3vLGsnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7Sy-0004ZZ-Vz; Mon, 12 Aug 2019 10:22:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7Sv-0004Yf-Q4
 for linux-mediatek@lists.infradead.org; Mon, 12 Aug 2019 10:22:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id e8so10256521wme.1
 for <linux-mediatek@lists.infradead.org>; Mon, 12 Aug 2019 03:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=zoPZbXqPW78h/2uThaa7mn2LzRhBNLTRaQs9IxumQJE=;
 b=vJ2GlkA9v8yTNFNSxD1tYPMv6zm6aAZbc0eagMqBcoc0oVXHforLwDr+jURWjvN6jf
 k5X8u/x5nlBEex6MPfLs76eV6m/26tMxbrBcX42+QJ7ZM4mAP6i8fYu8SQ0H3b8JExAC
 GZ1YHoi+MhBvEE+cq5NnWJYuoI+39/Q7rgiyDN5mUiSeITs1GgBFoQi3YLJHh8q0MRbJ
 RFBv7xI+rinrgHJhfdJ/RsGUI6D3g6Hi/7Fq9MOnHM3Ia2zqXMAtbzveZ6MvNNPZvEdS
 Z6zV8fvBNCDe74jZ4wmksqFv8KlPMrQLCLZos3iEqE3yjLhQ33iF99G4dOJicHNjI2Kw
 sqaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=zoPZbXqPW78h/2uThaa7mn2LzRhBNLTRaQs9IxumQJE=;
 b=dx7evnQcKTs46batMlYffnzwn1oxzL6arSM7qvyYEN3irRl/ym2xr7YCsgu6Vr/7G1
 WkgGlC1mLEBL5iksFLzzrYTs3My0L7KsglY1NBYk/HLYllwgEDtiQ6fzrY6brDa2laiE
 pCOKvQ2Dc3QkGGHHiVACJUAeXj4/2k4fjmDyYzeT+DGbDoNVoy4HskJ66t3ptFexq8SL
 1ap+3xRZWbBwiRZXBmxRkq0lXTJKnNazOfYv1YN4QnNIO1/34X5k0VvFb2S4Gn/5GcPn
 2Gle6N5iHzrC9XcyWRvRUonTmo4eUHukOYj9iPwhiqeRCMgTvzTEZTv2i/a8usnJZRXm
 iMtQ==
X-Gm-Message-State: APjAAAX+01RY76ElNbuL4AyTG5PB8o2nGIat+ns808sfyTG764fBC5V0
 Mt5+dgLdENfF7ZsZFxm5unDHTw==
X-Google-Smtp-Source: APXvYqxf3cQUHAep1BdMKN4uIH07FUMOkkx/TJ2wQi9MYR4nJmyC/s/FP0G1PMDE8ki8IyMk5k86nA==
X-Received: by 2002:a05:600c:22c7:: with SMTP id
 7mr15775300wmg.129.1565605332156; 
 Mon, 12 Aug 2019 03:22:12 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id o126sm14136234wmo.1.2019.08.12.03.22.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:22:11 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:22:09 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v3 06/10] mfd: mt6323: some improvements of mt6397-core
Message-ID: <20190812102209.GI26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-7-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729174154.4335-7-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_032213_853589_9742ACAE 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCAyOSBKdWwgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gc2ltcGx5ZmljYXRpb25zIChy
ZXNvdXJjZSBkZWZpbml0aW9ucyBteSBERUZJTkVfUkVTXyogbWFjcm9zKQo+IAo+IGNoYW5nZXMg
c2luY2UgdjI6IHNwbGl0dGVkIHYyIHBhcnQgNCBpbnRvIDYrNwo+IAo+IFNpZ25lZC1vZmYtYnk6
IEpvc2VmIEZyaWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+IFNpZ25lZC1vZmYtYnk6IEZy
YW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+IC0tLQo+ICBkcml2ZXJz
L21mZC9tdDYzOTctY29yZS5jIHwgMTUgKysrKy0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21mZC9tdDYzOTctY29yZS5jIGIvZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUuYwo+IGluZGV4
IDMzN2JjY2NkYjkxNC4uNWY3MDcwMjY3YzlhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL210
NjM5Ny1jb3JlLmMKPiArKysgYi9kcml2ZXJzL21mZC9tdDYzOTctY29yZS5jCj4gQEAgLTEsMTAg
KzEsMTEgQEAKPiAgLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+ICAv
Kgo+IC0gKiBDb3B5cmlnaHQgKGMpIDIwMTQgTWVkaWFUZWsgSW5jLgo+ICsgKiBDb3B5cmlnaHQg
KGMpIDIwMTQtMjAxOCBNZWRpYVRlayBJbmMuCgpUaGlzIGlzIG91dCBvZiBkYXRlLiAgUGxlYXNl
IHVwZGF0ZSBpdC4KCk9uY2UgZml4ZWQsIHBsZWFzZSBhcHBseSBteToKCkZvciBteSBvd24gcmVm
ZXJlbmNlOgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5v
cmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwg
TGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9s
bG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0
CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
