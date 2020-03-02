Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6D41761CB
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Mar 2020 19:03:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kurx0zBcWU4tgUcuo3unrc3CV4chbuBRggU//4h3gnY=; b=UCZ0WW60tC2HiS
	WeWPPuX5Bv6uPLRx5QTH/El8+kk+bBTXxV+1m1zwTrbDrK143BnQbWNWh+rtmRCsL1DEaMWIQ8lyQ
	0YqU9ybefEw19x6Dwcxnfh8W22qrb7wUa50gD2/uBbpx+5K9wb/79j50HPyAp5x1SDqBr+Dy6pgr+
	GRxI7t/RKMca+0kNbMygfu5ovbP0l77/1FFfUygaY9qXvRgrdshmxDL5P8nX138vXXcueutDPEjfZ
	5odACqiVTFsEedqfdPrHcjfLdK2EL2MEcj9uCwpc6L6PN/QNmteLTUAN3iPW9JXy6HnhTalqLMGz9
	uhml2XRbeNnbhN54SEvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pOs-0000B4-Ff; Mon, 02 Mar 2020 18:02:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pOk-0008V7-Bt; Mon, 02 Mar 2020 18:02:36 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E05EF21D56;
 Mon,  2 Mar 2020 18:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583172153;
 bh=FtRqmbetKtzAhjYcG5f4Oa0sNs/qid5+5M0b5btzGXw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aFeNoIFDszMPgvo966bttNOOPowGZjl/VVfDXEcrJi0so2an1200uOYyaWsv48ldC
 dzPZ0wic/6rn1UtkodXalYFqQcXtOx/eM//smEXWhvfrZCvfBZqmJf7T17G3ncpaFi
 2KQ09Y5RU+F9ezU8baBANM6Rgk203ig1r50yyNkc=
Date: Mon, 2 Mar 2020 10:02:31 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [RFC PATCH v1] scsi: ufs-mediatek: add inline encryption support
Message-ID: <20200302180231.GB98133@gmail.com>
References: <20200302091138.10341-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302091138.10341-1-stanley.chu@mediatek.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100234_450432_6AEC9D82 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 4.2 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 light.hsieh@mediatek.com, satyat@google.com, avri.altman@wdc.com,
 linux-fscrypt@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 05:11:38PM +0800, Stanley Chu wrote:
> Add inline encryption support to ufs-mediatek.
> 
> The standards-compliant parts, such as querying the crypto capabilities
> and enabling crypto for individual UFS requests, are already handled by
> ufshcd-crypto.c, which itself is wired into the blk-crypto framework.
> 
> However MediaTek UFS host requires a vendor-specific hce_enable operation
> to allow crypto-related registers being accessed normally in kernel.
> After this step, MediaTek UFS host can work as standard-compliant host
> for inline-encryption related functions.
> 
> This patch is rebased to the latest wip-inline-encryption branch in
> Eric Biggers's git:
> https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git/

Please don't use a random work-in-progress branch from my git repository (which
hasn't been updated to the v7 patchset yet and will be rebased); use instead:

	Repo: https://git.kernel.org/pub/scm/fs/fscrypt/fscrypt.git
	Tag: inline-encryption-v7

Also, this patch doesn't apply to either branch anyway:

Applying: scsi: ufs-mediatek: add inline encryption support
Using index info to reconstruct a base tree...
error: patch failed: drivers/scsi/ufs/ufs-mediatek.c:15
error: drivers/scsi/ufs/ufs-mediatek.c: patch does not apply
error: patch failed: drivers/scsi/ufs/ufs-mediatek.h:58
error: drivers/scsi/ufs/ufs-mediatek.h: patch does not apply
error: Did you hand edit your patch?

> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index 53eae5fe2ade..12d01fd3d5e1 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -15,6 +15,7 @@
>  #include <linux/soc/mediatek/mtk_sip_svc.h>
>  
>  #include "ufshcd.h"
> +#include "ufshcd-crypto.h"
>  #include "ufshcd-pltfrm.h"
>  #include "ufs_quirks.h"
>  #include "unipro.h"
> @@ -24,6 +25,9 @@
>  	arm_smccc_smc(MTK_SIP_UFS_CONTROL, \
>  		      cmd, val, 0, 0, 0, 0, 0, &(res))
>  
> +#define ufs_mtk_crypto_ctrl(res, enable) \
> +	ufs_mtk_smc(UFS_MTK_SIP_CRYPTO_CTRL, enable, res)
> +
>  #define ufs_mtk_ref_clk_notify(on, res) \
>  	ufs_mtk_smc(UFS_MTK_SIP_REF_CLK_NOTIFICATION, on, res)
>  
> @@ -66,7 +70,27 @@ static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
>  	}
>  }
>  
> -static int ufs_mtk_bind_mphy(struct ufs_hba *hba)
> +static void ufs_mtk_crypto_enable(struct ufs_hba *hba)
> +{
> +	struct arm_smccc_res res;
> +
> +	ufs_mtk_crypto_ctrl(res, 1);
> +	if (res.a0) {
> +		dev_info(hba->dev, "%s: crypto enable failed, err: %lu\n",
> +			 __func__, res.a0);
> +	}
> +}
> +
> +static int ufs_mtk_hce_enable_notify(struct ufs_hba *hba,
> +				     enum ufs_notify_change_status status)
> +{
> +	if (status == PRE_CHANGE && ufshcd_hba_is_crypto_supported(hba))
> +		ufs_mtk_crypto_enable(hba);
> +
> +	return 0;
> +}
> +
> +int ufs_mtk_bind_mphy(struct ufs_hba *hba)
>  {
>  	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
>  	struct device *dev = hba->dev;
> @@ -494,6 +518,7 @@ static struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
>  	.name                = "mediatek.ufshci",
>  	.init                = ufs_mtk_init,
>  	.setup_clocks        = ufs_mtk_setup_clocks,
> +	.hce_enable_notify   = ufs_mtk_hce_enable_notify,
>  	.link_startup_notify = ufs_mtk_link_startup_notify,
>  	.pwr_change_notify   = ufs_mtk_pwr_change_notify,
>  	.apply_dev_quirks    = ufs_mtk_apply_dev_quirks,
> diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
> index fccdd979d6fb..5ebaa59898bf 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.h
> +++ b/drivers/scsi/ufs/ufs-mediatek.h
> @@ -58,6 +58,7 @@
>   */
>  #define MTK_SIP_UFS_CONTROL               MTK_SIP_SMC_CMD(0x276)
>  #define UFS_MTK_SIP_DEVICE_RESET          BIT(1)
> +#define UFS_MTK_SIP_CRYPTO_CTRL           BIT(2)
>  #define UFS_MTK_SIP_REF_CLK_NOTIFICATION  BIT(3)

But if this is all that's needed to get inline crypto working with Mediatek UFS,
that's great news.

Thanks!

- Eric

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
