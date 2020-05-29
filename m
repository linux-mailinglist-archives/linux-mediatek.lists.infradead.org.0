Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DC71E7D7F
	for <lists+linux-mediatek@lfdr.de>; Fri, 29 May 2020 14:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3zSLrUYb/0u5SX71cD3mlYSJWX4h0R1RwXyGbFwlD4=; b=avty+hZFPF8gl5
	Tb/hjdbtYgRsEezdyiQEGNpmI+qWvTPWe3pWg8FC1t8olkElAwWlL1jZEv4llS6FwQ1mzsZt0diaR
	UI5Z/zrtWth2PsOunSXB6B7pfKVb6KgJGGYh19ApC8O7udMDgThC8B1yrgB0U00sTKFzHiXXDcMGB
	rCMBBZQQRel31HkHzupm1TPZGAblC3TXsA4BqJWcwImv7glK5+MbcA0WpTlOcU+fOmd9f6eR2WhjT
	cE+VyibwyqNYpsUEPIj3ZVLWv7+Sp4qC2v4qboku2wWLM1KXL+cdHQYGRJ7IBtz6WO+6NQ8lK/ch3
	E+bxl+FS9GnWhta+L/tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeeO9-00063g-97; Fri, 29 May 2020 12:45:29 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jeeO3-00062M-2L; Fri, 29 May 2020 12:45:23 +0000
Date: Fri, 29 May 2020 05:45:23 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 0/8] Convert the intel iommu driver to the dma-iommu api
Message-ID: <20200529124523.GA11817@infradead.org>
References: <20191221150402.13868-1-murphyt7@tcd.ie>
 <465815ae-9292-f37a-59b9-03949cb68460@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <465815ae-9292-f37a-59b9-03949cb68460@deltatee.com>
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
Cc: kvm@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 iommu@lists.linux-foundation.org, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDY6MDA6NDRQTSAtMDYwMCwgTG9nYW4gR3VudGhvcnBl
IHdyb3RlOgo+ID4gVGhpcyBpc3N1ZSBpcyBtb3N0IGxpa2VseSBpbiB0aGUgaTkxNSBkcml2ZXIg
YW5kIGlzIG1vc3QgbGlrZWx5IGNhdXNlZCBieSB0aGUgZHJpdmVyIG5vdCByZXNwZWN0aW5nIHRo
ZSByZXR1cm4gdmFsdWUgb2YgdGhlIGRtYV9tYXBfb3BzOjptYXBfc2cgZnVuY3Rpb24uIFlvdSBj
YW4gc2VlIHRoZSBkcml2ZXIgaWdub3JpbmcgdGhlIHJldHVybiB2YWx1ZSBoZXJlOgo+ID4gaHR0
cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvN2UwMTY1YjJmMWE5MTJhMDZlMzgx
ZTkxZjBmNGU0OTVmNGFjMzczNi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1h
YnVmLmMjTDUxCj4gPiAKPiA+IFByZXZpb3VzbHkgdGhpcyBkaWRu4oCZdCBjYXVzZSBpc3N1ZXMg
YmVjYXVzZSB0aGUgaW50ZWwgbWFwX3NnIGFsd2F5cyByZXR1cm5lZCB0aGUgc2FtZSBudW1iZXIg
b2YgZWxlbWVudHMgYXMgdGhlIGlucHV0IHNjYXR0ZXIgZ2F0aGVyIGxpc3QgYnV0IHdpdGggdGhl
IGNoYW5nZSB0byB0aGlzIGRtYS1pb21tdSBhcGkgdGhpcyBpcyBubyBsb25nZXIgdGhlIGNhc2Uu
IEkgd2FzbuKAmXQgYWJsZSB0byB0cmFjayB0aGUgYnVnIGRvd24gdG8gYSBzcGVjaWZpYyBsaW5l
IG9mIGNvZGUgdW5mb3J0dW5hdGVseS4gIAoKTWFyayBkaWQgYSBiaWcgYXVkaXQgaW50byB0aGUg
bWFwX3NnIEFQSSBhYnVzZSBhbmQgaW5pdGlhbGx5IGhhZApzb21lIGk5MTUgcGF0Y2hlcywgYnV0
IHRoZW4gZ2F2ZSB1cCBvbiB0aGVtIHdpdGggdGhpcyBjb21tZW50OgoKIlRoZSBiaWdnZXN0IFRP
RE8gaXMgRFJNL2k5MTUgZHJpdmVyIGFuZCBJIGRvbid0IGZlZWwgYnJhdmUgZW5vdWdoIHRvIGZp
eAogaXQgZnVsbHkuIFRoZSBkcml2ZXIgY3JlYXRpdmVseSB1c2VzIHNnX3RhYmxlLT5vcmlnX25l
bnRzIHRvIHN0b3JlIHRoZQogc2l6ZSBvZiB0aGUgYWxsb2NhdGUgc2NhdHRlcmxpc3QgYW5kIGln
bm9yZXMgdGhlIG51bWJlciBvZiB0aGUgZW50cmllcwogcmV0dXJuZWQgYnkgZG1hX21hcF9zZyBm
dW5jdGlvbi4gSW4gdGhpcyBwYXRjaHNldCBJIG9ubHkgZml4ZWQgdGhlCiBzZ190YWJsZSBvYmpl
Y3RzIGV4cG9ydGVkIGJ5IGRtYWJ1ZiByZWxhdGVkIGZ1bmN0aW9ucy4gSSBob3BlIHRoYXQgSQog
ZGlkbid0IGJyZWFrIGFueXRoaW5nIHRoZXJlLiIKCml0IHdvdWxkIGJlIHJlYWxseSBuaWNlIGlm
IHRoZSBpOTE1IG1haW50YWluZXJzIGNvdWxkIGhlbHAgd2l0aCBzb3J0aW5nCnRoYXQgQVBJIGFi
dXNlIG91dC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bWVkaWF0ZWsK
