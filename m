Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE0E1D1F40
	for <lists+linux-mediatek@lfdr.de>; Wed, 13 May 2020 21:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dCkGvYeH//DcfpxwWwMlMe1+WcUlGbhZQnFC1QcFXV4=; b=rFU2QZeOM7P60POTrVlg75c9w
	g2a6bqqAmX9rTfCzQnxofqwYUiNHeXwFjomDscWtIln/eWBiXrRYqXOzJepPgK9bXfAeggvSmh5RV
	DMhEXaqlI+dMUeVH3/MRk49yVa6HOIf8uYWkZy7rra7QRDeOlkcnNiaFfvJKOpc8Q9CPupsci959V
	EKIKedYO0vEIggpuLHRZ/7ivPMvHFIajOkR/hdR562dMSkh1CmAJb6uXj3sAmVw23G4NvDHBmHlSk
	WHnJh/fskkxFQS+YWKpzXgO7dZ5DofiVD0ut3ZbEyS0mp+07xi1+XXgl7ZUh0Mok5hmhSnCf131Uo
	BuEVdR1Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYx6U-0007l5-8O; Wed, 13 May 2020 19:31:42 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYx6H-0007dF-RL
 for linux-mediatek@lists.infradead.org; Wed, 13 May 2020 19:31:34 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589398293; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=Jp3WpGvzO6LMDEA2O3IfZQY0ziN9PbNzYX5Naj3D+N0=;
 b=HUd2TlOx/hOPovTu7oea1EAB8mMjrAk/lvkBczs4Vwz0IhcU3bBeX2pnN0K0vp/fkHtEQb3E
 /ZGX7Ojx0JWQZLPHRs6ZUQcctARtTv1pxJ1hKTh7+lcpuwpKvfcc2+cd4Fs6OIhajG1145Rg
 xDclt1rWRTJ8/LHtbY7kZttP4Jc=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ebc4b06.7f9c848ea810-smtp-out-n04;
 Wed, 13 May 2020 19:31:18 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B53DCC43636; Wed, 13 May 2020 19:31:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.8.150] (cpe-70-95-149-85.san.res.rr.com [70.95.149.85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7383BC433F2;
 Wed, 13 May 2020 19:31:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7383BC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v1 4/4] scsi: ufs: Fix WriteBooster flush during runtime
 suspend
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200512104750.8711-1-stanley.chu@mediatek.com>
 <20200512104750.8711-5-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <725d057c-2379-710e-287f-ac11a59c08bc@codeaurora.org>
Date: Wed, 13 May 2020 12:31:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512104750.8711-5-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_123133_124918_D94DEEC2 
X-CRM114-Status: GOOD (  27.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 5/12/2020 3:47 AM, Stanley Chu wrote:
> Currently UFS host driver promises VCC supply if UFS device
> needs to do WriteBooster flush during runtime suspend.
> 
> However the UFS specification mentions,
> 
> "While the flushing operation is in progress, the device is
> in Active power mode."
> 
> Therefore UFS host driver needs to promise more: Keep UFS
> device as "Active power mode", otherwise UFS device shall not
> do any flush if device enters Sleep or PowerDown power mode.
> 
> Fix this by not changing device power mode if WriteBooster
> flush is required in ufshcd_suspend().
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>   drivers/scsi/ufs/ufs.h    |  1 -
>   drivers/scsi/ufs/ufshcd.c | 39 +++++++++++++++++++--------------------
>   2 files changed, 19 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufs.h b/drivers/scsi/ufs/ufs.h
> index b3135344ab3f..9e4bc2e97ada 100644
> --- a/drivers/scsi/ufs/ufs.h
> +++ b/drivers/scsi/ufs/ufs.h
> @@ -577,7 +577,6 @@ struct ufs_dev_info {
>   	u32 d_ext_ufs_feature_sup;
>   	u8 b_wb_buffer_type;
>   	u32 d_wb_alloc_units;
> -	bool keep_vcc_on;
>   	u8 b_presrv_uspc_en;
>   };
>   
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 169a3379e468..2d0aff8ac260 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -8101,8 +8101,7 @@ static void ufshcd_vreg_set_lpm(struct ufs_hba *hba)
>   	    !hba->dev_info.is_lu_power_on_wp) {
>   		ufshcd_setup_vreg(hba, false);
>   	} else if (!ufshcd_is_ufs_dev_active(hba)) {
> -		if (!hba->dev_info.keep_vcc_on)
> -			ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
> +		ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
>   		if (!ufshcd_is_link_active(hba)) {
>   			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq);
>   			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq2);
> @@ -8172,6 +8171,7 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>   	enum ufs_pm_level pm_lvl;
>   	enum ufs_dev_pwr_mode req_dev_pwr_mode;
>   	enum uic_link_state req_link_state;
> +	bool keep_curr_dev_pwr_mode = false;
>   
>   	hba->pm_op_in_progress = 1;
>   	if (!ufshcd_is_shutdown_pm(pm_op)) {
> @@ -8226,28 +8226,27 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>   			/* make sure that auto bkops is disabled */
>   			ufshcd_disable_auto_bkops(hba);
>   		}
> +
Unnecessary newline, perhaps?
>   		/*
> -		 * With wb enabled, if the bkops is enabled or if the
> -		 * configured WB type is 70% full, keep vcc ON
> -		 * for the device to flush the wb buffer
> +		 * If device needs to do BKOP or WB buffer flush, keep device
> +		 * power mode as "active power mode" and its VCC supply.
>   		 */
> -		if ((hba->auto_bkops_enabled && ufshcd_is_wb_allowed(hba)) ||
> -		    ufshcd_wb_keep_vcc_on(hba))
> -			hba->dev_info.keep_vcc_on = true;
> -		else
> -			hba->dev_info.keep_vcc_on = false;
> -	} else {
> -		hba->dev_info.keep_vcc_on = false;
> +		keep_curr_dev_pwr_mode = hba->auto_bkops_enabled ||
> +			ufshcd_wb_keep_vcc_on(hba);
Should the device be in UFS_ACTIVE_PWR_MODE to perform auto-bkops?

Also, is it needed to keep the device in UFS_ACTIVE_PWR_MODE , if flush 
on hibern8 is enabled and the link is being put to hibern8 mode during 
runtime-suspend? Perhaps that should also be factored in here?
>   	}
>   
> -	if ((req_dev_pwr_mode != hba->curr_dev_pwr_mode) &&
> -	    ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
> -	    !ufshcd_is_runtime_pm(pm_op))) {
> -		/* ensure that bkops is disabled */
> -		ufshcd_disable_auto_bkops(hba);
> -		ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
> -		if (ret)
> -			goto enable_gating;
> +	if (req_dev_pwr_mode != hba->curr_dev_pwr_mode) {
> +		if ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
> +		    !ufshcd_is_runtime_pm(pm_op)) {
> +			/* ensure that bkops is disabled */
> +			ufshcd_disable_auto_bkops(hba);
> +		}
> +
> +		if (!keep_curr_dev_pwr_mode) {
> +			ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);

Now, when the WB buffer is completely flushed out, the device should be 
put back into UFS_SLEEP_PWR_MODE or UFS_POWERDOWN_PWR_MODE. Say, the 
device buffer has to be flushed and during runtime-suspend, the device 
is put to UFS_ACTIVE_PWR_MODE and Vcc is kept ON; the device doesn't 
resume nor does the system enters suspend for a very long time, and with 
AH8 and hibern8 disabled, there will be an unnecessary power drain for 
that much time.

How about a periodic interval checking of flush status if 
keep_curr_dev_pwr_mode evaluates to be true?

> +			if (ret)
> +				goto enable_gating;
> +		}
>   	}
>   
>   	flush_work(&hba->eeh_work);
> 



-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
