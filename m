Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A013695B49
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 11:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKtyughmaJOFW7cz6p7s79l0QplefPyQpAa1+PLsWFU=; b=c26ZYPFRMDUZiS
	EFNEua37SgmZpF5eYQHa6UjUx+ZV9dBl6rvPNPrgy80Yc32S0CWYT9KcF7B/vmkT5X/mdEqOq4m4v
	9MxXp2wSBMzUESXE9sSxVqCmQL+/BAmmdyeOPnKkU2yXZil/F7OQ1xSNa+k+RYnMQYWJx96B7eCRI
	rXNZeD2bfwCaOedd59BnHtFQpLhDMCj7ELo0QkXHrltLjTK6+ufvRBeVW37fJjO8+HKmIQcHLlhzQ
	vkUVRlKfZd9pxqGMhUo7M+lMtA/t3Aj/jGY7lS9ObYDfFSLRJFmE3xglqZGO8ZA6Cbw3npao+idy8
	znfnoIFsQI1eOfC2iiSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00ei-0000Iw-6Y; Tue, 20 Aug 2019 09:42:20 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i00eL-0008VQ-I1; Tue, 20 Aug 2019 09:41:57 +0000
Date: Tue, 20 Aug 2019 02:41:57 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <murphyt7@tcd.ie>
Subject: Re: [PATCH V5 2/5] iommu: Add gfp parameter to iommu_ops::map
Message-ID: <20190820094157.GB24154@infradead.org>
References: <20190815110944.3579-1-murphyt7@tcd.ie>
 <20190815110944.3579-3-murphyt7@tcd.ie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815110944.3579-3-murphyt7@tcd.ie>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
