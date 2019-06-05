Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A063565F
	for <lists+linux-mediatek@lfdr.de>; Wed,  5 Jun 2019 07:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plZtm7QqjXi6Qx0s/b6ihnAqCfZaxJP7t/GIweb0RJY=; b=M6zMtR60jsYkvA
	hSDnQCZrz/cyEWszMuyCGOZnSDN+UwAQebWS5gjFgNU8Qeorxt2CJzc9xXGRR5sSLUuVKn5FaX5oi
	36hgt0ccFboBFjpsZ6oSZB/w4eRgB+uZHtQUzU6qMD+rpJflEG96/E81UN+7Fc90l/PIz2spS0gtr
	GBNeOZmHMaybnQIrwkSwGmeeKErMJivm+akEDUZDY3sUSPUUUPUCHi1rc9sIWHPtfsNgLTE5Ovy7F
	pSYU/O+ROY/z1PIrEHuZifHcbjvzzXhsasYf/jUQaFFsnBf9FwX08DaJkOypkj3VTokPjZLY3prMG
	XnnndU4xJcKL2NwvjyMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYOoc-0005BO-DP; Wed, 05 Jun 2019 05:50:26 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hYOoX-0005Al-PR; Wed, 05 Jun 2019 05:50:21 +0000
Date: Tue, 4 Jun 2019 22:50:21 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <tmurphy@arista.com>
Subject: Re: [PATCH v3 1/4] iommu: Add gfp parameter to iommu_ops::map
Message-ID: <20190605055021.GA15036@infradead.org>
References: <20190506185207.31069-1-tmurphy@arista.com>
 <20190506185207.31069-2-tmurphy@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506185207.31069-2-tmurphy@arista.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMDc6NTI6MDNQTSArMDEwMCwgVG9tIE11cnBoeSB2aWEg
aW9tbXUgd3JvdGU6Cj4gV2UgY2FuIHJlbW92ZSB0aGUgbXV0ZXggbG9jayBmcm9tIGFtZF9pb21t
dV9tYXAgYW5kIGFtZF9pb21tdV91bm1hcC4KPiBpb21tdV9tYXAgZG9lc27igJl0IGxvY2sgd2hp
bGUgbWFwcGluZyBhbmQgc28gbm8gdHdvIGNhbGxzIHNob3VsZCB0b3VjaAo+IHRoZSBzYW1lIGlv
dmEgcmFuZ2UuIFRoZSBBTUQgZHJpdmVyIGFscmVhZHkgaGFuZGxlcyB0aGUgcGFnZSB0YWJsZSBw
YWdlCj4gYWxsb2NhdGlvbnMgd2l0aG91dCBsb2NrcyBzbyB3ZSBjYW4gc2FmZWx5IHJlbW92ZSB0
aGUgbG9ja3MuCgpCdHcsIHRoaXMgcmVhbGx5IHNob3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNoLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVk
aWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
