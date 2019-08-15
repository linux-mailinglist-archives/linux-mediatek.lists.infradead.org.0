Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA4E8E9B2
	for <lists+linux-mediatek@lfdr.de>; Thu, 15 Aug 2019 13:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tyUad9qP/S4pXDSFa5vPFGOfmWMs0/OHRQZJRhQtza4=; b=NcBg8z28r2LahF
	m7cWX5rANRmB1a13heWoEoql8fkBl98v3CFmn4a/g+68oCcOpXK9joL6BIzCzFyMd7h4KyoJFn8JQ
	hCFSXZ3fYxtNUYI116/KIiOJednMklVNHms/0oPksjmxR3TnUPNOqNTRE1kXm0PxE3Bl/ZU1/OdpD
	qL4s17tu8uchH440QzW2mFM8cvtkPgOo6Y7EEPpNGFUMmdnUrzOlw6bSR8+v8THW0bo5cdfy2SoRq
	VZkRAhdsvQG2UgFIIB6i+2t7m2/mMJAa4SG1ayDLaCw8fMr+wHqvukjfEwTy2HTBL3A55B+ZotX+Z
	WS3Wpz/AIasOIQnDR3pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDeP-00050Z-LO; Thu, 15 Aug 2019 11:10:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDe4-0004hi-Au
 for linux-mediatek@lists.infradead.org; Thu, 15 Aug 2019 11:10:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id f17so1186210pfn.6
 for <linux-mediatek@lists.infradead.org>; Thu, 15 Aug 2019 04:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pnCulqyNhSM91IKVD9IZn1zR67Z7c5BvAhoQmog/5ec=;
 b=Q/yj0wdq+WilKs254iWd4ctGJJZQhMbIdIQejnyJ2yIZ2I3/VGazT/h5zdi6LD7eY8
 FwgETf3lOfMHLLcqgq8CX6eWsXdSOnzVllHOw4eeaE0NXqiFmk8nmB4m4ILkf0DWUhGl
 JMQh6MEqYX1Y/aId7O5b7KB1SCsX5COS7TIXwL/OLfWSbuLKcOFMiSy2pNH9NkkEkNBr
 vOPWQr2P1jdI57kcED+j4RTWUTiYLR6O+vQhsK1J9F6eA8G9tukV7lXi54eGF07uXuiI
 Xknh1VVTk7+o3JYaC+ItCXjA2eeC6ftIDB3zEkigJNAaCQqM79VsPpgrbJeTAytQ3YC4
 1SFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pnCulqyNhSM91IKVD9IZn1zR67Z7c5BvAhoQmog/5ec=;
 b=s13zoys7SxMBWEm5Qk4YRnr5ii0VP86D4Q5D6yuwGsESZFK+uDBVWcR1JshSBQmb3K
 1QuwXKAsK9L7Q1uv+DNzlNJ7MiA0XjUUZp+cI5wlnuDX3hp1WjmJswxdq0NdbxjF3p5b
 nSllTMRFeCdXu62BqSK08i5oRwDpDnWAanEAxD64Mx7y5ZqPB1jn32ECLIsWQyFFjFbc
 UWMZcBYeV9kFog3QxLQdkboeI/cEpb1OCksqkxsGRGw+Mep3iXeQ6k2BRKKf3b7uByPm
 uIFyfH34GZetkNCAZgYOy7tFbEb92VoGRl9RUiLNUlOBXsXHyySoigh77HsiLHyeXCdm
 +lhw==
X-Gm-Message-State: APjAAAVCmeeX1EVxhmAFQl/PJ0tvjDG3kXm25Ut+rcC+nb55U8ytxHrz
 LAleSWWjQ7MUJOVBf4CeHEr9bA==
X-Google-Smtp-Source: APXvYqxZ8fgFC+B1aOZDDqSuQf6BabOCz/a02ujOJQDOq0sxZQrHZCdzZZ4gWxdnMFReUWQ6Q4YS3Q==
X-Received: by 2002:a65:6458:: with SMTP id s24mr3060394pgv.158.1565867413007; 
 Thu, 15 Aug 2019 04:10:13 -0700 (PDT)
Received: from localhost.localdomain
 ([2404:e801:200e:19c4:6c3f:b548:3a9c:7867])
 by smtp.googlemail.com with ESMTPSA id z13sm1042678pjn.32.2019.08.15.04.10.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 15 Aug 2019 04:10:12 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH V5 0/5] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Date: Thu, 15 Aug 2019 12:09:38 +0100
Message-Id: <20190815110944.3579-1-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_041016_385255_212E72AF 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Convert the AMD iommu driver to the dma-iommu api. Remove the iova
handling and reserve region code from the AMD iommu driver.

Change-log:
V5:
-Rebase on top of linux-next
V4:
-Rebase on top of linux-next
-Split the removing of the unnecessary locking in the amd iommu driver into a seperate patch
-refactor the "iommu/dma-iommu: Handle deferred devices" patch and address comments
v3:
-rename dma_limit to dma_mask
-exit handle_deferred_device early if (!is_kdump_kernel())
-remove pointless calls to handle_deferred_device
v2:
-Rebase on top of this series:
 http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-iommu-ops.3
-Add a gfp_t parameter to the iommu_ops::map function.
-Made use of the reserve region code inside the dma-iommu api

Tom Murphy (5):
  iommu/amd: Remove unnecessary locking from AMD iommu driver
  iommu: Add gfp parameter to iommu_ops::map
  iommu/dma-iommu: Handle deferred devices
  iommu/dma-iommu: Use the dev->coherent_dma_mask
  iommu/amd: Convert AMD iommu driver to the dma-iommu api

 drivers/iommu/Kconfig           |   1 +
 drivers/iommu/amd_iommu.c       | 690 ++++----------------------------
 drivers/iommu/amd_iommu_types.h |   1 -
 drivers/iommu/arm-smmu-v3.c     |   2 +-
 drivers/iommu/arm-smmu.c        |   2 +-
 drivers/iommu/dma-iommu.c       |  43 +-
 drivers/iommu/exynos-iommu.c    |   2 +-
 drivers/iommu/intel-iommu.c     |   2 +-
 drivers/iommu/iommu.c           |  43 +-
 drivers/iommu/ipmmu-vmsa.c      |   2 +-
 drivers/iommu/msm_iommu.c       |   2 +-
 drivers/iommu/mtk_iommu.c       |   2 +-
 drivers/iommu/mtk_iommu_v1.c    |   2 +-
 drivers/iommu/omap-iommu.c      |   2 +-
 drivers/iommu/qcom_iommu.c      |   2 +-
 drivers/iommu/rockchip-iommu.c  |   2 +-
 drivers/iommu/s390-iommu.c      |   2 +-
 drivers/iommu/tegra-gart.c      |   2 +-
 drivers/iommu/tegra-smmu.c      |   2 +-
 drivers/iommu/virtio-iommu.c    |   2 +-
 include/linux/iommu.h           |  21 +-
 21 files changed, 178 insertions(+), 651 deletions(-)

-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
