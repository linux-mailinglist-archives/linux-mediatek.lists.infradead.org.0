Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72C21A7DCE
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 15:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3xUzto5V4gsHZTJxbVblkkZGfjWH7njpa6a0p9K8nA=; b=qISleDpd0v7eYj
	p+pWqaE1AmuY3R3X2Xxrva7Joh+F3xOkcvnUNHWJgKe6At8+ZqStwuSl32/TauH4XfBJmSs1HAjne
	3jWmAW3A1+aNap8Wo3dtXeNn+hgscdgRzYaRWR//mASoxoiMnqAyaf+c4zLrdhTJG7wcmGBQcs6/f
	NmM91+98D2QzMFAy2OnXN03W/TPT9xWncb4x1ayRXZsj+o3Tp8iSiAd+hMv5XTZBd3oA/JbH11Qcd
	ENFRTge5gh+D26Ie5dEde+qNshL1oXpEk6Rjm4mXqZoU4uXVptDrbAHb2t5jqQXB4P453Q0nLJzgi
	lficKQP4ddoJw41P46iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLZC-0008Q9-VH; Tue, 14 Apr 2020 13:25:30 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLRP-0003xL-PZ; Tue, 14 Apr 2020 13:17:29 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 7CE0145B; Tue, 14 Apr 2020 15:17:26 +0200 (CEST)
Date: Tue, 14 Apr 2020 15:17:24 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [RFC PATCH 33/34] iommu: Remove add_device()/remove_device()
 code-paths
Message-ID: <20200414131724.GA14731@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
 <CGME20200407183806eucas1p2cf45fbce5a43a6b4fe3a623b28da0606@eucas1p2.samsung.com>
 <20200407183742.4344-34-joro@8bytes.org>
 <1a88547f-ac90-825e-e529-a56c2c4e0391@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a88547f-ac90-825e-e529-a56c2c4e0391@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061727_993929_F03D7019 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Joerg Roedel <jroedel@suse.de>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Marek,

On Fri, Apr 10, 2020 at 12:39:38PM +0200, Marek Szyprowski wrote:
> > +		if (!group->default_domain)
> > +			continue;
> 
> It doesn't look straight from the above diff, but this continue leaks 
> group->lock taken.

You are right, thanks for the review! I fixed it in v2.

Regards,

	Joerg


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
