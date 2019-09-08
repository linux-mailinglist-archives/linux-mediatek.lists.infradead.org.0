Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 562B0ACFE6
	for <lists+linux-mediatek@lfdr.de>; Sun,  8 Sep 2019 18:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z6JU/4H4NxTqPFkclj3nKImNAO0q2IkWXfcDrOn26eQ=; b=XLaW5RJm7I3JyB
	7LATy1UnMEsH1sX7ZszLyS75wqLQnra9uE05theMRvkLuiriSmTBCRFbyluNS8SjJ9/3XFxwBmIa+
	QqUVEDECQfdf2Cq/R5L7GqCB2z9VFv+BWIDSI58tPE7NY5bTMwB1UV88pp4BYN9jQexJVLvG3z8ab
	5zsBKhpAoDD3QTr8vyuCstehKAnXwOD7UDIs+JjBE0AEMUnTOTrLnAxRnKA9kY96eLPZ1vOXkWMEp
	Q4mxeaZX8jpXUuKKVn9nYOrtDmpNryIApYgF4rSqvJWMflbU1d+wEY9qw205eH6tskxSutsBSn6cC
	Hnq+pP+wqoJdczXHmD0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i70Uu-0006H6-1p; Sun, 08 Sep 2019 16:57:08 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i70Up-0006Bw-4o
 for linux-mediatek@lists.infradead.org; Sun, 08 Sep 2019 16:57:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id d10so6374011pgo.5
 for <linux-mediatek@lists.infradead.org>; Sun, 08 Sep 2019 09:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E2f3KSrZxRio8/FeHv28ONTThNhL2TjtH0LaTd/eJz4=;
 b=YkxKYH/ERWEtBHeMoD9KlshTjhFsDszVa0tiICeohlWVLEzIcG2mdKPWfiiXIAB9Ep
 h6QalfbgiFdxT1gwzIyDJP5nWISKWpTHIpT1fN2L7ULPQG419Bbi7XY3FDT2eqv7Pdio
 H1K5BfueRIQBGq3EqACgol7GvzJZ1eAgnKKZmazjR0LQiP65cCb17u0sJuotvVHS33a6
 qj4J0lq3fFjn9VBtqa6a2jkRAsYTa2rETqDhPFBFFdRonhlNDlwxzNcmQUhBH77kLi7U
 AS1qIGirCQTlRgJu1+io8rSZUnDci9vM9xSPVt3khu+byAO8nhRLsYoEOS2YUMuEme9n
 8jPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E2f3KSrZxRio8/FeHv28ONTThNhL2TjtH0LaTd/eJz4=;
 b=hmb5aq0wfGJEZmefoxnjDvsPNA0aVRsjdkipi1yZMbv4PR0XMbk6ad2Aro50YgwJmv
 2KeoUNIkjE594prKuuy5jnxFFYnmNNnM0J+J2CSb66e1DprBpY6NwK5cJEfHpCfhmnC7
 yxU1/NMXjSw0RS4ZB1xXd2V0gcsUcs8liJ+cq2s62ljhSVJTwhZNwShtU0J5se1tOLIE
 5eWfQBLzrMRXQQzrCciPbuCfBBIfGX8eL9hg1lBJeZTqlkcWz0v9qYL3tufM3HNluUbh
 f3CVRzB7kfuw4KoRIs2sgKJP16B9lJgegzrrnFOJnGjVMMLR/gh2FapKvgHhZY1GPP5d
 ATMg==
X-Gm-Message-State: APjAAAU/ysnmkHfd6bun39/vUM0pAl64X3ztys1FtD6au7VFKnQPNbvm
 v/GSUh2fE7rX1hDgHOdcDrmuOQ==
X-Google-Smtp-Source: APXvYqycW5UHspFXzTlIh/iOGVx+SWpR9vq4XdyDpuh90LK48tRDCdIIhjamCNmUiV+Y56F7gJ75Lw==
X-Received: by 2002:a63:7d05:: with SMTP id y5mr17861065pgc.425.1567961816386; 
 Sun, 08 Sep 2019 09:56:56 -0700 (PDT)
Received: from localhost.localdomain ([24.244.23.109])
 by smtp.googlemail.com with ESMTPSA id
 f188sm13834631pfa.170.2019.09.08.09.56.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 09:56:55 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v6 0/5] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Date: Sun,  8 Sep 2019 09:56:36 -0700
Message-Id: <20190908165642.22253-1-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_095703_186054_3B9D5C96 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
V6:
-add more details to the description of patch 001-iommu-amd-Remove-unnecessary-locking-from-AMD-iommu-.patch
-rename handle_deferred_device to iommu_dma_deferred_attach
-fix double tabs in 0003-iommu-dma-iommu-Handle-deferred-devices.patch
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
