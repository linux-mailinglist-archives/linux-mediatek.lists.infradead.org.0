Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C47196309
	for <lists+linux-mediatek@lfdr.de>; Sat, 28 Mar 2020 03:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eeW02+JeINSZ3uZQZ9YcgJGInQFCkcDIWA19kK+jIAs=; b=nbG4W4O9KUwtQ8DdpgIvaGED1
	25Kb78Qxgxyq+PMYk+zrvFoGXqWKEm8c2Se1yq5J++qwVNJ50j+UTfYLfAoAnTT2LaQtbCOSJg9ps
	k9Lf3ICOfPlugcHorMt2aGsEHDGMlXUu/cSryidzShMeE4l2MeXa6kHdphKEhMNSgutGxaEPZT5f8
	vPsn7sYQwKT+/FxjRnm7RxIvzjBCi23L02sHT/if0emskxleRS5/s0ptgYAEs8ddUALtNMhOvTPV3
	r82QbANXbAGDZRU08egYnN8Njw61saN5mk7sL7ijcMwtyGVxYu9wkplNQUU8qaIKh56mKmzAH2Xbu
	XE0tMn4Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI0zs-00042Q-6s; Sat, 28 Mar 2020 02:14:52 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI0ze-0003tq-T7
 for linux-mediatek@lists.infradead.org; Sat, 28 Mar 2020 02:14:41 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585361680; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=pjqoOw4JJUHMqq1BpJRNs2QP7YFv72GeeTwA5RNFhyQ=;
 b=LtQbJpuwnfcmHNM7u38pkFzh46mBTGhgsoFvDm6E6i5CxurcQfDTsyUqgbPd79xiZks5gubB
 TPHvOrFrBaZOTG3M8l8wXegZPzC76Jc201weNyNKgaiRInktDo92IaMpKtWO/F84JiV674ii
 kegmw5KdNGlRJD0wne7EF4OMAbw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7eb306.7f053c0531b8-smtp-out-n03;
 Sat, 28 Mar 2020 02:14:30 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BDD3CC433BA; Sat, 28 Mar 2020 02:14:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7CF97C433F2;
 Sat, 28 Mar 2020 02:14:29 +0000 (UTC)
MIME-Version: 1.0
Date: Sat, 28 Mar 2020 10:14:29 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/1] scsi: ufs: set device as active power mode after
 resetting device
In-Reply-To: <20200327095835.10293-1-stanley.chu@mediatek.com>
References: <20200327095835.10293-1-stanley.chu@mediatek.com>
Message-ID: <d5096a58cce94669fef459834134ffab@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_191440_712404_A667E4A0 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2020-03-27 17:58, Stanley Chu wrote:
> Currently ufshcd driver assumes that bInitPowerMode parameter
> is not changed by any vendors thus device power mode can be set as
> "Active" during initialization.
> 
> According to UFS JEDEC specification, device power mode shall be
> "Active" after HW Reset is triggered if the bInitPowerMode parameter
> in Device Descriptor is default value.
> 
> By above description, we can set device power mode as "Active" after
> device reset is triggered by vendor's callback. With this change,
> the link startup performance can be improved in some cases
> by not setting link_startup_again as true in ufshcd_link_startup().
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufshcd.c | 13 -------------
>  drivers/scsi/ufs/ufshcd.h | 14 ++++++++++++++
>  2 files changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 227660a1a446..f0a35b289b7c 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -171,19 +171,6 @@ enum {
>  #define ufshcd_clear_eh_in_progress(h) \
>  	((h)->eh_flags &= ~UFSHCD_EH_IN_PROGRESS)
> 
> -#define ufshcd_set_ufs_dev_active(h) \
> -	((h)->curr_dev_pwr_mode = UFS_ACTIVE_PWR_MODE)
> -#define ufshcd_set_ufs_dev_sleep(h) \
> -	((h)->curr_dev_pwr_mode = UFS_SLEEP_PWR_MODE)
> -#define ufshcd_set_ufs_dev_poweroff(h) \
> -	((h)->curr_dev_pwr_mode = UFS_POWERDOWN_PWR_MODE)
> -#define ufshcd_is_ufs_dev_active(h) \
> -	((h)->curr_dev_pwr_mode == UFS_ACTIVE_PWR_MODE)
> -#define ufshcd_is_ufs_dev_sleep(h) \
> -	((h)->curr_dev_pwr_mode == UFS_SLEEP_PWR_MODE)
> -#define ufshcd_is_ufs_dev_poweroff(h) \
> -	((h)->curr_dev_pwr_mode == UFS_POWERDOWN_PWR_MODE)
> -
>  struct ufs_pm_lvl_states ufs_pm_lvl_states[] = {
>  	{UFS_ACTIVE_PWR_MODE, UIC_LINK_ACTIVE_STATE},
>  	{UFS_ACTIVE_PWR_MODE, UIC_LINK_HIBERN8_STATE},
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index b7bd81795c24..7a9d1d170719 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -129,6 +129,19 @@ enum uic_link_state {
>  #define ufshcd_set_link_hibern8(hba) ((hba)->uic_link_state = \
>  				    UIC_LINK_HIBERN8_STATE)
> 
> +#define ufshcd_set_ufs_dev_active(h) \
> +	((h)->curr_dev_pwr_mode = UFS_ACTIVE_PWR_MODE)
> +#define ufshcd_set_ufs_dev_sleep(h) \
> +	((h)->curr_dev_pwr_mode = UFS_SLEEP_PWR_MODE)
> +#define ufshcd_set_ufs_dev_poweroff(h) \
> +	((h)->curr_dev_pwr_mode = UFS_POWERDOWN_PWR_MODE)
> +#define ufshcd_is_ufs_dev_active(h) \
> +	((h)->curr_dev_pwr_mode == UFS_ACTIVE_PWR_MODE)
> +#define ufshcd_is_ufs_dev_sleep(h) \
> +	((h)->curr_dev_pwr_mode == UFS_SLEEP_PWR_MODE)
> +#define ufshcd_is_ufs_dev_poweroff(h) \
> +	((h)->curr_dev_pwr_mode == UFS_POWERDOWN_PWR_MODE)
> +
>  /*
>   * UFS Power management levels.
>   * Each level is in increasing order of power savings.
> @@ -1091,6 +1104,7 @@ static inline void
> ufshcd_vops_device_reset(struct ufs_hba *hba)
>  {
>  	if (hba->vops && hba->vops->device_reset) {
>  		hba->vops->device_reset(hba);
> +		ufshcd_set_ufs_dev_active(hba);
>  		ufshcd_update_reg_hist(&hba->ufs_stats.dev_reset, 0);
>  	}
>  }

Reviewed-by: Can Guo <cang@codeaurora.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
