Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F6D8B098
	for <lists+linux-mediatek@lfdr.de>; Tue, 13 Aug 2019 09:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VOg7Fq41og8XsV0R95K+Q1R8KYTiGlXp00EW/XgE38=; b=EUWMOcg2WrkVaK
	6XH97O/OB+pQoCRJMLH70GlxuNWrvyat/jkLriLb133Dm/dsnfDEAXMssaWsBa2E5Zf8MVTA8MQZa
	KD3086FrdHmOvm7oTPz8XrPbaYSoIrzfKMnFhr8ddnl2VcwX/BK/DTJctquprCvBpKO4hey9STIrs
	iAgABLniIAgxIHv16J9mC+uscnD0+KWIKM4ygeWVPNcgkSGpMCmCvk1F8vYC3O/DXLZfhk0HGduV+
	mdaLnxjWSBM+akbZHWbaZyhaAZY6Hx45SOxJ9Xl+k0dgCMLX+5d80t+9wtUgD66+LCcPlTEVrz99o
	Ztc1uSO358mQkl3yVAeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxR6x-0004Ed-L0; Tue, 13 Aug 2019 07:20:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxR6V-000444-0y
 for linux-mediatek@lists.infradead.org; Tue, 13 Aug 2019 07:20:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id r1so7666916wrl.7
 for <linux-mediatek@lists.infradead.org>; Tue, 13 Aug 2019 00:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=jh+u0/5C9sC+jh4TIlKIxaJHuXDdftZDgr4L90RCuIA=;
 b=hEFcVJVzbO+JRAcIntpp/zkyNlS7/GvdeEjrweS18w0t6brHWY49x4M06TnFdZSwxW
 GGaQNP7MUgT/naNeXacrDjPlReBWjvfVLRj+jwnfOSnzi0OUNk5l34AoZpS5DnvuLpDl
 7cNl0BEt+sVJKtQ+LT++mw33Dm284lEGuMdRBBrFKcyC4hjm0k0kVy/4G26aCy6Fo+oY
 uRsQzWvgL5XujoH7taBtmR3FwWDy8klSb77UV1u2YiYIN/RaktD6HE0sLCjVhZ3gWcxT
 6MHB9kBjCkdbPzg7uohM0ruCkgjKBGkq74L2O7ondbwMC4ypfOyxsU8N6t9D74MVit5m
 sEVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=jh+u0/5C9sC+jh4TIlKIxaJHuXDdftZDgr4L90RCuIA=;
 b=n4Ri0JOAFWJQCWjwcp1pieO03iN8A7PeChI0DeHojWERrdllCb8HPxnoweDgibNvoP
 hFgh5QKK0hMdQNMnvkmNpWW8h3slqVrIHX+OB7UYLVHyzfuP62HlmWUrXLf1JuwfS62D
 HRtPLJHtLddXlniiapZ3bPQQEn6YsJ/zsQWVQs4Zd2093ivwUnNwMQWlTmjmc3ynSzjI
 P7/IKWY8Wts+hNLezPEgNwkKMsShl0O9saZk9wkCIQ289DsmOASCgswoNWFmEgqAOJtZ
 lxBxHEoBCxnPSxb8rOgBxSdPC4IhbsjpXwRbmze+e9pEKdXZBYVRnXXs3MUuNpYBsMXN
 8WMA==
X-Gm-Message-State: APjAAAWUdmW21DketMrIOe8wrxEVpu8zhBr263GkLXtO8zBYLKaUK3KG
 oBeLFSaoszZiMtlYp0PBnjISDw==
X-Google-Smtp-Source: APXvYqwQjf7fTO6Udq8hrYKQOuwTwlMrSM8lymQq+3WwhEOVys4N9qu95PdOanYcKCvd51L3ufdJRQ==
X-Received: by 2002:adf:fe12:: with SMTP id n18mr38762652wrr.105.1565680821103; 
 Tue, 13 Aug 2019 00:20:21 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id k1sm14475486wru.49.2019.08.13.00.20.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 00:20:20 -0700 (PDT)
Date: Tue, 13 Aug 2019 08:20:18 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v5 03/10] rtc: mt6397: move some common definitions into
 rtc.h
Message-ID: <20190813072018.GZ26727@dell>
References: <20190812121511.4169-1-frank-w@public-files.de>
 <20190812121511.4169-4-frank-w@public-files.de>
 <20190812151128.GV26727@dell> <20190812153856.GR3600@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812153856.GR3600@piout.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_002023_082541_ABFC5378 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>,
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

T24gTW9uLCAxMiBBdWcgMjAxOSwgQWxleGFuZHJlIEJlbGxvbmkgd3JvdGU6Cgo+IE9uIDEyLzA4
LzIwMTkgMTY6MTE6MjkrMDEwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gT24gTW9uLCAxMiBBdWcg
MjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKPiA+IAo+ID4gPiBGcm9tOiBKb3NlZiBGcmll
ZGwgPGpvc2VmLmZyaWVkbEBzcGVlZC5hdD4KPiA+ID4gCj4gPiA+IG1vdmUgY29kZSB0byBzZXBh
cmF0ZSBoZWFkZXItZmlsZSB0byByZXVzZSBkZWZpbml0aW9ucyBsYXRlcgo+ID4gPiBpbiBwb3dl
cm9mZi1kcml2ZXIgKGRyaXZlcnMvcG93ZXIvcmVzZXQvbXQ2MzIzLXBvd2Vyb2ZmLmMpCj4gPiA+
IAo+ID4gPiBTdWdnZXN0ZWQtYnk6IEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZp
bGVzLmRlPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3NlZiBGcmllZGwgPGpvc2VmLmZyaWVkbEBz
cGVlZC5hdD4KPiA+ID4gU2lnbmVkLW9mZi1ieTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0Bw
dWJsaWMtZmlsZXMuZGU+Cj4gPiA+IC0tLQo+ID4gPiBjaGFuZ2VzIHNpbmNlIHY0OiBub25lCj4g
PiA+IGNoYW5nZXMgc2luY2UgdjM6IG5vbmUKPiA+ID4gY2hhbmdlcyBzaW5jZSB2MjogYWRkIG1p
c3NpbmcgY29tbWl0LW1lc3NhZ2UKPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL3J0Yy9ydGMtbXQ2
Mzk3LmMgICAgICAgfCA1NSArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gPiAgaW5jbHVk
ZS9saW51eC9tZmQvbXQ2Mzk3L3J0Yy5oIHwgNzEgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ID4gCj4gPiBpbmNsdWRlL2xpbnV4L3J0Yy9tdDYzOTcuaD8KPiA+IAo+IAo+IEl0
J3MganVzdCBhIGJ1bmNoIG9mIHJlZ2lzdGVycyBhbmQgYml0IGRlZmluaXRpb25zIHNvIGl0IG1h
eSBhcyB3ZWxsCj4gc3RheSBjbG9zZSB0byBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcmVnaXN0
ZXJzLmgKClN1cmUuICBJdCB3YXMgYSB3ZWFrIHByZWZlcmVuY2UuCgotLSAKTGVlIEpvbmVzIFvm
nY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBP
cGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sg
fCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1tZWRpYXRlawo=
