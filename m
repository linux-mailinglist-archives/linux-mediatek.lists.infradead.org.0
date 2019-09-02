Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBABA5333
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 11:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GUQXOAYxqs/HsbeI/KemvbNI+PZm8EMF9/iEg2vabI=; b=crvH+qqaJHP20O
	oi6lFpXpsjVhZT35UZOUAYhkosW4lH84n5f5Pb3851W1jV/PbD+MheG6wu5bT9t0RhC8bPdn4yYv/
	qKB0wqoQguKJiXzbUzyYfYtyxDTqWXqoInUh2Artgnbvuwejk4/87d9CjnIJLeXRYZ5r+yl/ckKsC
	VA+lfbMvKR/JbD9lGzQmi7nhxPEFfP7xBUszoWNfRXtA/s7nNyoQTKU3L8575LY6CNrCh2AQH5V+U
	b2WzM5zGHsXLfhUrthl80e7ecISfcDiC3TsCnqluZ3y79iIDj21Wp9cYpIxBKqb8h3xsW5xzhM4m0
	kQ/iNu0QH+rWObqyKvfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4isy-0006hq-B2; Mon, 02 Sep 2019 09:44:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4isi-0006W9-1t
 for linux-mediatek@lists.infradead.org; Mon, 02 Sep 2019 09:44:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id r17so11509962wme.0
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Sep 2019 02:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=rzr6c6CJF4AO7OQdux81zJnqNsWs8fMapTnA/mWIH2k=;
 b=IPp3tcOWV67rZlX80/E5IFYzBXPjJMI6rryBXkLyrFUeBYFXwRV7zI4CLc+AKIFldP
 64rpcf21UoGVpp3I5Sn/ftpeEBMg8okKXbriPwbgXuMWaIXsWG+KJSfb5WopSyq4fHos
 uQJBobf4xSaIORYzXjGtKOXrwg/QH5ZWf8U93DWm8FG+0D40HQXWFoPdEDcjhxN7GEuq
 YuYWYj819EzbkE6cF0l3wpzBqKx3f7sf+kBfqHJolG0XfW1gf1S8uHsq6MzkbA5YRBuX
 9KqJHrA9L/utr0gH3zxbszxrh7VeiVd9PwOC4A9HNr+sGhBHb35gm0bNbLGuWj25EOHW
 CLKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=rzr6c6CJF4AO7OQdux81zJnqNsWs8fMapTnA/mWIH2k=;
 b=c49u2kdswJUvyu3V6buJJfZ2PYAJ0fPAu2cqM/2SPI5AL2i4pWar4fFDn207Z1GSgs
 VFk2R0l/AoIBj63H8hO3jXDk1Ad+67gEwI/QZw7mIwxOclUnKf/vnFa6qYi2IqS8WH6N
 CtZxVjQH82erxEZqxNe0GDl8UtylaidTDss4x+sK/lI1BjFUb6JKRBhCRF85t4MXYTpK
 6Z8PQTfsLbBTxzIMdIXxxnnilnajPVRlWZTbP3R3i3ujCT+lEQbDy2OWDIrIiRgG6BxZ
 RSY8/j2l9qaEw1dWiyY7UQMPucnbSsGAuYlQPoBoiokeNhI8JSsROLIqX8s6jbTzU83b
 KAOQ==
X-Gm-Message-State: APjAAAU8JYptrScsPpmqR/Uu3PTzfLvKLvnv0U1S4eCZ9NFGrvj6bWQ2
 RLm9OoBp0qvcrCdsEanvR7UTdQ==
X-Google-Smtp-Source: APXvYqyiJ+KUkcFbJzvDtuCJ7zAHN4kxjezhQQTUAC0DDyiipTQ7w7uuuYjP+HBaNj3IQDM7tdGAWg==
X-Received: by 2002:a1c:c5c3:: with SMTP id v186mr20911229wmf.66.1567417453967; 
 Mon, 02 Sep 2019 02:44:13 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id u68sm20849297wmu.12.2019.09.02.02.44.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:44:13 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:44:11 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 02/13] dt-bindings: mfd: mediatek: update rtc to
 include mt6323
Message-ID: <20190902094411.GQ32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-3-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-3-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024416_102758_F2E00161 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gYWRkIG10NjMyMyB0byBydGMt
YmluZGluZ3MKPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb3NlZiBGcmllZGwgPGpvc2VmLmZyaWVkbEBz
cGVlZC5hdD4KPiBTaWduZWQtb2ZmLWJ5OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1Ymxp
Yy1maWxlcy5kZT4KPiAtLS0KPiBjaGFuZ2VzIHNpbmNlIHY1OiBzcGxpdHRlZCBmcm9tICJkdC1i
aW5kaW5nczogYWRkIHBvd2VyY29udHJvbGxlciIKPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0IHwgNCArKystCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApM
ZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJv
OiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVk
aWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
