Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2F1179F6F
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Mar 2020 06:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ho64AY5vFdK1MUI51Eh0f3NtDUxBhsEPu9jhlHpavDM=; b=WZaCpDzrYhFrKYKXpmyNUmgLp
	M6wuwnSBYz5u5cK6OX6uxonIEWN4AWAV23x+SsPGqHcP6G/kLwXkx2donwC1o9oBRrP8vMIPP+0hZ
	NrXt2OLKEuVAj3e26MuG8Zqin9Fc4NDDu+Xkrhy7aj3U5G8LvEWeW4IlyvxBsCmF8kEsgeSgxgqS2
	NTftZLfwCjZEsmCEgky6kNqfLIUBbQXTscqjB133lTfK4EYtdnO8DzlYIXBwAaHqW/5vJn4muBHbB
	V8Bsj0oaki/AVD7Jy9wZ1gru5mah/FdC0OLYUxewkeCTC2fEylZ8cz3HZDQC/LQT0uhEh4tH6i4Fz
	1lNA/xf5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9jJR-00010n-8Z; Thu, 05 Mar 2020 05:44:49 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9jJN-00010A-HL
 for linux-mediatek@lists.infradead.org; Thu, 05 Mar 2020 05:44:46 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1583387084; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=As7z+9RsocK5CQV9qlxwp3vbojEnbfUk/NP3ejBV3dc=;
 b=V6yyqpEeGhjXBzHPiqJk2aFtDuK+RDojVipsiIk6nqCbn6am5VwdZ2J1CzOh9fS40o/1pzVF
 xHI957itbSNzbMrk4o6PPUBl1CeM7ZXT67ukzUEV/eO3q4v5V7Y3LWcdQMoQWbqcLdlK+VSk
 DyWcfVH8zw1tv6nFI99uJP7alRQ=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6091ca.7f0d0ddcb960-smtp-out-n03;
 Thu, 05 Mar 2020 05:44:42 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EB9CAC4479C; Thu,  5 Mar 2020 05:44:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A1C56C43383;
 Thu,  5 Mar 2020 05:44:39 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 05 Mar 2020 13:44:39 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 2/4] scsi: ufs: use an enum for host capabilities
In-Reply-To: <20200305040704.10645-3-stanley.chu@mediatek.com>
References: <20200305040704.10645-1-stanley.chu@mediatek.com>
 <20200305040704.10645-3-stanley.chu@mediatek.com>
Message-ID: <2f7c30cab1abf458930ac4253ff17ee1@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_214445_640880_6001CFF9 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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

Hi Stanley,

On 2020-03-05 12:07, Stanley Chu wrote:
> Use an enum to specify the host capabilities instead of #defines inside 
> the
> structure definition.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>

Reviewed-by: Can Guo <cang@codeaurora.org>

> ---
>  drivers/scsi/ufs/ufshcd.h | 65 ++++++++++++++++++++++-----------------
>  1 file changed, 37 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 4e235cef99bc..49ade1bfd085 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -510,6 +510,43 @@ enum ufshcd_quirks {
>  	UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION		= 1 << 5,
>  };
> 
> +enum ufshcd_caps {
> +	/* Allow dynamic clk gating */
> +	UFSHCD_CAP_CLK_GATING				= 1 << 0,
> +
> +	/* Allow hiberb8 with clk gating */
> +	UFSHCD_CAP_HIBERN8_WITH_CLK_GATING		= 1 << 1,
> +
> +	/* Allow dynamic clk scaling */
> +	UFSHCD_CAP_CLK_SCALING				= 1 << 2,
> +
> +	/* Allow auto bkops to enabled during runtime suspend */
> +	UFSHCD_CAP_AUTO_BKOPS_SUSPEND			= 1 << 3,
> +
> +	/*
> +	 * This capability allows host controller driver to use the UFS HCI's
> +	 * interrupt aggregation capability.
> +	 * CAUTION: Enabling this might reduce overall UFS throughput.
> +	 */
> +	UFSHCD_CAP_INTR_AGGR				= 1 << 4,
> +
> +	/*
> +	 * This capability allows the device auto-bkops to be always enabled
> +	 * except during suspend (both runtime and suspend).
> +	 * Enabling this capability means that device will always be allowed
> +	 * to do background operation when it's active but it might degrade
> +	 * the performance of ongoing read/write operations.
> +	 */
> +	UFSHCD_CAP_KEEP_AUTO_BKOPS_ENABLED_EXCEPT_SUSPEND = 1 << 5,
> +
> +	/*
> +	 * This capability allows host controller driver to automatically
> +	 * enable runtime power management by itself instead of waiting
> +	 * for userspace to control the power management.
> +	 */
> +	UFSHCD_CAP_RPM_AUTOSUSPEND			= 1 << 6,
> +};
> +
>  /**
>   * struct ufs_hba - per adapter private structure
>   * @mmio_base: UFSHCI base register address
> @@ -662,34 +699,6 @@ struct ufs_hba {
>  	struct ufs_clk_gating clk_gating;
>  	/* Control to enable/disable host capabilities */
>  	u32 caps;
> -	/* Allow dynamic clk gating */
> -#define UFSHCD_CAP_CLK_GATING	(1 << 0)
> -	/* Allow hiberb8 with clk gating */
> -#define UFSHCD_CAP_HIBERN8_WITH_CLK_GATING (1 << 1)
> -	/* Allow dynamic clk scaling */
> -#define UFSHCD_CAP_CLK_SCALING	(1 << 2)
> -	/* Allow auto bkops to enabled during runtime suspend */
> -#define UFSHCD_CAP_AUTO_BKOPS_SUSPEND (1 << 3)
> -	/*
> -	 * This capability allows host controller driver to use the UFS HCI's
> -	 * interrupt aggregation capability.
> -	 * CAUTION: Enabling this might reduce overall UFS throughput.
> -	 */
> -#define UFSHCD_CAP_INTR_AGGR (1 << 4)
> -	/*
> -	 * This capability allows the device auto-bkops to be always enabled
> -	 * except during suspend (both runtime and suspend).
> -	 * Enabling this capability means that device will always be allowed
> -	 * to do background operation when it's active but it might degrade
> -	 * the performance of ongoing read/write operations.
> -	 */
> -#define UFSHCD_CAP_KEEP_AUTO_BKOPS_ENABLED_EXCEPT_SUSPEND (1 << 5)
> -	/*
> -	 * This capability allows host controller driver to automatically
> -	 * enable runtime power management by itself instead of waiting
> -	 * for userspace to control the power management.
> -	 */
> -#define UFSHCD_CAP_RPM_AUTOSUSPEND (1 << 6)
> 
>  	struct devfreq *devfreq;
>  	struct ufs_clk_scaling clk_scaling;

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
