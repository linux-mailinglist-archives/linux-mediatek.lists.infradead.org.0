Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3573D1CE1F6
	for <lists+linux-mediatek@lfdr.de>; Mon, 11 May 2020 19:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0yFeXDJmMVnAp5wrl9uilGhmsY265TvT3ISIgtOU5I=; b=AZ9N3LqHKwRr65
	ojFudko3wbBqZHd/qAuHHcm6A+/lqiJ9B8nJzFwFmzyQm8NLEW9BWCmpIwhljd+WXTwiEz7qQrJD5
	aBeeSdlgQLzsariPycbYUdW1Z5gaboZmcU2qbw9vKTSXXjuDZps+UJX1ft6qArBVCRf3HY4jKobTm
	abpThfJR272Thi+dJqRzrW+9qs8yrah8/MmlJTuhS6/PyYVR33hHKRGVuGCOWsVc9tJBrN1joe+Tf
	dFuOzz/WEXMWpu3svCLIb3boxtN8izBa8OzokHUuEaVRz0Fr9rGnptlqhfyf2XKkuopllPvnJMvsE
	MWr5bYum75r1D7MA0XMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYCUa-0006rl-FB; Mon, 11 May 2020 17:45:28 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYCUP-0006hz-5a
 for linux-mediatek@lists.infradead.org; Mon, 11 May 2020 17:45:18 +0000
Received: by mail-io1-xd44.google.com with SMTP id 79so1572905iou.2
 for <linux-mediatek@lists.infradead.org>; Mon, 11 May 2020 10:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OTMcsGbSNPLL7L+tUlyt0FenOS7bLLaekCh7ftl59gc=;
 b=Nfb99L6TDVBBWvt/W0lqIjZKrLZDJ/LXYKTvX3IvTOiMFZN/A1DIPF051AUp+7tDkX
 sVxPiC2nZH5U1Io2kW6fVGpMx0LndJCvV34Rtso3BcUX/uM3fh+Tn6Vv0dzctSr/Sr/h
 oOigNR9VZNxYR7ovbguI2IiC8jqBsgoBPcFVnPRW3diKX5sGiDRwDwEVYlkUdYFKgJJo
 a9K6d4sMtYVdzpts1rmuMGBOlg9MC0MDNS7lYCgvz8oZVIPDKCqPEbsSwSnIMt8JFDlO
 wPJa+exWgkN4H31DKuofRThFklXX4KwpyrWMoDwOYrBrEAy19dk1llmjWrb2Y9/Yp/2u
 xbzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OTMcsGbSNPLL7L+tUlyt0FenOS7bLLaekCh7ftl59gc=;
 b=L79G15gpsCuRThjaMyrkvFDrAq++LTU96yiY6em2n6hnE0LtqBZVUeBsTkD6Rhykeb
 WnWT1DbtaaLm6MDRCJn4SpgO+JRzsRItarymq/SBjyAfQp1TecMJXUu+Y6McyRFuTmA5
 2Y+HipHaUg+W1Q1e+zHclVuSUZtK4QPuyO/b4uq/RwLcG6dl/bGhhQQpzTVkKJ6ZkSDf
 7ZYph/MCZ/1MTAilVCnThMYEpKf0Y8TD4HD/W7PvGf3ub/4/MtSifazVJEvQIuUMwMVI
 nGSczTPftuzCaTIWvdIVdOyFIWGWZ428NdNlYF7/0b62BruukqFmvzav1gA44QEcw1LC
 WTgQ==
X-Gm-Message-State: AGi0PubUFNI51SzyIoAwiZ12l9C9ZVD4gLISWjAT3a197JbRN+tc2vsi
 KEujsb6H4N2hEFhbBjWUAV8ltaj4CTGGE3108YxVdw==
X-Google-Smtp-Source: APiQypL8QQIH8rAW3VdEhTJm19ncep/OtoyHj8sVIDxfQabUswS2mLh+6DC+2Nmsa/EfSAbxASZU982W9dmlWpW0JZE=
X-Received: by 2002:a6b:dd06:: with SMTP id f6mr13132232ioc.90.1589219114664; 
 Mon, 11 May 2020 10:45:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200509084237.36293-1-weiyongjun1@huawei.com>
In-Reply-To: <20200509084237.36293-1-weiyongjun1@huawei.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 11 May 2020 11:45:03 -0600
Message-ID: <CANLsYkxn2QAHgGtmygbw4x-kmrzo2R5u3XDmDUz5EVAYg=SQyQ@mail.gmail.com>
Subject: Re: [PATCH -next] remoteproc/mediatek: fix invalid use of sizeof in
 scp_ipi_init()
To: Wei Yongjun <weiyongjun1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_104517_205126_479EB8E0 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, kernel-janitors@vger.kernel.org,
 Erin Lo <erin.lo@mediatek.com>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Hulk Robot <hulkci@huawei.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, 9 May 2020 at 02:38, Wei Yongjun <weiyongjun1@huawei.com> wrote:
>
> sizeof() when applied to a pointer typed expression gives the
> size of the pointer, not that of the pointed data.
>
> Fixes: 63c13d61eafe ("remoteproc/mediatek: add SCP support for mt8183")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/remoteproc/mtk_scp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> index 2bead57c9cf9..ac13e7b046a6 100644
> --- a/drivers/remoteproc/mtk_scp.c
> +++ b/drivers/remoteproc/mtk_scp.c
> @@ -132,8 +132,8 @@ static int scp_ipi_init(struct mtk_scp *scp)
>                 (struct mtk_share_obj __iomem *)(scp->sram_base + recv_offset);
>         scp->send_buf =
>                 (struct mtk_share_obj __iomem *)(scp->sram_base + send_offset);
> -       memset_io(scp->recv_buf, 0, sizeof(scp->recv_buf));
> -       memset_io(scp->send_buf, 0, sizeof(scp->send_buf));
> +       memset_io(scp->recv_buf, 0, sizeof(*scp->recv_buf));
> +       memset_io(scp->send_buf, 0, sizeof(*scp->send_buf));

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>
>         return 0;
>  }
>
>
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
