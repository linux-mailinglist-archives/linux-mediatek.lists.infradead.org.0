Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05474DEB41
	for <lists+linux-mediatek@lfdr.de>; Mon, 21 Oct 2019 13:45:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02Nl6KjcDaBkarepA6FcLF0t5PIKXwFbCCejNeP5sGM=; b=cS0SK7aWFXCroE
	ehqFjXmQm7WVbsm0WxQmeSz0BgrldV7ZtB9pXJih1/AeRc70xBlWqaDCmco/OcjdaeU+ck834Jdcp
	ULKLS/SRB4auxxkHjNMk/2WWo4tFVE67J/5iekYhB77J931eWOfHeKfHD7hhy/XzlnUDKw7vz+0K8
	kj96B6wTLVE7EcVKSm2eWMKXHd6XpSGyN+5ZPGxaXqn3IBgbyTxO12NZxV6zq9nZv8E92I+xU3a41
	E7BAKoHzDZqv5yN43pbMvRHNxqomv/PO8ymghYanX3J2j6O5Ujk8x27QeBsfwYTIiaezEugpEc7Z8
	BJP2T30SWQC/nXhvtLXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMW7L-0008Gv-5n; Mon, 21 Oct 2019 11:44:55 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMW72-00082y-Ob
 for linux-mediatek@lists.infradead.org; Mon, 21 Oct 2019 11:44:38 +0000
Received: by mail-ua1-x944.google.com with SMTP id u31so3698807uah.0
 for <linux-mediatek@lists.infradead.org>; Mon, 21 Oct 2019 04:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KSg26SWjQFt8SFFEyx8QZDcv+KIUSNzw/5kl16s+Vj0=;
 b=PsyBUKS7aYmTFIsiINdVGdDnLFZMUIHW7hGfjzj6h8j52Dpdn10FVdqf+LuVW60OKY
 ckvqCloEO+aA8MIejDEZkw29Xs2loC2DtjP6Un4ZOZ5cK4ONnTCdGUhavne9NG6v8sBH
 DzgTIZsHluqz2GJJqiQlSQOJVzA8PGfTWWcM1A9swf78nuHux62KdVruzexhMAAozU71
 XnIMeJz/vEuFImP/kVlrz4bW8GK80X6VeOJWMShrL2KZRwo7prJbEEojxUFzjGLkmmiv
 svP41lv7/wlnMvQ/8YCVxQoXblrHSujTXQOzOPg7hcG/9lpf78piC1R0pKpTQ0P/nEIK
 kVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KSg26SWjQFt8SFFEyx8QZDcv+KIUSNzw/5kl16s+Vj0=;
 b=bd3BTIOyHWtkgebydysO/pQ8qJMewnTPdQz9gcWTH0i8JSLLRgc9MjQlqPkIQ+4Isa
 ky59lXdM2u0qNdtjKo/znzUTItiPIKkZ+MIU4PJI8S0T+vxQaVR8SzcEEiIf1IN4fAJi
 76z8SMD+ILGu8Pfyh5+X6WChN/IBaH1nIIe5fQ04uPfBw/qp4hppBYpvTFACzruz5YA4
 iaBTUJjO8IdaYADtK2i5Txy4/l2wDK2VK/9q/qTWzc1qgLqSbyMur4cV+DUBspHEyGAV
 4X/pPfHeMH/DHAMW1R3jfUlq/XAvv/HoVvARNvPg+S+w9oMTL+xjee+h55nXZ00WMOun
 aY/A==
X-Gm-Message-State: APjAAAUseRVDvrdJvSWh2er16ECQ336W+hdvnekp+7nxv+RKizeR116Y
 lCYXLpq1Ue73wC9gAABy/Ejv8bHj6HHMvyq/t+izRw==
X-Google-Smtp-Source: APXvYqx+TBsQJDgF01IGB4FH9mUGStVZN4fWPZ1N/cuN6TP1mpjsFqTYHKcfyhRphAaArZxZTabYiicePr18BMtcdBg=
X-Received: by 2002:ab0:348c:: with SMTP id c12mr8377699uar.100.1571658275446; 
 Mon, 21 Oct 2019 04:44:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190905075318.15554-1-chaotian.jing@mediatek.com>
 <20190905075318.15554-3-chaotian.jing@mediatek.com>
In-Reply-To: <20190905075318.15554-3-chaotian.jing@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 21 Oct 2019 13:43:59 +0200
Message-ID: <CAPDyKFp7cmWpD_9TUR2bPArGevo9M82MTff0RQ-Ly-+L7t5pHA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] mmc: block: add CMD13 polling for ioctl() cmd with
 R1B response
To: Chaotian Jing <chaotian.jing@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_044436_809812_4BBD0369 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Chris Boot <bootc@bootc.net>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Avri Altman <avri.altman@wdc.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Zachary Hays <zhays@lexmark.com>, YueHaibing <yuehaibing@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ming Lei <ming.lei@redhat.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-mediatek@lists.infradead.org, Hannes Reinecke <hare@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 5 Sep 2019 at 09:53, Chaotian Jing <chaotian.jing@mediatek.com> wrote:
>
> currently there is no CMD13 polling and other code to wait card
> change to transfer state after R1B command completed. and this
> polling operation cannot do in user space, because other request
> may coming before the CMD13 from user space.
>
> Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>

Both patch 1 and patch2, looks like material for stable, so unless
someone objects I am adding a tag for that.

Moreover, I updated the changelogs, also according to suggestions from
Avri and then applied both patches for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/core/block.c | 146 +++++++++++++++------------------------
>  1 file changed, 55 insertions(+), 91 deletions(-)
>
> diff --git a/drivers/mmc/core/block.c b/drivers/mmc/core/block.c
> index aa7c19f7e298..ee1fd7df4ec8 100644
> --- a/drivers/mmc/core/block.c
> +++ b/drivers/mmc/core/block.c
> @@ -408,38 +408,6 @@ static int mmc_blk_ioctl_copy_to_user(struct mmc_ioc_cmd __user *ic_ptr,
>         return 0;
>  }
>
> -static int ioctl_rpmb_card_status_poll(struct mmc_card *card, u32 *status,
> -                                      u32 retries_max)
> -{
> -       int err;
> -       u32 retry_count = 0;
> -
> -       if (!status || !retries_max)
> -               return -EINVAL;
> -
> -       do {
> -               err = __mmc_send_status(card, status, 5);
> -               if (err)
> -                       break;
> -
> -               if (!R1_STATUS(*status) &&
> -                               (R1_CURRENT_STATE(*status) != R1_STATE_PRG))
> -                       break; /* RPMB programming operation complete */
> -
> -               /*
> -                * Rechedule to give the MMC device a chance to continue
> -                * processing the previous command without being polled too
> -                * frequently.
> -                */
> -               usleep_range(1000, 5000);
> -       } while (++retry_count < retries_max);
> -
> -       if (retry_count == retries_max)
> -               err = -EPERM;
> -
> -       return err;
> -}
> -
>  static int ioctl_do_sanitize(struct mmc_card *card)
>  {
>         int err;
> @@ -468,6 +436,58 @@ static int ioctl_do_sanitize(struct mmc_card *card)
>         return err;
>  }
>
> +static inline bool mmc_blk_in_tran_state(u32 status)
> +{
> +       /*
> +        * Some cards mishandle the status bits, so make sure to check both the
> +        * busy indication and the card state.
> +        */
> +       return status & R1_READY_FOR_DATA &&
> +              (R1_CURRENT_STATE(status) == R1_STATE_TRAN);
> +}
> +
> +static int card_busy_detect(struct mmc_card *card, unsigned int timeout_ms,
> +                           u32 *resp_errs)
> +{
> +       unsigned long timeout = jiffies + msecs_to_jiffies(timeout_ms);
> +       int err = 0;
> +       u32 status;
> +
> +       do {
> +               bool done = time_after(jiffies, timeout);
> +
> +               err = __mmc_send_status(card, &status, 5);
> +               if (err) {
> +                       dev_err(mmc_dev(card->host),
> +                               "error %d requesting status\n", err);
> +                       return err;
> +               }
> +
> +               /* Accumulate any response error bits seen */
> +               if (resp_errs)
> +                       *resp_errs |= status;
> +
> +               /*
> +                * Timeout if the device never becomes ready for data and never
> +                * leaves the program state.
> +                */
> +               if (done) {
> +                       dev_err(mmc_dev(card->host),
> +                               "Card stuck in wrong state! %s status: %#x\n",
> +                                __func__, status);
> +                       return -ETIMEDOUT;
> +               }
> +
> +               /*
> +                * Some cards mishandle the status bits,
> +                * so make sure to check both the busy
> +                * indication and the card state.
> +                */
> +       } while (!mmc_blk_in_tran_state(status));
> +
> +       return err;
> +}
> +
>  static int __mmc_blk_ioctl_cmd(struct mmc_card *card, struct mmc_blk_data *md,
>                                struct mmc_blk_ioc_data *idata)
>  {
> @@ -611,16 +631,12 @@ static int __mmc_blk_ioctl_cmd(struct mmc_card *card, struct mmc_blk_data *md,
>
>         memcpy(&(idata->ic.response), cmd.resp, sizeof(cmd.resp));
>
> -       if (idata->rpmb) {
> +       if (idata->rpmb || (cmd.flags & MMC_RSP_R1B)) {
>                 /*
> -                * Ensure RPMB command has completed by polling CMD13
> +                * Ensure RPMB/R1B command has completed by polling CMD13
>                  * "Send Status".
>                  */
> -               err = ioctl_rpmb_card_status_poll(card, &status, 5);
> -               if (err)
> -                       dev_err(mmc_dev(card->host),
> -                                       "%s: Card Status=0x%08X, error %d\n",
> -                                       __func__, status, err);
> +               err = card_busy_detect(card, MMC_BLK_TIMEOUT_MS, NULL);
>         }
>
>         return err;
> @@ -970,58 +986,6 @@ static unsigned int mmc_blk_data_timeout_ms(struct mmc_host *host,
>         return ms;
>  }
>
> -static inline bool mmc_blk_in_tran_state(u32 status)
> -{
> -       /*
> -        * Some cards mishandle the status bits, so make sure to check both the
> -        * busy indication and the card state.
> -        */
> -       return status & R1_READY_FOR_DATA &&
> -              (R1_CURRENT_STATE(status) == R1_STATE_TRAN);
> -}
> -
> -static int card_busy_detect(struct mmc_card *card, unsigned int timeout_ms,
> -                           u32 *resp_errs)
> -{
> -       unsigned long timeout = jiffies + msecs_to_jiffies(timeout_ms);
> -       int err = 0;
> -       u32 status;
> -
> -       do {
> -               bool done = time_after(jiffies, timeout);
> -
> -               err = __mmc_send_status(card, &status, 5);
> -               if (err) {
> -                       dev_err(mmc_dev(card->host),
> -                               "error %d requesting status\n", err);
> -                       return err;
> -               }
> -
> -               /* Accumulate any response error bits seen */
> -               if (resp_errs)
> -                       *resp_errs |= status;
> -
> -               /*
> -                * Timeout if the device never becomes ready for data and never
> -                * leaves the program state.
> -                */
> -               if (done) {
> -                       dev_err(mmc_dev(card->host),
> -                               "Card stuck in wrong state! %s status: %#x\n",
> -                                __func__, status);
> -                       return -ETIMEDOUT;
> -               }
> -
> -               /*
> -                * Some cards mishandle the status bits,
> -                * so make sure to check both the busy
> -                * indication and the card state.
> -                */
> -       } while (!mmc_blk_in_tran_state(status));
> -
> -       return err;
> -}
> -
>  static int mmc_blk_reset(struct mmc_blk_data *md, struct mmc_host *host,
>                          int type)
>  {
> --
> 2.18.0
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
