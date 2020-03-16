Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFE7186F45
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 16:51:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnQinaDQkbPXJy8RSo96FeaiwEziQ1ap4qxB2X7B5p0=; b=M6sjGGJJfoB58x
	kv6Ee19JDLyDrQ5Wng8SNrKfSVdXO89lphTOlP2jZ7qcDsgHrG8ZCUshm5kOEfi+FDe87neobzARf
	GjQcEx74U1HvnSg4OUuShVxlHbEASXoWWCwVKV1JGe++riiGZYg6Frs/t+TQvIUI7X6pNzCaaanMw
	IglILjG0UIG2fQi2DlfSkG09EhgyBwtnvV6nruTvejEEXF3+T2ZPky203pRPOvpCIQrwHY7w/6kCE
	cPaeR77aihfxsf23P6/jPp+6AvZYYqyV3OMeh/YmenpiGCptSOIsQXOvLM+UvCugbNh/LmRKvsIZ7
	UiqNGiN20t/7Sbs/uSaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDs1Z-0004zD-9R; Mon, 16 Mar 2020 15:51:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDs1W-0004yF-2X
 for linux-mediatek@lists.infradead.org; Mon, 16 Mar 2020 15:51:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id n8so18228756wmc.4
 for <linux-mediatek@lists.infradead.org>; Mon, 16 Mar 2020 08:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KkyluvbCo1smPziuTMI1rpctD2ZygqnkeyljtuoXeEw=;
 b=Ql9YUBVPAc49FI42xu2eB/uVJuxhsY9YoQnZ0XtFjXM6HeXXOBU835hweTKfAEM9zr
 ot/OVovpdvovqb2hWye7+Dj/qnKTGEkRPtuI0NO5twoZx0/MwgjkoH50sjShfw/4xGDj
 q1qnW1Z1JfMLv111SRHS2M4QOxcIoR8jkUpSGfneogiiGz5Pr0uTllS+/TIx635iELsG
 u6YJoIDM7d3hVfVFSBh5x6kT2cHR+EaZwyTgm6kbxv7LY9h4Q+f0ytoQ41X42SgS4HLo
 Rq7GsvA0EhReqsXX/ReWo+oazsMqbZTNhtJUGHfm5pRqt+vWwkp5C2wusM4Pinn9EBm/
 MsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KkyluvbCo1smPziuTMI1rpctD2ZygqnkeyljtuoXeEw=;
 b=kgSlLWOG2ctYgKLez7sLGiZFcBjZ3Ku9QyGS0jGxruqltIJVQVJWo2h4a9PxfLity4
 Tskd7yAQUqpf9q5Z9gwTZo5igiXTcW1zXbGsnCnA6L3KuJ019jTXJ6UtUQUcqMIm2IXP
 8W3oBlB5VIWd4ktADs+i+7ejnJsDsyuKgORh/5UlWtWCcCegszvayzvHTQJ3vb1HxAse
 4FR+JRkO33HiNEDBLGx32Q2MYjFLls0DN6uwX19U6IU2a7I+G3M0gDKdVlYcimltcjN4
 lo8t4YrSMv325uRRQ3fBJ7ipIGLM4ePLwfROKQprzAvUTunTZu3oUv7xDBRD4ArwrEfk
 MeXw==
X-Gm-Message-State: ANhLgQ2dY+/ju7z+YlpppuIYtBMxWTCawa8eKxTyJ0Mwpw1zRpl1JtZm
 kqqiHQQJV7JAumdnC3VP+nvFkA==
X-Google-Smtp-Source: ADFU+vsOzPwdH8tCDCurHNefcxT+FZBJmWj2HiUatr8Ym5ck83x1h29ClX9491yXix2EVw/gHBFPRA==
X-Received: by 2002:a1c:ab04:: with SMTP id u4mr28315891wme.88.1584373884542; 
 Mon, 16 Mar 2020 08:51:24 -0700 (PDT)
Received: from myrica ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id s22sm143823wmc.16.2020.03.16.08.51.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 08:51:23 -0700 (PDT)
Date: Mon, 16 Mar 2020 16:51:16 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH 12/15] iommu/mediatek: Use accessor functions for iommu
 private data
Message-ID: <20200316155116.GL304669@myrica>
References: <20200310091229.29830-1-joro@8bytes.org>
 <20200310091229.29830-13-joro@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310091229.29830-13-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_085126_120507_011F3E8C 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Tue, Mar 10, 2020 at 10:12:26AM +0100, Joerg Roedel wrote:
> From: Joerg Roedel <jroedel@suse.de>
> 
> Make use of dev_iommu_priv_set/get() functions.
> 
> Signed-off-by: Joerg Roedel <jroedel@suse.de>

Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

> ---
>  drivers/iommu/mtk_iommu.c    | 13 ++++++-------
>  drivers/iommu/mtk_iommu_v1.c | 14 +++++++-------
>  2 files changed, 13 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 95945f467c03..5f4d6df59cf6 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -358,8 +358,8 @@ static void mtk_iommu_domain_free(struct iommu_domain *domain)
>  static int mtk_iommu_attach_device(struct iommu_domain *domain,
>  				   struct device *dev)
>  {
> +	struct mtk_iommu_data *data = dev_iommu_priv_get(dev);
>  	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
> -	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
>  
>  	if (!data)
>  		return -ENODEV;
> @@ -378,7 +378,7 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
>  static void mtk_iommu_detach_device(struct iommu_domain *domain,
>  				    struct device *dev)
>  {
> -	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
> +	struct mtk_iommu_data *data = dev_iommu_priv_get(dev);
>  
>  	if (!data)
>  		return;
> @@ -450,7 +450,7 @@ static int mtk_iommu_add_device(struct device *dev)
>  	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
>  		return -ENODEV; /* Not a iommu client device */
>  
> -	data = fwspec->iommu_priv;
> +	data = dev_iommu_priv_get(dev);
>  	iommu_device_link(&data->iommu, dev);
>  
>  	group = iommu_group_get_for_dev(dev);
> @@ -469,7 +469,7 @@ static void mtk_iommu_remove_device(struct device *dev)
>  	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
>  		return;
>  
> -	data = fwspec->iommu_priv;
> +	data = dev_iommu_priv_get(dev);
>  	iommu_device_unlink(&data->iommu, dev);
>  
>  	iommu_group_remove_device(dev);
> @@ -496,7 +496,6 @@ static struct iommu_group *mtk_iommu_device_group(struct device *dev)
>  
>  static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
>  {
> -	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
>  	struct platform_device *m4updev;
>  
>  	if (args->args_count != 1) {
> @@ -505,13 +504,13 @@ static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
>  		return -EINVAL;
>  	}
>  
> -	if (!fwspec->iommu_priv) {
> +	if (!dev_iommu_priv_get(dev)) {
>  		/* Get the m4u device */
>  		m4updev = of_find_device_by_node(args->np);
>  		if (WARN_ON(!m4updev))
>  			return -EINVAL;
>  
> -		fwspec->iommu_priv = platform_get_drvdata(m4updev);
> +		dev_iommu_priv_set(dev, platform_get_drvdata(m4updev));
>  	}
>  
>  	return iommu_fwspec_add_ids(dev, args->args, 1);
> diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
> index e93b94ecac45..9930ac7413cc 100644
> --- a/drivers/iommu/mtk_iommu_v1.c
> +++ b/drivers/iommu/mtk_iommu_v1.c
> @@ -263,8 +263,8 @@ static void mtk_iommu_domain_free(struct iommu_domain *domain)
>  static int mtk_iommu_attach_device(struct iommu_domain *domain,
>  				   struct device *dev)
>  {
> +	struct mtk_iommu_data *data = dev_iommu_priv_get(dev);
>  	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
> -	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
>  	int ret;
>  
>  	if (!data)
> @@ -286,7 +286,7 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
>  static void mtk_iommu_detach_device(struct iommu_domain *domain,
>  				    struct device *dev)
>  {
> -	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
> +	struct mtk_iommu_data *data = dev_iommu_priv_get(dev);
>  
>  	if (!data)
>  		return;
> @@ -387,20 +387,20 @@ static int mtk_iommu_create_mapping(struct device *dev,
>  		return -EINVAL;
>  	}
>  
> -	if (!fwspec->iommu_priv) {
> +	if (!dev_iommu_priv_get(dev)) {
>  		/* Get the m4u device */
>  		m4updev = of_find_device_by_node(args->np);
>  		if (WARN_ON(!m4updev))
>  			return -EINVAL;
>  
> -		fwspec->iommu_priv = platform_get_drvdata(m4updev);
> +		dev_iommu_priv_set(dev, platform_get_drvdata(m4updev));
>  	}
>  
>  	ret = iommu_fwspec_add_ids(dev, args->args, 1);
>  	if (ret)
>  		return ret;
>  
> -	data = fwspec->iommu_priv;
> +	data = dev_iommu_priv_get(dev);
>  	m4udev = data->dev;
>  	mtk_mapping = m4udev->archdata.iommu;
>  	if (!mtk_mapping) {
> @@ -459,7 +459,7 @@ static int mtk_iommu_add_device(struct device *dev)
>  	if (err)
>  		return err;
>  
> -	data = fwspec->iommu_priv;
> +	data = dev_iommu_priv_get(dev)
>  	mtk_mapping = data->dev->archdata.iommu;
>  	err = arm_iommu_attach_device(dev, mtk_mapping);
>  	if (err) {
> @@ -478,7 +478,7 @@ static void mtk_iommu_remove_device(struct device *dev)
>  	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
>  		return;
>  
> -	data = fwspec->iommu_priv;
> +	data = dev_iommu_priv_get(dev)
>  	iommu_device_unlink(&data->iommu, dev);
>  
>  	iommu_group_remove_device(dev);
> -- 
> 2.17.1
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
