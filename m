Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF39495B3E
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 11:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKI0+bN6tx+bDXsD5x0oXG1Aw5qzMj7G7asKXj5Fzd8=; b=H9BVMR8MLU1UhN
	+bNtp3oEgzDIq9eMdIWfVl6nsD4Xhlor9NwHCTu1ZBItkMMvPMDz+IgVYQonA+fv/WaNcGqHzSyu5
	hGeRmWyCuFwb3SXdZCay51QqYvhtZdg7lta4fTE48H6/1p8NyGvWbkBZUcAzOMF/oY2oA1FU97/Kj
	f8Hk6MUxxFGKCuetLsMtUjggVGRtrsvJzq5yYAVvWl9mAW75mliu8ufAdSkt0iMYzqKqGfOOc7oK0
	Anu2L5iOUa53ozvjy9ARBxE6tNeWvDYfRqcDxAzHDu4UKI65YQzZj3dgkKu13fjHfNDdaIkkD+huw
	3V2mkhNMFGnr1IL862wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00eH-0008Pw-9X; Tue, 20 Aug 2019 09:41:53 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i00e7-0008Ol-OL; Tue, 20 Aug 2019 09:41:43 +0000
Date: Tue, 20 Aug 2019 02:41:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <murphyt7@tcd.ie>
Subject: Re: [PATCH V5 1/5] iommu/amd: Remove unnecessary locking from AMD
 iommu driver
Message-ID: <20190820094143.GA24154@infradead.org>
References: <20190815110944.3579-1-murphyt7@tcd.ie>
 <20190815110944.3579-2-murphyt7@tcd.ie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815110944.3579-2-murphyt7@tcd.ie>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-s390@vger.kernel.org, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 David Woodhouse <dwmw2@infradead.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgMTI6MDk6MzlQTSArMDEwMCwgVG9tIE11cnBoeSB3cm90
ZToKPiBXZSBjYW4gcmVtb3ZlIHRoZSBtdXRleCBsb2NrIGZyb20gYW1kX2lvbW11X21hcCBhbmQg
YW1kX2lvbW11X3VubWFwLgo+IGlvbW11X21hcCBkb2VzbuKAmXQgbG9jayB3aGlsZSBtYXBwaW5n
IGFuZCBzbyBubyB0d28gY2FsbHMgc2hvdWxkIHRvdWNoCj4gdGhlIHNhbWUgaW92YSByYW5nZS4g
VGhlIEFNRCBkcml2ZXIgYWxyZWFkeSBoYW5kbGVzIHRoZSBwYWdlIHRhYmxlIHBhZ2UKPiBhbGxv
Y2F0aW9ucyB3aXRob3V0IGxvY2tzIHNvIHdlIGNhbiBzYWZlbHkgcmVtb3ZlIHRoZSBsb2Nrcy4K
CkkndmUgYmVlbiBsb29raW5nIG92ZXIgdGhlIGNvZGUgYW5kIHRyeWluZyB0byB1bmRlcnN0YW5k
IGhvdyB0aGUKc3luY2hyb25pemF0aW9uIHdvcmtzLiAgSSBndWVzIHdlIHRoZSBjbXB4Y2hnNjQg
aW4gZnJlZV9jbGVhcl9wdGUKaXMgdGhlIGltcG9ydGFudCBwb2ludCBoZXJlPyAgSSBoYXZlIHRv
IGFkbWl0IEkgZG9uJ3QgZnVsbHkgdW5kZXJzdGFuZAp0aGUgY29uY3VycmVuY3kgaXNzdWVzIGhl
cmUsIGJ1dCBuZWl0aGVyIGRvIEkgdW5kZXJzdGFuZCB3aGF0IHRoZQptdXRleCB5b3UgcmVtb3Zl
ZCBtaWdodCBoYXZlIGhlbHBlZCB0byBzdGFydCB3aXRoLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0Ckxp
bnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
