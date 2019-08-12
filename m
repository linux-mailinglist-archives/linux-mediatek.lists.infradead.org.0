Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5503D89B30
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 12:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ModbXgTHUo9ZvlEKRlgJTT3Yq1haIUFBGjbCRA09ELo=; b=cK960VLfhkU6Ss
	g7xa4pQ1bf5mGuk9bxwFWnNiigBQgmzZP4MdFzHsYD/kg/fo7kylACIiHaqjeL2qcPd+fbmnSmO9T
	ML6eEylChA+ug+TBJ1nyYZDalMNrK6ShaDOiq0Y1+bG0yXZ6CJT+nqTzBrjoJgkghOO8YJ2AfUhJ1
	HbDnsuTxnIrNumn2ffe4vEemJRXKtBPHzJbHRMANPZLrkxsviNquYEunXwOQV/H37dQqpvHGEH6fG
	kUgDNJsOq3WxjhT0gsuxi0NLrlJChTwCVB3+Ry7KepRpejvkZ/BUEjcZCw5t1GXZDClkSa+IuEMRN
	PQ0pLflz2aDsIc+T6Xxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7Pl-0002CG-GD; Mon, 12 Aug 2019 10:18:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7PW-000210-1s
 for linux-mediatek@lists.infradead.org; Mon, 12 Aug 2019 10:18:43 +0000
Received: by mail-wr1-x443.google.com with SMTP id b16so7360177wrq.9
 for <linux-mediatek@lists.infradead.org>; Mon, 12 Aug 2019 03:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=7tZV/C+CttVM58WgI5MskpQ9uHYkdrjmm3CFUmvewno=;
 b=W+MxhXPlqRndnSDLfszOAzcHmVOW3zepwOG16SrxUolE+YVOJWBRuiuxxU4d/tK5ib
 eQc/dIBIFwTcCmLQhoZQwpHSv0Z9GeNPNm2xWCPE0fgp4Rh9yoW+7ATA94jKrSXX4WrQ
 0PUIZNkQIQMW0/ttZeHjwewCrBJc8dHUMnE8Cn+DuD1QiGxzXoM6iqtK0sO+mBwI+ZR7
 zwQC+FQ8Ksc9TIrTKQATDtnIIWAni1AXI50QDu2qvmTx5JqDjheXwahx+Ou0JnK5ao+T
 NOfUqJsGdgFTyM+0k1m2xkbZ6ucKIp08KA+67ZZzOLTy8Ejuzu78IbvQb3BAsjDxDHHV
 TuAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=7tZV/C+CttVM58WgI5MskpQ9uHYkdrjmm3CFUmvewno=;
 b=JBPneLk68BJxwzVUPKazv9Um0tPxaciPpZHSy2b6ZKnJcHI5aHtbo5rhUnX3+CTjdX
 M/EPCmzKcsnKC5EGd7Ak3i5KgULrBdtm3loSvxHmH1REdpEdAVvFl/v0E2roo6I4MH1P
 HksVj3fk6t03D4rMso9+HYaRv9JZKLGUlvVZX+Bi42kOiDuBSvRqAzTdw9FstbFgdzGR
 S7KysS9Vx8fpDUtP+Sl2snODvzO/a4UQPStS/DCE2aeUmw5TWp+EFU5LYZzcwv+CtXjk
 T25d52NPmpVdwqa6pyGRAOk5tr3nPyf9EcYny2IVxLzuWOw1xpoVKHMrqHwNO64IuhmW
 3vMQ==
X-Gm-Message-State: APjAAAUdl7uy/RdNBIlLNQ24ADt6ZfuTj3H0tPJ0NS/xRF1M1Mwz6Xq1
 O8eQyxzV0Y0WG8lZKiXngrNKdg==
X-Google-Smtp-Source: APXvYqwaN+jzxqGhqbcsiExg1wesaEC2LCxVh6tSbvfJCScUe6zZHJ2RcSBvMSMOl0MzKlQhkyBhKw==
X-Received: by 2002:a5d:408c:: with SMTP id o12mr37516277wrp.176.1565605120486; 
 Mon, 12 Aug 2019 03:18:40 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id d20sm10642375wmb.24.2019.08.12.03.18.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:18:39 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:18:38 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v3 03/10] rtc: mt6397: move some common definitions into
 rtc.h
Message-ID: <20190812101838.GG26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-4-frank-w@public-files.de>
 <20190805134842.GG3600@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805134842.GG3600@piout.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_031842_091862_71CB19BA 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

T24gTW9uLCAwNSBBdWcgMjAxOSwgQWxleGFuZHJlIEJlbGxvbmkgd3JvdGU6Cgo+IE9uIDI5LzA3
LzIwMTkgMTk6NDE6NDcrMDIwMCwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKPiA+IEZyb206IEpv
c2VmIEZyaWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+ID4gCj4gPiBtb3ZlIGNvZGUgdG8g
c2VwYXJhdGUgaGVhZGVyLWZpbGUgdG8gcmV1c2UgZGVmaW5pdGlvbnMgbGF0ZXIKPiA+IGluIHBv
d2Vyb2ZmLWRyaXZlciAoZHJpdmVycy9wb3dlci9yZXNldC9tdDYzMjMtcG93ZXJvZmYuYykKPiA+
IAo+ID4gY2hhbmdlcyBzaW5jZSB2MjogYWRkIG1pc3NpbmcgY29tbWl0LW1lc3NhZ2UKPiAKPiBU
aGUgY2hhbmdlbG9nIHNob3VsZCBiZSBhZnRlciB0aGUgLS0tIG1hcmtlci4KPiA+IAo+ID4gU3Vn
Z2VzdGVkLWJ5OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KPiA+
IFNpZ25lZC1vZmYtYnk6IEpvc2VmIEZyaWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+ID4g
U2lnbmVkLW9mZi1ieTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3J0Yy9ydGMtbXQ2Mzk3LmMgICAgICAgfCA1NSArLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIGluY2x1ZGUvbGludXgvbWZkL210NjM5Ny9ydGMuaCB8
IDcxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKCkkgdGhpbmsgaW5jbHVkZS9s
aW51eC9ydGMvbXQ2Mzk3Lmggd291bGQgYmUgYmV0dGVyPwoKQ2VydGFpbmx5IGZyb20gYSBtYWlu
dGFpbmFuY2UgUG9WLCBpdCB3b3VsZCBiZSBiZXR0ZXIgcmV2aWV3ZWQgYW5kCmxvb2tlZCBhZnRl
ciBieSBhbiBSVEMgZXhwZXJ0LgoKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDcyIGluc2VydGlvbnMo
KyksIDU0IGRlbGV0aW9ucygtKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4
L21mZC9tdDYzOTcvcnRjLmgKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZp
Y2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRl
ayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
