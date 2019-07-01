Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E82F35BB5B
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jul 2019 14:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLqwvJT4ES+ydDc/59hLpwJ8sf5jHP2asoGDyTvlCq4=; b=jrhgSnAzCoZAVW
	zVsHOWj01KSYLwvDbQ/bvZmHonbtzLpb5EXUgr9zJ/yQr9cUJmipllNvFH9J8Y42LC3QBGlxa2g2p
	xYET+/YEOc6JQL7Xur8opAkyuzAzxKhoNvl8Fmp73bacjVqVf9SJ1vonew78zI+5eCu3A+9BTifmV
	pa0MMAt7FBcANCUxmcOyDHnKqilAJ93xe1JH7YtdPYhBO73lgG4bVv3QCyVLMLevNVZhJkclzg9rf
	/Cyn7K7GVENqPkLuLp8pOzFmkYBPEvBe6Qxx0ATz/B/hubyFLrO6S2pQlQdjy9V0dYDiAcMhAS/nO
	M8buenqkbhWQMX4RGYTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhvHN-00011T-L1; Mon, 01 Jul 2019 12:19:29 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvHE-0000to-G6; Mon, 01 Jul 2019 12:19:21 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id B9E84229; Mon,  1 Jul 2019 14:19:15 +0200 (CEST)
Date: Mon, 1 Jul 2019 14:19:14 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v4 0/5] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Message-ID: <20190701121914.GD8166@8bytes.org>
References: <20190613223901.9523-1-murphyt7@tcd.ie>
 <20190624061945.GA4912@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624061945.GA4912@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_051920_693898_D61BB3CB 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 virtualization@lists.linux-foundation.org,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 iommu@lists.linux-foundation.org, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,
	
On Sun, Jun 23, 2019 at 11:19:45PM -0700, Christoph Hellwig wrote:
> Joerg, any chance you could review this?  Toms patches to convert the
> AMD and Intel IOMMU drivers to the dma-iommu code are going to make my
> life in DMA land significantly easier, so I have a vested interest
> in this series moving forward :)

I really appreciate Toms work on this. Tom, please rebase and resubmit
this series after the next merge window and I will do more performance
testing on it. If all goes well I and no other issues show up I can
apply it for v5.4.

Regards,

	Joerg


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
