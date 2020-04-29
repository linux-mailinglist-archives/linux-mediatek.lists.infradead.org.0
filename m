Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D898E1BECCA
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 Apr 2020 02:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SnOvqp3we7Em/QPoAtbXOg+nmyV/4JbJifmPQqtttEg=; b=csGgJPog0cOujwOugyBBg2hY3
	tv/I57L/svT4qSgogvHy/jM22mL/DBfQrlq6X9W/BdvpqBSc7dCIpWL18WO98LM8qRyqeBPfym9OE
	9ddxdI+C/9zBi3SktdRL1ayQ0y5vVLFETm4t9jDwsMks7ga05ThCXR/KyYY2B692wJyKDf1l5HKuv
	zmIaNhdLS2cewx332kOUCkZs2J0WxUmAH7j0KWK5GhkZSoPiuu5As0DGqlgWVtqrz4QiVP/1SJRS8
	pV29KiviZljNP/znxBq1MeToX8JhmVz7JEtKZzjRJY7nnoeJlqofVQUNPnllez/lucpZTB+oAbOYk
	K5vvPep8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTwcu-0000dc-Uh; Thu, 30 Apr 2020 00:00:28 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTwcs-0006G7-4D; Thu, 30 Apr 2020 00:00:27 +0000
IronPort-SDR: P34F8ffkXSXz++5uMV+63I3KO7HP5z7Pl99BQwdJy2R79QntKs44oZRiNMqzJm+XJCS8yFkC0U
 cZBCpdVSmwgw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 16:58:25 -0700
IronPort-SDR: jB3X6OfrFEd5jL85tzJQ7Kivv2gZUnM+5dHl+h4S2HlmkJN7B4gQQLNvquQI6pSZuDssxpDugH
 dzAsxaFwPNPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,333,1583222400"; d="scan'208";a="293374327"
Received: from chenw5-mobl1.ccr.corp.intel.com (HELO [10.254.209.112])
 ([10.254.209.112])
 by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2020 16:58:19 -0700
Subject: Re: [PATCH v3 04/34] iommu/vt-d: Wire up iommu_ops->def_domain_type
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, David Woodhouse
 <dwmw2@infradead.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>
References: <20200429133712.31431-1-joro@8bytes.org>
 <20200429133712.31431-5-joro@8bytes.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <b091a9e0-4bbb-2cd9-861e-e958bc691f73@linux.intel.com>
Date: Thu, 30 Apr 2020 07:58:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200429133712.31431-5-joro@8bytes.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_170026_177096_8B018002 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Daniel Drake <drake@endlessm.com>, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 virtualization@lists.linux-foundation.org, jonathan.derrick@intel.com,
 baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2020/4/29 21:36, Joerg Roedel wrote:
> From: Joerg Roedel <jroedel@suse.de>
> 
> The Intel VT-d driver already has a matching function to determine the
> default domain type for a device. Wire it up in intel_iommu_ops.
> 
> Signed-off-by: Joerg Roedel <jroedel@suse.de>

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

> ---
>   drivers/iommu/intel-iommu.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> index ef0a5246700e..b9f905a55dda 100644
> --- a/drivers/iommu/intel-iommu.c
> +++ b/drivers/iommu/intel-iommu.c
> @@ -6209,6 +6209,7 @@ const struct iommu_ops intel_iommu_ops = {
>   	.dev_enable_feat	= intel_iommu_dev_enable_feat,
>   	.dev_disable_feat	= intel_iommu_dev_disable_feat,
>   	.is_attach_deferred	= intel_iommu_is_attach_deferred,
> +	.def_domain_type	= device_def_domain_type,
>   	.pgsize_bitmap		= INTEL_IOMMU_PGSIZES,
>   };
>   
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
