Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB631D7A7B
	for <lists+linux-mediatek@lfdr.de>; Mon, 18 May 2020 15:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkA1HNID0QCgxINjvUcSBsqAf+ebQY+cq5srNrEEjsQ=; b=aFbvgxHoGdVTdZ
	tPVlIW6sPzGuab95p/rs6eDdgSCEd/kCBtV38iOFRJP5/5xEfM1kO719gS7Z0x+viekrFeM9HCreJ
	NOzk1rm6zNT/20KoFSnd4C8E38hnck8m4aKcfbwAWdj+XlSlctd75/Qi9rSJMttWPJCrw6NteqjMd
	2XAJpq9+Q17DMZ3nyFbih1HkAvGPUmy3cdIHH5e1E/IYhTk2uASIXhl/jtrJhwqAe+XX948krGySR
	6WyQLt4Kmb87vuNiPmnR2jJLKvVrsSPt0B7t46wrUEV2mIKl4U3SXYlbpelaxGH80JcGA203zHY7B
	MeNM1swkSaL9dKeqVzsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jagEY-000852-0i; Mon, 18 May 2020 13:55:10 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jagET-0006xk-Rk
 for linux-mediatek@lists.infradead.org; Mon, 18 May 2020 13:55:07 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 10B08386; Mon, 18 May 2020 15:55:04 +0200 (CEST)
Date: Mon, 18 May 2020 15:55:02 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v2 23/33] iommu/mediatek-v1 Convert to
 probe/release_device() call-backs
Message-ID: <20200518135502.GE18353@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
 <20200414131542.25608-24-joro@8bytes.org>
 <1589528699.26119.9.camel@mhfsdcap03>
 <20200515100718.GS18353@8bytes.org>
 <1589784680.15083.19.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589784680.15083.19.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_065506_070647_4E1E90B0 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Joerg Roedel <jroedel@suse.de>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On Mon, May 18, 2020 at 02:51:20PM +0800, Yong Wu wrote:
> below is my local patch. split "dma_attach" to attach_device and
> probe_finalize. About attach_device, Use the existed
> __iommu_attach_group instead. Then rename from the "dma_attach" to
> "probe_finalize" to do the probe_finalize job. And move it outside of
> the mutex_unlock.
> 
> I'm not sure if it is right. and of course I will test if you have any
> other solution. Thanks.
> 
> 
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -1665,26 +1665,20 @@ static void probe_alloc_default_domain(struct
> bus_type *bus,
>  
>  }
>  
> -static int iommu_group_do_dma_attach(struct device *dev, void *data)
> +static int iommu_group_do_probe_finalize(struct device *dev, void
> *data)
>  {
>  	struct iommu_domain *domain = data;
> -	const struct iommu_ops *ops;
> -	int ret;
> -
> -	ret = __iommu_attach_device(domain, dev);
> -
> -	ops = domain->ops;
> +	const struct iommu_ops *ops = domain->ops;
>  
> -	if (ret == 0 && ops->probe_finalize)
> +	if (ops->probe_finalize)
>  		ops->probe_finalize(dev);
> -
> -	return ret;
> +	return 0;
>  }
>  
> -static int __iommu_group_dma_attach(struct iommu_group *group)
> +static int iommu_group_probe_finalize(struct iommu_group *group)
>  {
>  	return __iommu_group_for_each_dev(group, group->default_domain,
> -					  iommu_group_do_dma_attach);
> +					  iommu_group_do_probe_finalize);
>  }
>  
>  static int iommu_do_create_direct_mappings(struct device *dev, void
> *data)
> @@ -1731,12 +1725,14 @@ int bus_iommu_probe(struct bus_type *bus)
>  
>  		iommu_group_create_direct_mappings(group);
>  
> -		ret = __iommu_group_dma_attach(group);
> +		ret = __iommu_attach_group(group->default_domain, group);
>  
>  		mutex_unlock(&group->mutex);
>  
>  		if (ret)
>  			break;
> +
> +		iommu_group_probe_finalize(group);
>  	}
>  
>  	return ret;
> -- 

Yes, I think moving the probe_finalize call out of the group->mutex
section is the right fix for this issue.

Thanks for reporting it and working on a fix.


Regards,

	Joerg

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
