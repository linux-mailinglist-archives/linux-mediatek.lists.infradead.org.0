Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C0F142607
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 Jan 2020 09:44:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TU09hQ6ZlWq0k/zcN3N8aLahC/xlHd9dCff81YewW6I=; b=HqJVzCMimYsHWC
	WrU2DdxV3gchxdMUYi3PRzLoSPCcBuS+yClysTJMamhwdl78lLlzxXPPmXiBJB3viQnvT3NrLree2
	NlC7ERXKj1PVDGc7n7KU3laGh0UPPQevIbbhFWioOM/rDDTSIu+JclcZgEE1Ay5JxnUG9gi5RKN+E
	jfFweIek+nTozxl31b/+MN/fD8ReICR+Jlyby6TXEKHlKeUPGgkkV4ZOz6RbHIycN9yYheWI2VWD9
	7guVlXrKuMfEx6p5thMlj1TzgGxdnLvkEO4xH7b+cbo1oHBVG8MVthDlgJETf0H162cF0v/nKZhtK
	AWfPWTPAVXSOAdnityFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSfg-00011K-7Q; Mon, 20 Jan 2020 08:44:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSfZ-0000zL-R1
 for linux-mediatek@lists.infradead.org; Mon, 20 Jan 2020 08:44:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so13796826wma.1
 for <linux-mediatek@lists.infradead.org>; Mon, 20 Jan 2020 00:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=s+lxv8yS+tPPVLLVda+OIOe+B0+kZ5og8HXVAwOgVOE=;
 b=DS89j9PWMbSs7Q0oYxvC9+QxP7mMSQtykSp6CPFm9blhsNBPlaMHsPGvSxHMFwMWYf
 mce//OGWonh+G0xoWFBeMQ6MygHTpF/5MXnrL8h2bDTKR5wY8YOQ0tCm1yfjldA1AzcF
 DdOkqgraTIAY2ENvTPKz6wEVvJaqaVn/g0objOAyDQ4PagQTQ75B5YcW+L3q6VG0qrLv
 QOoQ/s7+hBCUPWP3K8MhMjLpe5THZ8jHhX5GoXsIBpf+VGSNSXshpqmK2meAgKvEwHQL
 d7AxVplHo9ZfzqOwGdNhqWXXLBe8I9I0KxmqKoEYZvXF1IWpMDYPcXH9SUha06mzy86L
 m3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=s+lxv8yS+tPPVLLVda+OIOe+B0+kZ5og8HXVAwOgVOE=;
 b=owPOhZnZS5+Hjo9DulTIvgmI7ZOuYnZrdiFgF+Hv7UbIULIoVUZC/5X8pAybSF7H1l
 0fJ8Ie9UL1aTiQX7j9wrGXm07VPbh0xXSmWi5taIxN/p+s38rwVc0IcNf4JjxKldgI07
 eGeH8WkrNXIQI6Kfjla6zSKLnD+vW54sO0XBOQYcOxqyM9xm70yo3/MoSbLj+HgLxAkc
 mze4ibtcYWbhYZ/pJ94JCyE7MBK/TvzpBsZctLJ8h4dLu6SX5fRhHE2EwxeIp3Re3/bY
 4nsiQPlj4GuTCi9qS+UcUslZVaLJK2Mv7oQE24fwddWwoGZxiOilg/Ao1UHBQazTihQ0
 i17g==
X-Gm-Message-State: APjAAAXVNGRA9TqKxAO/1GhA46v5qtMJ34b9HFbiA3h59M/5zcdRX+ke
 VJ5EyQEWJbHTPHznqBcrCoPZxZpKGOM=
X-Google-Smtp-Source: APXvYqyxULuntfgFhWunP/TGRe20THFA3uILY3jQLy0UfU93w71D1ribWIK30iqLIEbqoWtsxy0iAQ==
X-Received: by 2002:a1c:9cce:: with SMTP id
 f197mr18331493wme.133.1579509863421; 
 Mon, 20 Jan 2020 00:44:23 -0800 (PST)
Received: from dell ([2.27.35.227])
 by smtp.gmail.com with ESMTPSA id b137sm3009206wme.26.2020.01.20.00.44.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 00:44:22 -0800 (PST)
Date: Mon, 20 Jan 2020 08:44:39 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [RESEND 2/4] mfd: Add for PMIC MT6359 registers definition
Message-ID: <20200120084439.GX15507@dell>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
 <1579506450-21830-3-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579506450-21830-3-git-send-email-Wen.Su@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_004425_873324_DCB812C5 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCAyMCBKYW4gMjAyMCwgV2VuIFN1IHdyb3RlOgoKPiBGcm9tOiBXZW4gU3UgPHdlbi5z
dUBtZWRpYXRlay5jb20+Cj4gCj4gVGhpcyBhZGRzIE1lZGlhVGVrIFBNSUMgTVQ2MzU5IHJlZ2lz
dGVycyBkZWZpbml0aW9uIGZvciB0aGUKPiBmb2xsb3dpbmcgc3ViIG1vZHVsZXM6Cj4gCj4gLSBS
ZWd1bGF0b3IKPiAtIFJUQwo+IC0gSW50ZXJydXB0Cj4gCj4gQWNrZWQtZm9yLU1GRC1ieTogTGVl
IEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkZZSSwgdGhpcyBpcyBhIHJlYWwgQWNrZWQt
YnkuCgpXaG9ldmVyIHRha2VzIHRoaXMgc2V0IGNhbiB0YWtlIHRoaXMgcGF0Y2guCgo+IFNpZ25l
ZC1vZmYtYnk6IFdlbiBTdSA8d2VuLnN1QG1lZGlhdGVrLmNvbT4KPiAtLS0KPiAgaW5jbHVkZS9s
aW51eC9tZmQvbXQ2MzU5L3JlZ2lzdGVycy5oIHwgNTMxICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1MzEgaW5zZXJ0aW9ucygrKQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzU5L3JlZ2lzdGVycy5oCgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFy
bzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1l
ZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
