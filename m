Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A029F89B42
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 12:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLlOpHMUMorDGO6frewnvbmtRLwUvsDRnfVHOlIvvfA=; b=L+WjUrSKvhzeps
	jCIDwROkEeMHm1b2Q852rSXdg8YJD+u5CNOeL6yRa2cnibd+LKCOcSUrk0YgNzXqsoAdDa7vgD4aW
	pU4CPzY92occdiuBZPVbZpsksLZ4hqvFrRhkqPZe+j6DBOQZ7PhmAxqc7yKsxUYu1ALIIKXPZ3zSi
	iID2Ii7aX0UHsoUP9Scplld8PvPPgBjS0C+GVhczPtV6SVdk2mK2BFctIEcScdIj5ThnmSiVnAyvH
	8KPw/f9YcLsZZ3zKrjosZgdYhyeFmRNlqksAQ+Q2/luisq2FRKyW4qYmZm6ZT9fXsH+qcmgdDc9uE
	jmZksa1mH5kV+XcfUA3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7RT-0004Bx-Dv; Mon, 12 Aug 2019 10:20:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7RP-0004Av-QN
 for linux-mediatek@lists.infradead.org; Mon, 12 Aug 2019 10:20:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id g67so11271025wme.1
 for <linux-mediatek@lists.infradead.org>; Mon, 12 Aug 2019 03:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=wqTQ6b6cfwbQrBuBsS4ZVRP0NDej0Y0Ylh0VQUZjqgY=;
 b=t3Qr2H34fWbt8fRrhsE0KTVByOzaYjedOJJltCPnMeMOlXg2a9+YRp164xeuTD4YbM
 lrgMQ9GSXc3yAU9Ua5Pvg2u0KKi7OdsS+1mbgAxIYKSG+v6wt0MmSFjY3wPhTgiJZwHG
 3SmIlbvswNbBNVK6ECgHoKHH8MMnaenIIWEIIDfMAPNz0pyf8vXAy/fD1SNgTGoiHx6M
 AMiRQLzKIuE1mTDr9xRSn/UGxK/YhEOIsMCX9BlBbqY/Ouczt3p8B93bzuenedMJw6i/
 4dJHtCJ9XUDX3uCnhcnpxO7mICVkJw9DoJYJ3hz0cR1rjUiIjy8vSw9kSwQgO1gVbCGm
 junA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=wqTQ6b6cfwbQrBuBsS4ZVRP0NDej0Y0Ylh0VQUZjqgY=;
 b=HxGLXXdx5UteeyKUViYKfxxikIrpHj8SgDtEMBfecW7zJlTTJKVXvIDo4mA1gme3pP
 NaWdqxNCk1G638xr389bYyQN8gwT2EQq1qzU87DDeYMSV48O4Xzwa1mfR5qdgowEO9QT
 FGsQiHJQQehd9WFyxfv8/AlXfYxrydS+Hyv46wnQZlhL9zwYORjSWiS08VKJT3bz2E8h
 UKq5m1sQov2EQK5nZyHRnhB8k9mtkQ9sRWIDbDB881t1ztUDyzhOGDZzQf5kjv/Nhxh5
 cLCCKF2jYpHYmPjDo8zi1GTbWqx0Hqa8RRRfEwek6uDIPCn9wZPJFaj3Dkks4+KNn9NE
 WTRg==
X-Gm-Message-State: APjAAAUZl2kis3v5sPkbQHbOmD9IjsTWpwaeqiJJvFcyfbzQpDJzRm4Z
 bOmQ8VPYSaiYgJ8NXZNSePGXRA==
X-Google-Smtp-Source: APXvYqzRSyrYT9+CnNldwN3uU/Yytvk4N9NCIYzWkwcCnwMNp8R3C+kWgZvgsTeSyQKkAOTnKXzSyg==
X-Received: by 2002:a1c:6c0d:: with SMTP id h13mr24864195wmc.74.1565605238212; 
 Mon, 12 Aug 2019 03:20:38 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id x13sm465212wmj.12.2019.08.12.03.20.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:20:37 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:20:35 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v3 01/10] dt-bindings: add powercontroller
Message-ID: <20190812102035.GH26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-2-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729174154.4335-2-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_032039_862589_839A3A8C 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gYWRkIG10NjMyMy1ydGMgYW5k
IG10NjMyMy1wd3JjIHRvIG10NjM5NyBtZmQgRFQgYmluZGluZ3MKPiBhbiBleGFtcGxlIGlzIHNo
b3duIGluIG10NjMyMy1wb3dlcm9mZi50eHQKPiAKPiBjaGFuZ2VzIHNpbmNlIHYyOiBzZXBhcmF0
ZWQgcnRjLW10NjM5Ny50eHQgdG8gcGFydCAyCj4gCj4gU3VnZ2VzdGVkLWJ5OiBGcmFuayBXdW5k
ZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3NlZiBG
cmllZGwgPGpvc2VmLmZyaWVkbEBzcGVlZC5hdD4KPiBTaWduZWQtb2ZmLWJ5OiBGcmFuayBXdW5k
ZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KPiAtLS0KPiAgLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvbWZkL210NjM5Ny50eHQgICAgICAgIHwgMTAgKysrKysrKysrLQo+ICAuLi4vYmlu
ZGluZ3MvcG93ZXIvcmVzZXQvbXQ2MzIzLXBvd2Vyb2ZmLnR4dCAgfCAyMCArKysrKysrKysrKysr
KysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3Bvd2VyL3Jlc2V0L210NjMyMy1wb3dlcm9mZi50eHQKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0IGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0Cj4gaW5kZXggMGViZDA4YWY3Nzdk
Li40NGFjYjk4Mjc3MTYgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21mZC9tdDYzOTcudHh0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21mZC9tdDYzOTcudHh0Cj4gQEAgLTgsNiArOCw3IEBAIE1UNjM5Ny9NVDYzMjMgaXMg
YSBtdWx0aWZ1bmN0aW9uIGRldmljZSB3aXRoIHRoZSBmb2xsb3dpbmcgc3ViIG1vZHVsZXM6Cj4g
IC0gQ2xvY2sKPiAgLSBMRUQKPiAgLSBLZXlzCj4gKy0gUG93ZXIgY29udHJvbGxlcgo+IAo+ICBJ
dCBpcyBpbnRlcmZhY2VkIHRvIGhvc3QgY29udHJvbGxlciB1c2luZyBTUEkgaW50ZXJmYWNlIGJ5
IGEgcHJvcHJpZXRhcnkgaGFyZHdhcmUKPiAgY2FsbGVkIFBNSUMgd3JhcHBlciBvciBwd3JhcC4g
TVQ2Mzk3L01UNjMyMyBNRkQgaXMgYSBjaGlsZCBkZXZpY2Ugb2YgcHdyYXAuCj4gQEAgLTIyLDgg
KzIzLDEwIEBAIGNvbXBhdGlibGU6ICJtZWRpYXRlayxtdDYzOTciIG9yICJtZWRpYXRlayxtdDYz
MjMiCj4gIE9wdGlvbmFsIHN1Ym5vZGVzOgo+IAo+ICAtIHJ0Ywo+IC0JUmVxdWlyZWQgcHJvcGVy
dGllczoKPiArCVJlcXVpcmVkIHByb3BlcnRpZXM6IFNob3VsZCBiZSBvbmUgb2YgZm9sbG93cwo+
ICsJCS0gY29tcGF0aWJsZTogIm1lZGlhdGVrLG10NjMyMy1ydGMiCj4gIAkJLSBjb21wYXRpYmxl
OiAibWVkaWF0ZWssbXQ2Mzk3LXJ0YyIKPiArCUZvciBkZXRhaWxzLCBzZWUgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3J0Yy9ydGMtbXQ2Mzk3LnR4dAoKUGxlYXNlIHVzZSByZWxh
dGl2ZSBwYXRocy4KCkUuZzogLi4vYmluZGluZ3MvcnRjL3J0Yy1tdDYzOTcudHh0CgpBcGFydCBm
cm9tIHRoYXQsIHRoZSBNRkQgcGFydHMgbG9vayBva2F5IHRvIG1lLgoKRm9yIG15IG93biByZWZl
cmVuY2U6CiAgQWNrZWQtZm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9y
Zz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBM
ZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xs
b3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QK
TGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
