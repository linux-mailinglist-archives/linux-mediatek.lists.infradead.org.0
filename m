Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 892571A3E1A
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Apr 2020 04:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNqi/bfO0wSZChwG4uQYulyGm62i7y4ZGFjqaV2OrkM=; b=pHNE/jTHEsqje0
	Z+4Pvo/4JMzDltiuSnjIsSeT4ivzZCh9fvxKfY42HPoY9PYCJyY4tjfZsLzhv40rmMu//13DtAPP6
	lVKN/UyITb5f4Fd/ecnnDIE729+GvivwG6i/e5ix5p9/VQ3rhdV0OBu8z/cZNuRD7ygSC9lD5A+3P
	87ZcLTxw1poqT5W/Llu8KjvkcGzUkmaijmpqf5E4Ty/3zZf2RHDbXmAQGFMnM5kSaqkXSpKwahE/w
	jK4QIfmibJxy24JCZMq55VCtE7SyHBeTK/uxMBNdu7H3zG/IGzinB9NIxIpSlg/47Yb4QfdF4t8mW
	au5mTOWme8AyBwSsIiuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjDc-0006fF-P6; Fri, 10 Apr 2020 02:16:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjDZ-0006eY-AG
 for linux-mediatek@lists.infradead.org; Fri, 10 Apr 2020 02:16:30 +0000
Received: by mail-pl1-x644.google.com with SMTP id x2so193062plv.13
 for <linux-mediatek@lists.infradead.org>; Thu, 09 Apr 2020 19:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=g3ezOHVTu/DVs9eQ5bfvyVgR22CPV+9l8W/1ERsAjaM=;
 b=EjhWVyK8B16rqGj6Gwx5TFqcG4pWyYbL0yI3j0qO+Vgv03KmaDbFUV31ZOkNUKSTQG
 Oo+dPvSSEBlfQd3X2Y1b5mv/P6y/uU73n8TD8YHf0etFsRWXJ4Uyy/N5YbKVNmoqaP/R
 q2BH8emgUM1SUM5ig2Z4BNPG1a9ZMURsoXsRbaZuVAlmJTbpeAowU825GDC+URy4HxIS
 fRsDmlxFFWLYCxO4zl711XVyLlJTr+cWWmvskWRcCz5gAyrKvSGmj3ZgM6vpygv+9L1U
 3hoiykwzzPGrmxqac7T5E6Qk1yb/jIxb4cxrZSDC8ykI1ZO4S5hfyJtW7okCq7W/uaKy
 sGFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=g3ezOHVTu/DVs9eQ5bfvyVgR22CPV+9l8W/1ERsAjaM=;
 b=rNOz0T5NOyxMzZY5Duv6W9XV9qN5bN3eJPbj1NsysFgpCw/HD3H4g8PO8SmMm1N6cn
 LoYZdeZMgrU02Prlx6f5Fqq5/xbVWfdc0nNznShFfRsH3pAKMaqjs97LibUVTG4vom8c
 xrbcG/ZpZ7btHUDdoYeCwxNB8xNnEWWThEMH6GdgVNkvZXqaTBUo8/LvwulERfXOpKds
 WqB8v3zW0usK/S/vJ1NcFrPqQBcnEVLW/V8UTKRh6jPl5tyNC63IBFAQDwqEMqIN80WR
 X1lJfML+Cf/MC4PhsIMDlqrAw36n9B7gJD81G+n0d9cu6UJmgtczt8WLhZOCBcIoBtBa
 7u2A==
X-Gm-Message-State: AGi0PuYkFDcny/jZBzbh3Rg5hJKcxDAgZQLM8TYvr/3/ocH3HkGd4ha+
 gQT7PtM9NnioqUGrvpH4+MOu6g==
X-Google-Smtp-Source: APiQypJNHYZiUTXCViITxQIb0jbA9ZW5wv2BarRhmw9hMnx+q5iry/q6pNmWq864Mk8uqzFlF3vOkg==
X-Received: by 2002:a17:90a:8a08:: with SMTP id
 w8mr2762112pjn.119.1586484988292; 
 Thu, 09 Apr 2020 19:16:28 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 6sm403583pfx.69.2020.04.09.19.16.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 19:16:27 -0700 (PDT)
Date: Thu, 9 Apr 2020 19:16:36 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: [PATCH] rpmsg: pull in slab.h
Message-ID: <20200410021636.GZ20625@builder.lan>
References: <20200409211045.12025-1-mst@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409211045.12025-1-mst@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_191629_363632_A7A75231 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu 09 Apr 14:10 PDT 2020, Michael S. Tsirkin wrote:

> In preparation to virtio header changes, include slab.h directly as
> this module is using it.
> 
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>

I presume you have some series where you need these? Otherwise let me
know and I'll pick them up.

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/rpmsg/mtk_rpmsg.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/rpmsg/mtk_rpmsg.c b/drivers/rpmsg/mtk_rpmsg.c
> index 232aa4e40133..83f2b8804ee9 100644
> --- a/drivers/rpmsg/mtk_rpmsg.c
> +++ b/drivers/rpmsg/mtk_rpmsg.c
> @@ -8,6 +8,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/remoteproc.h>
>  #include <linux/rpmsg/mtk_rpmsg.h>
> +#include <linux/slab.h>
>  #include <linux/workqueue.h>
>  
>  #include "rpmsg_internal.h"
> -- 
> MST
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
