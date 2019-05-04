Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161DB13A10
	for <lists+linux-mediatek@lfdr.de>; Sat,  4 May 2019 15:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U5NaG7rZ6SVjoTPIXzGM+nJAKtxnB3FXAeN2NzNzzAM=; b=pO1
	5fPyOW7IFzWWP48UQLM3MnQLLv8f+QHGlWYojoG4dK/KlpWbnfEnIm5ni1bO37geAtyWV75O0yq74
	gVUZQCqWLRvZqb5haTqfrvn9FqT9ac29GBBQhCV5oP6UoncqxCJbsmw7T93L5Q9i5Ovx4BBrIk1bn
	dFX2iSfAqpPfyo8me8J3nW2cTa/OSfDoqdvvCcsPjhJDHVA9YR3apr2hhx6sStgMiWw4eRPzG6cvM
	iT/ineYbnnU/luubL7TJXoMpQ/0+c4M7H60SFSGx6aXPLZYDwkRMicm4n06ibo+wZTYDWbbhUmN01
	y0KxgBjoH+tuF/rk9wgspP8rI/E24rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMueL-0005KO-Oo; Sat, 04 May 2019 13:24:21 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMueH-0005J3-Ci
 for linux-mediatek@lists.infradead.org; Sat, 04 May 2019 13:24:19 +0000
Received: by mail-ed1-x543.google.com with SMTP id l25so9447056eda.9
 for <linux-mediatek@lists.infradead.org>; Sat, 04 May 2019 06:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id;
 bh=iyAAdc/hWRW2hoexYmZRWuZhkprGVEqqGQbkYpxS37k=;
 b=G3KCFm0fbzzI5F1zvOaRO7d1l4ziZIc3CASA+uBY+RtDmidxSUQwWdeXFWtJOGLvYw
 a8yXmR1xI+Y2k53XMjmr8di4aBIt0In+/ytHYBL5TqUrHglv98FG0Eh0Vd6bmRsYYwYU
 mgxtUdE4nyACk972b901w9YsVjxBsYQseAlIOI3Cy43lAcovNGZEFC8Ba71/Oj//FiL5
 awp0y5M0274CBiGPuUoOAsJisrUXDjTUNJ9Xc3jnQTtRfUxSI/JI+U/AQGIARS0k91zP
 0kA1mk/UoQLSxxaLwLNPvd2A9TNRXxzX7bCEEg5Nrb8THmWNUI1ZqCSYcwSs94pbbFFl
 Zptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iyAAdc/hWRW2hoexYmZRWuZhkprGVEqqGQbkYpxS37k=;
 b=DKyjaORyVxAY80GXlFVryWRCDosO6mjDsmr4r2b2RXoynBlhPQclDXdYlB2rOTnFc5
 UsSgLmPhPmqkJrxTHkxFLPrSOoXQdBI0OsVfbj9e7kkFpBfX9AkigBwsdTa1vjLRI8Sx
 1QSgR4aStI7R0qCJZZWoGkXeWTuwu8HedhJDMDq1HfF5z9lgXeuCOxc+0JVcV8G6CgjD
 e6+KbMOn5V9ECqQtGA542Zs4/mg7DidstFakLip1ck5LtJU6p1lWYc8Z0K5XcdMOB9Hw
 r9Ehqj7pEBoAFaj8Z3d7ctIzvY/tiqxMcfgiyQIkdLcXdXtHj41eRR4AJy9KbD6TM+At
 FAnA==
X-Gm-Message-State: APjAAAU8Ox0nbQaoJs8GuiuNcWZCMunMbbdgwhZgnlXuZH9lrB6t4NJY
 BEVkkXxCDBliAw94krgrnOwXxw==
X-Google-Smtp-Source: APXvYqz4LGJhruC7j3NhOPSVnefUenYnUMxbvpiMSoAHKZ2baaSBXg9l+vRLGrvk4q5MJKcE05cUbQ==
X-Received: by 2002:a50:b68b:: with SMTP id d11mr13947835ede.42.1556976254830; 
 Sat, 04 May 2019 06:24:14 -0700 (PDT)
Received: from localhost.localdomain ([79.97.203.116])
 by smtp.gmail.com with ESMTPSA id s53sm1391106edb.20.2019.05.04.06.24.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 06:24:14 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [RFC 0/7] Convert the Intel iommu driver to the dma-ops api
Date: Sat,  4 May 2019 14:23:16 +0100
Message-Id: <20190504132327.27041-1-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_062417_574445_558ECD4D 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tom Murphy <tmurphy@arista.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Convert the intel iommu driver to the dma-ops api so that we can remove a bunch of repeated code.

This patchset depends on the "iommu/vt-d: Delegate DMA domain to generic iommu" and
"iommu/amd: Convert the AMD iommu driver to the dma-iommu api" patch sets which haven't
yet merged so this is just a RFC to get some feedback before I do more testing.

Tom Murphy (7):
  iommu/vt-d: Set the dma_ops per device so we can remove the
    iommu_no_mapping code
  iommu/vt-d: Remove iova handling code from non-dma ops path
  iommu: improve iommu iotlb flushing
  iommu/dma-iommu: Handle freelists in the dma-iommu api path
  iommu/dma-iommu: add wrapper for iommu_dma_free_cpu_cached_iovas
  iommu/vt-d: convert the intel iommu driver to the dma-iommu ops api
  iommu/vt-d: Always set DMA_PTE_READ if the iommu doens't support zero
    length reads

 drivers/iommu/Kconfig           |   1 +
 drivers/iommu/amd_iommu.c       |  14 +-
 drivers/iommu/arm-smmu-v3.c     |   3 +-
 drivers/iommu/arm-smmu.c        |   2 +-
 drivers/iommu/dma-iommu.c       |  48 ++-
 drivers/iommu/exynos-iommu.c    |   3 +-
 drivers/iommu/intel-iommu.c     | 605 +++++---------------------------
 drivers/iommu/iommu.c           |  21 +-
 drivers/iommu/ipmmu-vmsa.c      |   2 +-
 drivers/iommu/msm_iommu.c       |   2 +-
 drivers/iommu/mtk_iommu.c       |   3 +-
 drivers/iommu/mtk_iommu_v1.c    |   3 +-
 drivers/iommu/omap-iommu.c      |   2 +-
 drivers/iommu/qcom_iommu.c      |   2 +-
 drivers/iommu/rockchip-iommu.c  |   2 +-
 drivers/iommu/s390-iommu.c      |   3 +-
 drivers/iommu/tegra-gart.c      |   2 +-
 drivers/iommu/tegra-smmu.c      |   2 +-
 drivers/vfio/vfio_iommu_type1.c |   3 +-
 include/linux/dma-iommu.h       |   3 +
 include/linux/intel-iommu.h     |   1 -
 include/linux/iommu.h           |  24 +-
 22 files changed, 175 insertions(+), 576 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
