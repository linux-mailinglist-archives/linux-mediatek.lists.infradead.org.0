Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A37B18B4A7
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Mar 2020 14:11:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUdfUaiIY/zb2VE1ZeigZK5ndql/cTknt+PNe4pGBiA=; b=TOb79x8bWXuDLw
	aB8KV85OB3cz+PtK086GGCblAAwTAdCqUhLBatl6QKYVRxicf+2T34tTEtLPp0tPJTU7uR1rpkg+N
	pv7eQEkaENfkNMc9+7suhD3GNDMjDSmb+e59Cx5/U9v5qZyhh/NA9im+5Ik627YQwx6YP4Gdq2WJo
	3+nqzy+A4zQ+gqQardsfT0aJT4+LgNzx+VYuEgH80dDRdtMmEqjW35L5R6L4GomlqI/l7szVodEpl
	Uo0kSRkBolLZ3vCfaCzp70P3q29SEU60KXy+9wWWPbr7DuQafoal2a6+cmFFOaKK8EJN8QX/UtPFP
	fPNGKDId4G5WQOdxDK0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuxT-0000jd-3S; Thu, 19 Mar 2020 13:11:35 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuxQ-0000io-01
 for linux-mediatek@lists.infradead.org; Thu, 19 Mar 2020 13:11:33 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 8ECFE1D4; Thu, 19 Mar 2020 14:11:24 +0100 (CET)
Date: Thu, 19 Mar 2020 14:11:22 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 13/15] iommu/qcom: Use accessor functions for iommu
 private data
Message-ID: <20200319131122.GS3794@8bytes.org>
References: <20200310091229.29830-1-joro@8bytes.org>
 <20200310091229.29830-14-joro@8bytes.org>
 <20200316155223.GM304669@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316155223.GM304669@myrica>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_061132_184360_20399067 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Hi Jean-Philippe,

On Mon, Mar 16, 2020 at 04:52:23PM +0100, Jean-Philippe Brucker wrote:
> Should be:
> 
> 	if (!dev_iommu_priv_set(dev))

Thanks a lot for your reviews! I made the changes to arm-smmu and the
qcom driver you requested and will post a new version later today.

Thanks,

	Joerg

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
