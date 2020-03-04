Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3ED17914F
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Mar 2020 14:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=glenSMQEe2pZ1UrVQHwgegQIqlLS6ctxuNET69IulDY=; b=d200cegYuNovBe
	DL+G6ivIf6/LKgL/5+U7apNK//h6EqBiQ+JMUh5UWApkNNTPS0S2qpfJ2PJBaiazfkUuFMAATGTrD
	Tlo/SgfXl9GTa2VzzMSO6KKtZN45wMnTEIi76kG6HycrrvSuk/Ko7+P1l6lRGNmcJtEnOOamWHgks
	d1Tw0kHieJD+HgetMuoPBbGe4u0KgvCI65HbZy+USTz7KRRVbBz/s7DH5+PaDu06YIwymautJ2akY
	j2davmdF9VhXrRA3Rc2j6Crad+qQNoWlex12x2XpEGukAzdyi7YcZZ72apRAykIVgLuNRb4pgjvPF
	+9p7DMes3su6C0GeC/sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9U4L-0006L4-7e; Wed, 04 Mar 2020 13:28:13 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9U4I-0006Ju-Op
 for linux-mediatek@lists.infradead.org; Wed, 04 Mar 2020 13:28:12 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 59B1C3A4; Wed,  4 Mar 2020 14:27:59 +0100 (CET)
Date: Wed, 4 Mar 2020 14:27:53 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 00/14] iommu: Move iommu_fwspec out of 'struct device'
Message-ID: <20200304132753.GA4177@8bytes.org>
References: <20200228150820.15340-1-joro@8bytes.org>
 <20200303191624.GC27329@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303191624.GC27329@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_052810_956865_6920C9BA 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Clark <robdclark@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-arm-msm@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 iommu@lists.linux-foundation.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Sean Paul <sean@poorly.run>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Will,

On Tue, Mar 03, 2020 at 07:16:25PM +0000, Will Deacon wrote:
> I haven't had a chance to review this properly yet, but I did take it
> for a spin on my Seattle board with MMU-400 (arm-smmu) and it seems to
> work the same as before, so:
> 
> Tested-by: Will Deacon <will@kernel.org> # arm-smmu
> 
> I'll try to review the patches soon.

Thanks for testing it! I will send out a new version probably beginning
of next week (I am travelling this week) to fix the kbuild issue and
anything you might find.

Thanks,

	Joerg

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
