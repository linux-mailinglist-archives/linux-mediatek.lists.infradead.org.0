Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 672F01954F4
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Mar 2020 11:16:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5P4rOG5n97Iz64gVnjojnxWL7yOIlgASsMnvykqF8g=; b=gxjjBrn6Veq+hF
	3nEfnBBXtrY+dkTjDeCFy8HZ31loiJDucie6hAByTbdmHWCp0kF8+VwXQNWOD7BNGpaSl3mfJ6zuA
	s0/ENuem2doRSwVxz3HiTfNqAJ7FEBye5uJ5s9bzaBj7mMNP8AH/pwQVaJbNtnBEW8BsIIKUkbCMQ
	QXTFj1HCilhJEH2VKSZTVmuoj/+qp10sxnbYA879fxJGrRCZMUelmPgBEcb0DWw+IN0gxBaBSDox/
	ApxO4bRmrs2J+1k2rKcsrMueV+rQ5I0J9I9RrKcz/iOJP+9lU4PgZbCPmFQ9ZPXkDlOi4UNqSSP9s
	ObOw/DhWOEWkK2sui/Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHm2A-000702-EI; Fri, 27 Mar 2020 10:16:14 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHm27-0006z7-DW
 for linux-mediatek@lists.infradead.org; Fri, 27 Mar 2020 10:16:12 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 8F9B42C8; Fri, 27 Mar 2020 11:16:06 +0100 (CET)
Date: Fri, 27 Mar 2020 11:16:05 +0100
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: Re: [PATCH v4 00/16] iommu: Move iommu_fwspec out of 'struct device'
Message-ID: <20200327101605.GB3103@8bytes.org>
References: <20200326150841.10083-1-joro@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326150841.10083-1-joro@8bytes.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_031611_606112_76B85D09 
X-CRM114-Status: UNSURE (   5.32  )
X-CRM114-Notice: Please train this message.
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-msm@vger.kernel.org, guohanjun@huawei.com,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Paul <sean@poorly.run>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 04:08:25PM +0100, Joerg Roedel wrote:
> Joerg Roedel (15):
>   iommu: Define dev_iommu_fwspec_get() for !CONFIG_IOMMU_API
>   ACPI/IORT: Remove direct access of dev->iommu_fwspec
>   drm/msm/mdp5: Remove direct access of dev->iommu_fwspec
>   iommu/tegra-gart: Remove direct access of dev->iommu_fwspec
>   iommu: Rename struct iommu_param to dev_iommu
>   iommu: Move iommu_fwspec to struct dev_iommu
>   iommu/arm-smmu: Fix uninitilized variable warning
>   iommu: Introduce accessors for iommu private data
>   iommu/arm-smmu-v3: Use accessor functions for iommu private data
>   iommu/arm-smmu: Use accessor functions for iommu private data
>   iommu/renesas: Use accessor functions for iommu private data
>   iommu/mediatek: Use accessor functions for iommu private data
>   iommu/qcom: Use accessor functions for iommu private data
>   iommu/virtio: Use accessor functions for iommu private data
>   iommu: Move fwspec->iommu_priv to struct dev_iommu

Applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
