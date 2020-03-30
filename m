Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 690721981CA
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Mar 2020 19:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vKwYifI1m45wee6s7/8tTnCy2nMyjC1rCdep+sqSFjg=; b=Fq5H7n6nhgkVRImRMOo8f6snJ
	BolAeW4Q5QqlJSrM+TxAd3JY6D+j3sL5ccOwNV0iX4q4jN5OMk0BdgSytSTS/pbS5yG4bWRBHU++G
	W8fORAeZzF40go1/nqDvLVL5uuzuuX+wm/6swWFtbY9MBQOwTh9OomODpV5bvW5jvRZT5jmzycmV3
	szXwN1GAlKMXCycN4zKfVyRGUXQ11+oroxzkK5wTx5/NyoivK0/oJQiVKa1BluF1NZ0ZZU+7g04c2
	/mUg/Yve+cG2jMm2WpXo+SCZu+fl1DDvo0hD//hujayE6/F7Wpq2Z0ddUHNJ4FFjcF3ZLD86aAIVQ
	cjUunHcCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIxmO-00064l-CW; Mon, 30 Mar 2020 17:00:52 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIxmK-000643-Kw
 for linux-mediatek@lists.infradead.org; Mon, 30 Mar 2020 17:00:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585587647; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=1d8KTbgt/iCLQW3VVzDGNmfmBuqcJpPIW3cjwTeucPA=;
 b=se+q/q5ZLbeTGYLY5rY/52UEXdxsA7pLfJoTLUCZLx58/W05RNb4rpWY8aSoIvUH3IUAOa/e
 khPSA2xinhcbRdc+PHObP/IiUhv3sKcI5mYwecMFxPfVCYb/DmHI/aXmaS39DWfea5GKBpQ8
 47XoU+MeM5yf6nRDz/bqLgltZ7I=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8225b3.7f577fd473b0-smtp-out-n02;
 Mon, 30 Mar 2020 17:00:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B2F23C4478C; Mon, 30 Mar 2020 17:00:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.8.111] (cpe-70-95-153-89.san.res.rr.com [70.95.153.89])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 795AAC433D2;
 Mon, 30 Mar 2020 17:00:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 795AAC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v1 1/1] scsi: ufs: set device as active power mode after
 resetting device
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200327095835.10293-1-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <ae5747c1-fd33-2588-b838-d88d21bcb267@codeaurora.org>
Date: Mon, 30 Mar 2020 10:00:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200327095835.10293-1-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_100048_750287_7508C2FA 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On 3/27/2020 2:58 AM, Stanley Chu wrote:
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

Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>

>   drivers/scsi/ufs/ufshcd.c | 13 -------------
>   drivers/scsi/ufs/ufshcd.h | 14 ++++++++++++++
>   2 files changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 227660a1a446..f0a35b289b7c 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -171,19 +171,6 @@ enum {
>   #define ufshcd_clear_eh_in_progress(h) \
>   	((h)->eh_flags &= ~UFSHCD_EH_IN_PROGRESS)
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
>   struct ufs_pm_lvl_states ufs_pm_lvl_states[] = {
>   	{UFS_ACTIVE_PWR_MODE, UIC_LINK_ACTIVE_STATE},
>   	{UFS_ACTIVE_PWR_MODE, UIC_LINK_HIBERN8_STATE},
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index b7bd81795c24..7a9d1d170719 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -129,6 +129,19 @@ enum uic_link_state {
>   #define ufshcd_set_link_hibern8(hba) ((hba)->uic_link_state = \
>   				    UIC_LINK_HIBERN8_STATE)
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
>   /*
>    * UFS Power management levels.
>    * Each level is in increasing order of power savings.
> @@ -1091,6 +1104,7 @@ static inline void ufshcd_vops_device_reset(struct ufs_hba *hba)
>   {
>   	if (hba->vops && hba->vops->device_reset) {
>   		hba->vops->device_reset(hba);
> +		ufshcd_set_ufs_dev_active(hba);
>   		ufshcd_update_reg_hist(&hba->ufs_stats.dev_reset, 0);
>   	}
>   }
> 


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
