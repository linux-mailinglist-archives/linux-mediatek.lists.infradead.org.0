Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F76F1AC01E
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Apr 2020 13:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZgtiZc+rbeSO0XJW1locErXUMEfnE+tZ9uxWHvBODI=; b=ny3vAVgTAVmswD
	n3J69NMyy6Ly09TeL8n76Nf73vAHx6krfkSB9KMFE/bT/zbqI2aJSfCsZidVBbPVi0YELAvmV5CF7
	B37bgP0ENAnnm/pwUrF6RUg4Eu2venSKaq3AF+DLzUkSbX/TZgg6z3iRELnJs6+INB7gGu1iI80Ej
	ZDobQ7DCX3zr0X6KlVXMJ5DjLcOBH73cGVn8R41ffNT+lrohU34jrVz4RBob1TpvSmwSyuiozJeI+
	pgZBJRcGetRa/mD2plKZIifWupR+fNeozV4YQ05T3GdHknqpZvUcMdYEo8pUwcO15iZMkRKIkZk8A
	VkpbDPXRX2ns1TXXXnBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP30p-0001Vl-GT; Thu, 16 Apr 2020 11:48:55 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP30l-0001UI-HO
 for linux-mediatek@lists.infradead.org; Thu, 16 Apr 2020 11:48:53 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200416114849euoutp02c55b37ed050e8e6d5d484c43463649ba~GSmgAu3_33075130751euoutp02N
 for <linux-mediatek@lists.infradead.org>; Thu, 16 Apr 2020 11:48:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200416114849euoutp02c55b37ed050e8e6d5d484c43463649ba~GSmgAu3_33075130751euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587037729;
 bh=LtJiapRZh1Ea64p7LdbSiBgjXuP3s8Uvyni6NX+lMbI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=SfpxavV1P9cZ5c5nOEaxfLj3RP0aNc+JtZ78ozQRM6iQ8N5LhcGpunGHkJbVpbOcc
 cFP0TuQ0jDXD8WXLRECz/pQT8/mqxu4vrqfMMQebCW6zADsKklQwPTFV21OF0agVdu
 VlGyEqiRvBW+JFL5Zv2Nk0X68sk/DgU6ksOXm9QQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200416114848eucas1p22ab13090a3fe7b4992627149d2e5ac90~GSmfuxvu60903309033eucas1p28;
 Thu, 16 Apr 2020 11:48:48 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 8B.5A.60679.026489E5; Thu, 16
 Apr 2020 12:48:48 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200416114848eucas1p26436783dd625463955ec0d8fc9bb6e09~GSmfQuTS71105311053eucas1p2p;
 Thu, 16 Apr 2020 11:48:48 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200416114848eusmtrp2def4490817dd88b069636a889ccc2aa7~GSmfPshja1089610896eusmtrp2L;
 Thu, 16 Apr 2020 11:48:48 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-0c-5e9846205236
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 41.C0.07950.026489E5; Thu, 16
 Apr 2020 12:48:48 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200416114847eusmtip140b27105c59b66ea3210be2b8bb787db~GSmd8phLs0505005050eusmtip1R;
 Thu, 16 Apr 2020 11:48:46 +0000 (GMT)
Subject: Re: [PATCH v2 00/33] iommu: Move iommu_group setup to IOMMU core code
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin
 Murphy <robin.murphy@arm.com>, Kukjin Kim <kgene@kernel.org>, Krzysztof
 Kozlowski <krzk@kernel.org>, David Woodhouse <dwmw2@infradead.org>, Lu Baolu
 <baolu.lu@linux.intel.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, Rob
 Clark <robdclark@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Gerald
 Schaefer <gerald.schaefer@de.ibm.com>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <551c48b8-3268-6034-2dc6-cec3dbbec250@samsung.com>
Date: Thu, 16 Apr 2020 13:48:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+XaOZ2fW5HMVvlp0GRQVZhcTPjKyoOIQVHYhKrBa7WiSW7Kj
 lhVkbV1cV5NwTVtm0bSbpmkqlmiY1NKtVhahZLnuzsTZxS4ut5Plf8/7fL+H93nhYynFJSaM
 TdSm8DqtKknJBNIV9/rs08YvNm2YYdVHkeaOnzQpyypniK22iyZZRdkUqep8zxDv608BJL82
 mmRccQQQg7mAJpm5JVJyouMTRez2AZVV2yQlzuo8hjj1jxDpafdS5OR5PUVM9jsSktlrZsh+
 QyR5d/47Req6XQGkr9pCE2uThSGG1qj5oZyrziLhrlquIq7udT3DVZnbpFxZ4VSu9HImw7W2
 1DCc5f4KruziXi77uRVxx/RdDHerxUJxntKxsfL1gXPVfFJiGq+bPm9T4NbvPZV0cueEnQXv
 8iQZyBNmRDIW8GwoNJymjSiQVeBCBDUP8xhx6EVwz2hifJQCexAUH9s9mHjpLJGIkBWB3tT3
 F/qM4LZH4dMjcCw4zvZTPmgk/kZDfkO5f6BwpQS+Nr1BPorBM8HoNvrTcjwPbG3H/ZrGE8HV
 kTEQYNlROA5yWlaLSDDcP+OifbYMR8GzU+t8NoXHwS13HiXqEHjhOucvB9jFgje3SiK2XggV
 XYeQqEfAx8abUlGPAW/VYECP4FXzNak4HEXg3G/6m4iG1uYfjG8zhadAcfV00V4Amcfdfhtw
 EDx3B4slguBURQ4l2nI4fFAh0pPA3Hj939o6x2PqJFKah1xmHnKOecg55v978xF9GYXwqYIm
 gRdmafkdEYJKI6RqEyK2bNeUooHfa+tv7K1E1b821yPMIuVw+aYY0wZFgCpNSNfUI2Ap5Uh5
 UNSAJVer0nfxuu0bdalJvFCPRrO0MkQeWfAhToETVCn8Np5P5nWDrxJWFpaBlqEDb7qLDPPV
 0omlZ7Jr5qwrXrL8rSdtSvcq57C1i8rVX9vu2qJXdkesyYlL7my3hYZXLt1bNM7xpD94TU/z
 B2tFfGs6p1k9rTDu6Z5IY/yNlAvxk5MTr8Rc/1hQtm+3Vx1+4rfkiPSbUMJs+xK+0Y3Xygwy
 +4MLsQ3h2gZ3jGOHR0kLW1Uzp1I6QfUHpZO/gLkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02SXUhTYRzGeXfOjmfS4ji/XiX8mHhR0HSb09c+LLuQI0gYQyFLa+lJK7fZ
 ziYZUSu9mKPyq0ynrBJLLS/MVdMpyiRKMTORLEOx3MrCHKG7KIxscwa7+/E8v+eFF/4kJujn
 RpJnVFpGo1KUColAfPzvq/ndMRlNBYnrE2HojWMdR5a6ZwQaH3bhqK6rAUP9P74RaGNxmYvu
 De9F+sdvuajK1Iaj6paeAFTjWMbQ5KSH6oYnAtC0rZVA05VTAK1+2sBQ7f1KDDVNDnFQtdtE
 oGtVUrR0/xeG7D+dXPTbZsZRx4SZQFVzsoMRtNNu5tDd5m5A2xdHCLrfNB9AWzp30b2Pqgl6
 bmaQoM1jR2hL+xW64UMHoG9UugjaOmPG6LXeqGx+nmifRq3TMjElala7X3hMjCQicSoSSZJS
 RWJpSv4eiUyYkLaviCk9U85oEtJOikp+rfbhZT9iL7QttXL0YC3SCHgkpJLgwnQPxwgCSQH1
 AMCvyxaur9gBxxr1WxwM/8wYCZ+0AmBnswPzFsHUYWh/+AR4ixBqHYftHwY2LYzq48DVhheb
 loAyAPj3e6yXCUoMjSvep3gkn0qD4/M3Nxmn4qHToff4JBlK5cOqqZ0+JQiONTtxb8yjZPB9
 /VFvjFHJ0Gz5jPk4GlpXWrc4HH503uXUAoHJb23ym5j8Jia/yT2APwIhjI5VFitZiYhVKFmd
 qlhUqFb2As/ZPH/5+2kfMLrkI4AigXAb/+SBpgIBV1HOVihHACQxYQh/u8wT8YsUFRcZjfqE
 RlfKsCNA5vlaHRYZWqj2HKFKe0IsE6egVHGKNEWajIThfANlPy6gihVa5hzDlDGa/zsOyYvU
 g5brVrTDVfGV/qI7dDuvKH8+fiEqYiDXFpr9OrvJmvVe3uEuD7rTUnJpNi19tswuz0nN2bC8
 G1L2R0d/mijkz6VLqbOLo39yTxska6EPVjtiDVfjglhbTafz1uVTe89nxv18OEoMLqMG13pW
 zeucRNSu6eJdzOh0yzPr3X1hjUKcLVGId2EaVvEPnvogHEwDAAA=
X-CMS-MailID: 20200416114848eucas1p26436783dd625463955ec0d8fc9bb6e09
X-Msg-Generator: CA
X-RootMTR: 20200414131600eucas1p16f1ff6aedb780eb795a770dc08e5dec5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200414131600eucas1p16f1ff6aedb780eb795a770dc08e5dec5
References: <CGME20200414131600eucas1p16f1ff6aedb780eb795a770dc08e5dec5@eucas1p1.samsung.com>
 <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_044851_884944_9CE01F94 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Joerg,

On 14.04.2020 15:15, Joerg Roedel wrote:
> here is the second version of this patch-set. The first version with
> some more introductory text can be found here:
>
> 	https://lore.kernel.org/lkml/20200407183742.4344-1-joro@8bytes.org/
>
> Changes v1->v2:
>
> 	* Rebased to v5.7-rc1
>
> 	* Re-wrote the arm-smmu changes as suggested by Robin Murphy
>
> 	* Re-worked the Exynos patches to hopefully not break the
> 	  driver anymore

Thanks for this rework. This version is much better. Works fine on 
various Exynos-based boards (ARM and ARM64).

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>

Acked-by: Marek Szyprowski <m.szyprowski@samsung.com> (for Exynos and 
core changes)

> 	* Fixed a missing mutex_unlock() reported by Marek Szyprowski,
> 	  thanks for that.
>
> There is also a git-branch available with these patches applied:
>
> 	https://git.kernel.org/pub/scm/linux/kernel/git/joro/linux.git/log/?h=iommu-probe-device-v2
>
> Please review.
>
> Thanks,
>
> 	Joerg
>
> Joerg Roedel (32):
>    iommu: Move default domain allocation to separate function
>    iommu/amd: Implement iommu_ops->def_domain_type call-back
>    iommu/vt-d: Wire up iommu_ops->def_domain_type
>    iommu/amd: Remove dma_mask check from check_device()
>    iommu/amd: Return -ENODEV in add_device when device is not handled by
>      IOMMU
>    iommu: Add probe_device() and remove_device() call-backs
>    iommu: Move default domain allocation to iommu_probe_device()
>    iommu: Keep a list of allocated groups in __iommu_probe_device()
>    iommu: Move new probe_device path to separate function
>    iommu: Split off default domain allocation from group assignment
>    iommu: Move iommu_group_create_direct_mappings() out of
>      iommu_group_add_device()
>    iommu: Export bus_iommu_probe() and make is safe for re-probing
>    iommu/amd: Remove dev_data->passthrough
>    iommu/amd: Convert to probe/release_device() call-backs
>    iommu/vt-d: Convert to probe/release_device() call-backs
>    iommu/arm-smmu: Convert to probe/release_device() call-backs
>    iommu/pamu: Convert to probe/release_device() call-backs
>    iommu/s390: Convert to probe/release_device() call-backs
>    iommu/virtio: Convert to probe/release_device() call-backs
>    iommu/msm: Convert to probe/release_device() call-backs
>    iommu/mediatek: Convert to probe/release_device() call-backs
>    iommu/mediatek-v1 Convert to probe/release_device() call-backs
>    iommu/qcom: Convert to probe/release_device() call-backs
>    iommu/rockchip: Convert to probe/release_device() call-backs
>    iommu/tegra: Convert to probe/release_device() call-backs
>    iommu/renesas: Convert to probe/release_device() call-backs
>    iommu/omap: Remove orphan_dev tracking
>    iommu/omap: Convert to probe/release_device() call-backs
>    iommu/exynos: Use first SYSMMU in controllers list for IOMMU core
>    iommu/exynos: Convert to probe/release_device() call-backs
>    iommu: Remove add_device()/remove_device() code-paths
>    iommu: Unexport iommu_group_get_for_dev()
>
> Sai Praneeth Prakhya (1):
>    iommu: Add def_domain_type() callback in iommu_ops
>
>   drivers/iommu/amd_iommu.c       |  97 ++++----
>   drivers/iommu/amd_iommu_types.h |   1 -
>   drivers/iommu/arm-smmu-v3.c     |  38 +--
>   drivers/iommu/arm-smmu.c        |  39 ++--
>   drivers/iommu/exynos-iommu.c    |  24 +-
>   drivers/iommu/fsl_pamu_domain.c |  22 +-
>   drivers/iommu/intel-iommu.c     |  68 +-----
>   drivers/iommu/iommu.c           | 393 +++++++++++++++++++++++++-------
>   drivers/iommu/ipmmu-vmsa.c      |  60 ++---
>   drivers/iommu/msm_iommu.c       |  34 +--
>   drivers/iommu/mtk_iommu.c       |  24 +-
>   drivers/iommu/mtk_iommu_v1.c    |  50 ++--
>   drivers/iommu/omap-iommu.c      |  99 ++------
>   drivers/iommu/qcom_iommu.c      |  24 +-
>   drivers/iommu/rockchip-iommu.c  |  26 +--
>   drivers/iommu/s390-iommu.c      |  22 +-
>   drivers/iommu/tegra-gart.c      |  24 +-
>   drivers/iommu/tegra-smmu.c      |  31 +--
>   drivers/iommu/virtio-iommu.c    |  41 +---
>   include/linux/iommu.h           |  21 +-
>   20 files changed, 533 insertions(+), 605 deletions(-)
>
Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
