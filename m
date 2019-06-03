Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CA032E0B
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Jun 2019 12:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9iwuUQHo1AvdyXKQl7pvFrFjULuNNNDpOENIhkf2Ys=; b=YlwgE03Jpz7Zfx
	n2N+GC4RE+SRdG3DhVg8Pky3eBeNlcX4ac0Z5REOApZCgJ+8rTrL6qkyH2dnJcrPQOCSZs5gQsgop
	IUZohlEQhkKe//ATGn04g8z8A8qbPmG1lrBl0her8C2LhucVTurBmKgEs6WWftSep1VV67yla8W2G
	FSoNY+x6LQDaKrZF84CecH4s8bwWcfr2gasIo7cwr/Mn4NsqfYgUIZRw6TlJZz4ClZF9/MLgW4YQI
	g8JWwoImW61MJBOos9hpphrv4L/4QOWm3M/yvlpZfQ0BHvFcTYkYK+Kp57IJnHCgWsGa1/MMnc2I4
	5ABsKIGWX5MOmaj2yhUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkZc-00081T-4T; Mon, 03 Jun 2019 10:52:16 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkZS-0007uV-Nf; Mon, 03 Jun 2019 10:52:08 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id C6EF836B; Mon,  3 Jun 2019 12:51:59 +0200 (CEST)
Date: Mon, 3 Jun 2019 12:51:58 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Tom Murphy <tmurphy@arista.com>
Subject: Re: [PATCH v3 0/4] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Message-ID: <20190603105158.GL12745@8bytes.org>
References: <20190506185207.31069-1-tmurphy@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506185207.31069-1-tmurphy@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_035206_922800_E0E965BD 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, iommu@lists.linux-foundation.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Tom,

On Mon, May 06, 2019 at 07:52:02PM +0100, Tom Murphy wrote:
> Convert the AMD iommu driver to the dma-iommu api. Remove the iova
> handling and reserve region code from the AMD iommu driver.

Thank you for your work on this! I appreciate that much, but I am not
sure we are ready to make that move for the AMD and Intel IOMMU drivers
yet.

My main concern right now is that these changes will add a per-page
table lock into the fast-path for dma-mapping operations. There has been
much work in the past to remove all locking from these code-paths and
make it scalable on x86.

The dma-ops implementations in the x86 IOMMU drivers have the benefit
that they can call their page-table manipulation functions directly and
without locks, because they can make the necessary assumptions. The
IOMMU-API mapping/unmapping path can't make these assumptions because it
is also used for non-DMA-API use-cases.

So before we can move the AMD and Intel drivers to the generic DMA-API
implementation we need to solve this problem to not introduce new
scalability regressions.

Regards,

	Joerg


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
