Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE0E12A6B9
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Dec 2019 09:21:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GtismjyTiZrjy0lP0pgpRFdWTlrBlgNaMpo+MkIc6F4=; b=OgnTErtxA7VH+9EcwEU66GEFT
	6XgmuZLnKkVoSnuHjvf54p0owPWu8I+/bI5rQKF0CJrlerbx+eyV1LTGoIDQeaprSlp9UQhGUHGVa
	mgDfi6+LyYS2OIHGgxtM13cw6fb438bxa8b2k4PqRp8hBhlwl2w5Gp15SiMLyLskxRecTwObHvGNp
	eM9nkwR2s68DpW/zcBtESz8OWc0oJ1cvprB/5SRgMXANGzOJhxZfkarJC/SF6YpgBfaotso6NNlUP
	AFRqDK2iFnLecb52+8vJG2boOlXgQ2esl/qAMvoTDyLciRlHdhWEzaSHRrOW2cwOJQxvD1mGFbfOD
	EakHMjIRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik1vA-0004b8-KA; Wed, 25 Dec 2019 08:21:32 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik1v7-0004aH-1G
 for linux-mediatek@lists.infradead.org; Wed, 25 Dec 2019 08:21:30 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577262087; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=K83HIkx3t93SDXJyO1FB5pObJwAm8xvbYEkqpHJP7VU=;
 b=Y/8W9RJ2C/a3gGCnpbdWY1D1RIfkFrDXBy5BmpeqjLv4fXn2xek5Kn+wXnekJGrTnmW0akwF
 gkTKYZLO9lcJN7DQ5Nzw3Vt0fRuCCcFEcc2NHM7NOcgwB7RXOauTAdVAk+t/ZF0AwtLzyqtd
 km0uEFNm/2GWk7IzSyh/AsSZcuA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e031c06.7fdadd69fbc8-smtp-out-n02;
 Wed, 25 Dec 2019 08:21:26 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AC96DC433A2; Wed, 25 Dec 2019 08:21:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 09744C433CB;
 Wed, 25 Dec 2019 08:21:25 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 25 Dec 2019 16:21:25 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: unify scsi_block_requests usage
In-Reply-To: <1577192466-20762-2-git-send-email-stanley.chu@mediatek.com>
References: <1577192466-20762-1-git-send-email-stanley.chu@mediatek.com>
 <1577192466-20762-2-git-send-email-stanley.chu@mediatek.com>
Message-ID: <d97b91ae4547e5b6e433891446a68545@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_002129_139932_873B32E9 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2019-12-24 21:01, Stanley Chu wrote:
> Currently UFS driver has ufshcd_scsi_block_requests() with
> reference counter mechanism to avoid possible racing of blocking and
> unblocking requests flow. Unify all users in UFS driver to use the
> same function.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufshcd.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index ed02a70..b6b9665 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -5177,7 +5177,7 @@ static void
> ufshcd_exception_event_handler(struct work_struct *work)
>  	hba = container_of(work, struct ufs_hba, eeh_work);
> 
>  	pm_runtime_get_sync(hba->dev);
> -	scsi_block_requests(hba->host);
> +	ufshcd_scsi_block_requests(hba);
>  	err = ufshcd_get_ee_status(hba, &status);
>  	if (err) {
>  		dev_err(hba->dev, "%s: failed to get exception status %d\n",
> @@ -5191,7 +5191,7 @@ static void
> ufshcd_exception_event_handler(struct work_struct *work)
>  		ufshcd_bkops_exception_event_handler(hba);
> 
>  out:
> -	scsi_unblock_requests(hba->host);
> +	ufshcd_scsi_unblock_requests(hba);
>  	pm_runtime_put_sync(hba->dev);
>  	return;
>  }

Reviewed-by: Can Guo <cang@codeaurora.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
