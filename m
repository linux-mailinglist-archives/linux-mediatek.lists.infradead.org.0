Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46005179F7B
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Mar 2020 06:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n8RDnTyJTMIY3+XpiZYvtvLOzXRoXiUhwO92fV1iQtk=; b=lKQal4E2kwyJkB5JcjFT4XXDV
	EfxBD7d9RutJvyKKaIAM5lPJNwgfqPndfVdveggY44r3RsULc7gDqzshrFOVnvYOX+NB3LNofBD72
	hwYqGZAB1Y1NvhsXxl7nK4tNm/lajCHVBju3+bhrGPkI+CyW214DDO0TuUi0k5iCUgErXD+hTc2WY
	FMCsT0fSADj+5L7rkpRlhUD4KnNX2r/cg0aJeH2+9cM3kUsk704bDDLeoVhiU+a8BQ0mYX3y1zfhP
	ZOiDyajD4RqSQuhusdT0loZls2saTxfGVkCIUvpGztdyxham7ht/4gdKHT1KTOA1qwuzORaYNqLdY
	8Bo+51SBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9jKr-0002pP-BP; Thu, 05 Mar 2020 05:46:17 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9jKd-0002f2-LY
 for linux-mediatek@lists.infradead.org; Thu, 05 Mar 2020 05:46:08 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1583387166; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=xJc+7Bp3FwZ9FEajchA9Dd3Tszwww0y5sCjNNZKDRO0=;
 b=ZYgY7Lo2JG5AdyD1SaOnXQT0TWUcycrCRBx4Tja4MH/33C7OsAyoaf9YP6Dn+mSm73dz+zVt
 AlmgoW4pV5/s8g5XwSGNVEOR0PUqYEDGBZ1GtGM70vov0ZpbYuSxbyYPuWP5rByNk8qSyYwf
 Awer9aN+rfA1vpqymB+dqnWcGUA=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e60920f.7f8a99993420-smtp-out-n02;
 Thu, 05 Mar 2020 05:45:51 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EF523C447A5; Thu,  5 Mar 2020 05:45:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 03824C43383;
 Thu,  5 Mar 2020 05:45:50 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 05 Mar 2020 13:45:49 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 3/4] scsi: ufs: allow customized delay for host enabling
In-Reply-To: <20200305040704.10645-4-stanley.chu@mediatek.com>
References: <20200305040704.10645-1-stanley.chu@mediatek.com>
 <20200305040704.10645-4-stanley.chu@mediatek.com>
Message-ID: <1d7964c76ceb218529f0101499fabbea@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_214607_153762_F72AF6A5 
X-CRM114-Status: GOOD (  17.03  )
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
> Currently a 1 ms delay is applied before polling CONTROLLER_ENABLE
> bit. This delay may not be required or can be changed in different
> controllers. Make the delay as a changeable value in struct ufs_hba to
> allow it customized by vendors.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>

Reviewed-by: Can Guo <cang@codeaurora.org>

> ---
>  drivers/scsi/ufs/ufshcd.c | 6 +++++-
>  drivers/scsi/ufs/ufshcd.h | 1 +
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index ed61ecb98b2d..39cae907abd0 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -4282,7 +4282,10 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
>  	 * instruction might be read back.
>  	 * This delay can be changed based on the controller.
>  	 */
> -	usleep_range(1000, 1100);
> +	if (hba->hba_enable_delay_us) {
> +		usleep_range(hba->hba_enable_delay_us,
> +			     hba->hba_enable_delay_us + 100);
> +	}
> 
>  	/* wait for the host controller to complete initialization */
>  	retry = 10;
> @@ -8402,6 +8405,7 @@ int ufshcd_init(struct ufs_hba *hba, void
> __iomem *mmio_base, unsigned int irq)
> 
>  	hba->mmio_base = mmio_base;
>  	hba->irq = irq;
> +	hba->hba_enable_delay_us = 1000;
> 
>  	err = ufshcd_hba_init(hba);
>  	if (err)
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 49ade1bfd085..baf1143d4839 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -662,6 +662,7 @@ struct ufs_hba {
>  	u32 eh_flags;
>  	u32 intr_mask;
>  	u16 ee_ctrl_mask;
> +	u16 hba_enable_delay_us;
>  	bool is_powered;
> 
>  	/* Work Queues */

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
