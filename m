Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E25480E6
	for <lists+linux-mediatek@lfdr.de>; Mon, 17 Jun 2019 13:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/mRWWhHGHik8MH58UmrPGdDMZxusZuTyiG2zneGKgU=; b=p+b/8Kygvdstl5
	3MKP+soqN2W+hFQWgstVCZkJLFliU4AufV8rkyL7VuR5QO362v8gAAwz0RliCvUxLJnGFxMYXY4RH
	qRO0C81Oy09FnTOUHub8GmQs4w0RDm1WBXssWoMC+0qxXyIxVhMz8939MAJSUhTn9BFbyWLDCnr8v
	4SqkcDBetnB/5Ml7ixeNGGWVPHlDanGVVZVS+EvlmIAC/mWuIYPSRmt5ebpcX4uQsMQhmCb6u8u0k
	O4vg1SZTRjuRrDaThBQFHM67vWmh59uECeyIqLTq68WmRZjEcXTN0R+B1wQZnoJuidqWgN1N251n0
	ssPo5DDcAg2zvat1Nf/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpwC-0008QR-M0; Mon, 17 Jun 2019 11:36:36 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpvT-0007c4-UW
 for linux-mediatek@lists.infradead.org; Mon, 17 Jun 2019 11:35:54 +0000
Received: by mail-vs1-xe44.google.com with SMTP id v129so5845060vsb.11
 for <linux-mediatek@lists.infradead.org>; Mon, 17 Jun 2019 04:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iaMaGenOD4N8b325Sjijr4yZaXPGNKq+TVNXE6cscOU=;
 b=uONy/nnaWJS5YnlekVpZ6hSp62ck/n140Ql6GM+iMx5eXARgkLsu4yUoBGQG4mZMsx
 JPVEPfAUizflPNYzQdAVNWMEA+EAePkbnAJmhUlLB1bc9cmVnPmYGUe8epJp5QRsr7fv
 3fSXKdbmbUX+lHk+i8IZcWgfzItQYtk1ZrzNZcpygYy0Z2Qzk9paEqGWaq+M8yYUov9n
 vpC1pQkpankIn0pzLQ2yYcH5hlWPq7YsyyIzcAvDY/jZDYHlmnHNvaGaRm+o9V74zP+U
 oCm4zuFp1UkSyXq49pkhH3XgX9bG4WBP7ub8KNmwdmacoeTwtN1G7qFUgr+N7SXLJ2iA
 cPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iaMaGenOD4N8b325Sjijr4yZaXPGNKq+TVNXE6cscOU=;
 b=eYuv6GD24phqD7Uo4GzPN3ocAAvz1QyVXp8TLG8F9pL+RayCkwM8oLtjoqTMs8w3tY
 0KHb0rXdiyXhjZ8NymFMBsgbJC5Vf80+BrsLA3psrLjNzO41p4QUGOiMusZi9ejwe+V+
 lVXOMWSmdzAayknMa2bC7JnrAYGLV0ZCOwt1AK9McXUesWaSgJRwD9C2nteTVf1bEkka
 NJJ9HKwd/TcBZobOJ6N9/JLsmJu9wjqWpm8d87JV4oaBU1wL2xp6tWT90Ev5E961Xc31
 LuSTrQdFIEw34bEw8eFyI6eqLTzkuKjC4cILKoTexGQ3anKobnQt9OPccFGVUhmKJc6G
 An+w==
X-Gm-Message-State: APjAAAUMgP6i8YEpSxUzO4I2Uc4ftMe+WEPidBzpJZn6EKt6e4LQUnwP
 CdiTFk5vpMbeghfuJydVit9wdRQUn801/iYFxOvuuQ==
X-Google-Smtp-Source: APXvYqy1iw03xovxVxG7DFIiObqWByOSpxIG6znLpJdvU2E+tvGtVv5f1UFVBS4cZkKB5nErh4SPzFnfR6lB6yyVJvQ=
X-Received: by 2002:a67:3254:: with SMTP id y81mr20641150vsy.34.1560771350006; 
 Mon, 17 Jun 2019 04:35:50 -0700 (PDT)
MIME-Version: 1.0
References: <1560769448-23070-1-git-send-email-jjian.zhou@mediatek.com>
 <1560769448-23070-2-git-send-email-jjian.zhou@mediatek.com>
In-Reply-To: <1560769448-23070-2-git-send-email-jjian.zhou@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Jun 2019 13:35:13 +0200
Message-ID: <CAPDyKFoTBhCy2bB8uzzDTNMBPnNjD81134BGt2Op3USFCW1R7Q@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] mmc: mediatek: fix SDIO IRQ detection issue
To: Jjian Zhou <jjian.zhou@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_043552_093673_361A6BFE 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yong Mao <yong.mao@mediatek.com>, linux-mediatek@lists.infradead.org,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 at 13:04, Jjian Zhou <jjian.zhou@mediatek.com> wrote:
>
> From: jjian zhou <jjian.zhou@mediatek.com>
>
> If cmd19 timeout or response crcerr occurs during execute_tuning(),
> it need invoke msdc_reset_hw(). Otherwise SDIO IRQ can't be detected.
>
> Signed-off-by: jjian zhou <jjian.zhou@mediatek.com>
> Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
> Signed-off-by: Yong Mao <yong.mao@mediatek.com>

Applied for fixes and by adding a fixes/stable tag, thanks!


> ---
>  drivers/mmc/host/mtk-sd.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index fa7d420..ba1ad5e 100644
> --- a/drivers/mmc/host/mtk-sd.c
> +++ b/drivers/mmc/host/mtk-sd.c
> @@ -1031,6 +1031,8 @@ static void msdc_request_done(struct msdc_host *host, struct mmc_request *mrq)
>         msdc_track_cmd_data(host, mrq->cmd, mrq->data);
>         if (mrq->data)
>                 msdc_unprepare_data(host, mrq);
> +       if (host->error)
> +               msdc_reset_hw(host);
>         mmc_request_done(host->mmc, mrq);
>  }
>
> --
> 1.9.1
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
