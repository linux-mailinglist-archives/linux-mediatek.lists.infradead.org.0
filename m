Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48208186EFF
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 16:47:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1o3sLFJez2kqQUf3/vO5KsIb81poaBF1OiUYbhUOn38=; b=cvj+7T3WoRFwm3
	98qupKTut4Fx7yD4ytxs/x5OIrsSMFDiL2HyBYX/KdWQC2+lejqr3PjzzwCSe7NqTFKozOS3IDnY5
	W9RFL1F+3Y9bLG2bhOyEGAb7l3exImx6CulDuM+HEijHc3N7ZdPli5WcaP07Jk1XKWnlDwcS6ehfu
	EoihF4Nyzbdtm0gfPS8ly/tAGc5yTVFYmd8VNEEWBziz3AtqpqY/RktZQ6fufdsv8iBqcvi93Yi/9
	mxF88uCb+cHyIjo8pXMXQH5P5q1mTic8FfdDWHMO0fxNnS6A3wtSbkZmM9KsZXL49i5br0FlB1jFh
	s3EnmSLoWT8mFAeOQRUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDrxn-0002nm-P9; Mon, 16 Mar 2020 15:47:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDrxj-0002mf-QW
 for linux-mediatek@lists.infradead.org; Mon, 16 Mar 2020 15:47:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id z13so2172429wml.0
 for <linux-mediatek@lists.infradead.org>; Mon, 16 Mar 2020 08:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3QMtJyHMdj2d3NlJHtXdRPjzJsxucKLnz+qn2QRFOx0=;
 b=oh5r2acFcKirM1Z60N97UiPELuL4YbxB+3thPoKh00c2cXA7zBnMrcg9MocIgrcoCL
 U05LP/VCBy/GD0AL9aNluQa4QCsCZCtQYprWO7EIyPc9RAWGZvVCsle+UbSRXH9Gkm/0
 KZJWytpT98u58L3kNWY/rNnStqJF3aq2+Ox1CNzi2Q+F03eOgvegXRb9TavYC+TyVBSt
 M/gQ9g1WL/OSC5hfVtxCTgHT3DFmQq6BKeS3Jv0oNCkzSq7i3fPAW/GtZOnFeBw5AIHa
 v49KMqeOlQX7Wl2sfbU7w4LmNqG13XIFmu88aXgH/xPUBruIR9N3LVcA+UxWR9+MtlzO
 N1gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3QMtJyHMdj2d3NlJHtXdRPjzJsxucKLnz+qn2QRFOx0=;
 b=VBhkHwIK/LQDwmHQWxiS+cIimKkqZw7j/QmrMUkrTU2B4JAbMGtqQbsJdufavLN8c4
 WQu2AFpMwumFvdhtxlJsSzMwQbjfjiLSQEe+/6vQbOfPRqsbm1CHnxLYeInhyeJ0vsFy
 ep+YrqNnlJSQJ7wTF+8X2UVeCbBYzsp88SxRX10HsaNCeiTWKARDKJdYbzU7xvdSvfrr
 N3YXpGSSbz/A0vmaUsNAl9kCn21vhvNGwle0V/RClocckMdwVEiYF7kdxptkN9tL1FQo
 RHijc/hi+H2oTSz6x3nsMkxDWFJOesm+HPNRHDA8RtXQg2U1ccshqJ+qFRpcSEc6qOrh
 cN9g==
X-Gm-Message-State: ANhLgQ0oGUpriaVMrcRZUbM+3OmbLCB6DXbKgaJoQzieGX3uhDfZP2wA
 t9NqTWg8gdO8DyANPe415hxhPA==
X-Google-Smtp-Source: ADFU+vubP0XZlLxNsPBJjbPqoRh9Fj10FSwYOvdazGAIlTLv21y5ghlreopBsVqOhrzi4VW31nde8w==
X-Received: by 2002:a7b:cd97:: with SMTP id y23mr28196696wmj.161.1584373650045; 
 Mon, 16 Mar 2020 08:47:30 -0700 (PDT)
Received: from myrica ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id z4sm460593wrr.6.2020.03.16.08.47.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 08:47:29 -0700 (PDT)
Date: Mon, 16 Mar 2020 16:47:22 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH 07/15] iommu/arm-smmu: Fix uninitilized variable warning
Message-ID: <20200316154722.GH304669@myrica>
References: <20200310091229.29830-1-joro@8bytes.org>
 <20200310091229.29830-8-joro@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310091229.29830-8-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_084732_304687_4934F676 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Tue, Mar 10, 2020 at 10:12:21AM +0100, Joerg Roedel wrote:
> From: Joerg Roedel <jroedel@suse.de>
> 
> Some unrelated changes in the iommu code caused a new warning to
> appear in the arm-smmu driver:
> 
>   CC      drivers/iommu/arm-smmu.o
> drivers/iommu/arm-smmu.c: In function 'arm_smmu_add_device':
> drivers/iommu/arm-smmu.c:1441:2: warning: 'smmu' may be used uninitialized in this function [-Wmaybe-uninitialized]
>   arm_smmu_rpm_put(smmu);
>   ^~~~~~~~~~~~~~~~~~~~~~
> 
> The warning is a false positive, but initialize the variable to NULL
> to get rid of it.
> 
> Tested-by: Will Deacon <will@kernel.org> # arm-smmu
> Signed-off-by: Joerg Roedel <jroedel@suse.de>

Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

> ---
>  drivers/iommu/arm-smmu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 16c4b87af42b..980aae73b45b 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -1383,7 +1383,7 @@ struct arm_smmu_device *arm_smmu_get_by_fwnode(struct fwnode_handle *fwnode)
>  
>  static int arm_smmu_add_device(struct device *dev)
>  {
> -	struct arm_smmu_device *smmu;
> +	struct arm_smmu_device *smmu = NULL;
>  	struct arm_smmu_master_cfg *cfg;
>  	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
>  	int i, ret;
> -- 
> 2.17.1
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
