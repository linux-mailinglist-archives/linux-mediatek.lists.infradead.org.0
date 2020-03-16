Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54220186F70
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 16:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4d9J2yPa7+slD1fHfuLAqudpMa2uX39DyaiB4g0eys0=; b=ao/E78KnnDX7y1
	NklQOTaExxk9IZXdUvx9DeumDnhpN6zlXeI6vqAgqIGizzGg4w/jr0sKTyb0Fc/p2k3I6/rVILgB/
	KP+CGZXWEk9bP4lOteJqDEADzcCLf6gMZI3luLRadcdc55KyZdy0920vYHYQc8yVAcXMfKywrOJ/Z
	HlBpudpnljfI0YY/ecRMAlvVQHne57nhTFfM7YRE7sElW1Fpz8tkXuwa6m6uO3G3kmAFD2Bnx/tT3
	Tgt1AKLAn3AbCIUO7uBZV2fCHDQWoz6eBK/bA7cAZSqfkVy3w8DX48O9tTNmk2CMbDmnA4mm+HS9Z
	9IjIMKILQzYoZRBiTRwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDs6o-0007vX-Ke; Mon, 16 Mar 2020 15:56:54 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDs6l-0007uq-DF
 for linux-mediatek@lists.infradead.org; Mon, 16 Mar 2020 15:56:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id a132so18260011wme.1
 for <linux-mediatek@lists.infradead.org>; Mon, 16 Mar 2020 08:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xMvs0/HoidPNJcKREH4cxPQfySQhzOIJtF8I7+UM558=;
 b=uq3aC7rP8Gi0hWD2k9GTvb304Urdg7HWJq+1GajWwKZFGsN2rAJMGURBxedQKUW4jd
 asGhdTqUUsTBsHFqdt9E3rUbuOPH9LnplZyIROCXZts0Altk+BtOGfxVnQG2zCkEVKBq
 NAuI2JAjicGhKKjGeoT4CC5ZB2QqLarkq2Zu2k9kjsXdW+uN+BMXxoUU5u4N96yU44fx
 tCZDJoxX8PkOf/gkX0aCFzGDyygT+xsCtaCtEDXLQvT6XUdDgAn69Z6zXz1IbnDjfIOR
 mq+n2Ab7QrOC31UPcgX0gGxqUx4OOFYTI0TN6BbHpW3S45c2GIHm7KEYESWZoQ3DPMJV
 MY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xMvs0/HoidPNJcKREH4cxPQfySQhzOIJtF8I7+UM558=;
 b=ghjTWxiMdC67jxKjzrk9Ax5jy1XEfS0ojw8v8zuBaNMboxsey8lAXPwM2r8ex84VM2
 ooghrE41M6H7eLx1QOY8wUloNt5jle27gWPNPjQQYlY/8J5BvK7xVt6C4SCsnBeReiFL
 hk/7SYVzJx581Mwcd+R95jrAAWF0tJNBWbEBjMsYxtoDrb+YIfETDdWxzxTUy1diqmAD
 YtocMXsJmaVQjeMdyOXfZ9ajqPHpEYd1I0c81aa/dl+4FVgG48StOgCL+/UeqnNt1Qec
 1u+k2EZchj9vnNALB1PfYeYHcKWosgydB+1UPUId9PMd3KpL7IO56koSwn8rP3XEAkD/
 7V6w==
X-Gm-Message-State: ANhLgQ3QZhz8ggO9b9SiXGVnwT0JMYkLGzDmFDs1H+6fyJ21XdUGW+5x
 qxd/mWQP3d7M1idS63vhZYArfw==
X-Google-Smtp-Source: ADFU+vtb9SuXzA1/Pyl3fT36qeOkgagpJNuCxgpPrVNo6inRK/YVmejfWVsaU34AB8eJFzzgsz2mCw==
X-Received: by 2002:a1c:4d13:: with SMTP id o19mr28587408wmh.186.1584374209825; 
 Mon, 16 Mar 2020 08:56:49 -0700 (PDT)
Received: from myrica ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id w16sm531971wrp.8.2020.03.16.08.56.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 08:56:49 -0700 (PDT)
Date: Mon, 16 Mar 2020 16:56:41 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH 14/15] iommu/virtio: Use accessor functions for iommu
 private data
Message-ID: <20200316155641.GN304669@myrica>
References: <20200310091229.29830-1-joro@8bytes.org>
 <20200310091229.29830-15-joro@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310091229.29830-15-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_085651_445577_6F7F9EC2 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Clark <robdclark@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-msm@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 iommu@lists.linux-foundation.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Joerg Roedel <jroedel@suse.de>, Hanjun Guo <guohanjun@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Sean Paul <sean@poorly.run>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 10:12:28AM +0100, Joerg Roedel wrote:
> From: Joerg Roedel <jroedel@suse.de>
> 
> Make use of dev_iommu_priv_set/get() functions.
> 
> Signed-off-by: Joerg Roedel <jroedel@suse.de>

Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

And tested on QEMU

> ---
>  drivers/iommu/virtio-iommu.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
> index cce329d71fba..8ead57f031f5 100644
> --- a/drivers/iommu/virtio-iommu.c
> +++ b/drivers/iommu/virtio-iommu.c
> @@ -466,7 +466,7 @@ static int viommu_probe_endpoint(struct viommu_dev *viommu, struct device *dev)
>  	struct virtio_iommu_req_probe *probe;
>  	struct virtio_iommu_probe_property *prop;
>  	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> -	struct viommu_endpoint *vdev = fwspec->iommu_priv;
> +	struct viommu_endpoint *vdev = dev_iommu_priv_get(dev);
>  
>  	if (!fwspec->num_ids)
>  		return -EINVAL;
> @@ -648,7 +648,7 @@ static int viommu_attach_dev(struct iommu_domain *domain, struct device *dev)
>  	int ret = 0;
>  	struct virtio_iommu_req_attach req;
>  	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> -	struct viommu_endpoint *vdev = fwspec->iommu_priv;
> +	struct viommu_endpoint *vdev = dev_iommu_priv_get(dev);
>  	struct viommu_domain *vdomain = to_viommu_domain(domain);
>  
>  	mutex_lock(&vdomain->mutex);
> @@ -807,8 +807,7 @@ static void viommu_iotlb_sync(struct iommu_domain *domain,
>  static void viommu_get_resv_regions(struct device *dev, struct list_head *head)
>  {
>  	struct iommu_resv_region *entry, *new_entry, *msi = NULL;
> -	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> -	struct viommu_endpoint *vdev = fwspec->iommu_priv;
> +	struct viommu_endpoint *vdev = dev_iommu_priv_get(dev);
>  	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
>  
>  	list_for_each_entry(entry, &vdev->resv_regions, list) {
> @@ -876,7 +875,7 @@ static int viommu_add_device(struct device *dev)
>  	vdev->dev = dev;
>  	vdev->viommu = viommu;
>  	INIT_LIST_HEAD(&vdev->resv_regions);
> -	fwspec->iommu_priv = vdev;
> +	dev_iommu_priv_set(dev, vdev);
>  
>  	if (viommu->probe_size) {
>  		/* Get additional information for this endpoint */
> @@ -920,7 +919,7 @@ static void viommu_remove_device(struct device *dev)
>  	if (!fwspec || fwspec->ops != &viommu_ops)
>  		return;
>  
> -	vdev = fwspec->iommu_priv;
> +	vdev = dev_iommu_priv_get(dev);
>  
>  	iommu_group_remove_device(dev);
>  	iommu_device_unlink(&vdev->viommu->iommu, dev);
> -- 
> 2.17.1
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
