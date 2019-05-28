Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A519D2C2A8
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 11:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nu7+LvYLTaFqmwUiZC0gA9RzbhYncbh51jHuT9GFpdg=; b=hYZT3c3J9vHmHs
	OrHBlAMn8E4TpEQwXqW81cVve0nBRG3fs5a3YKcIboveaOYpTcvQRHRZ4SsUA5vkTZd15ExIzkROK
	hU0Tn7UNOuodT9JP4onUU/ybl5P/ZmTvYJtlnMnwb473MlL22H2WeXwu/XBhVaqhBZnc9Ws40mju4
	KHm9LLZn/JCP3P8PKxeyySjazDkjMg3rOYHEfHCPws9CXT7F/zxrY+96JKX7qa3K4vfWqDT2nI5Ae
	7A+f4tsdTdRDrlVnnWprg7zSwy6qN8lYraqSNkP8Lh8oL8k02hiAV8Jzar/hZwGDjgyRoYuZP7rIy
	z2gercmQRzc17oKA9X5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVY4g-00009x-Jl; Tue, 28 May 2019 09:07:14 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVY4b-000092-S8
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 09:07:12 +0000
Received: from [IPv6:2001:983:e9a7:1:10b2:2e62:e4b1:bd13]
 ([IPv6:2001:983:e9a7:1:10b2:2e62:e4b1:bd13])
 by smtp-cloud9.xs4all.net with ESMTPA
 id VY4Whh3TBsDWyVY4YhcNp2; Tue, 28 May 2019 11:07:06 +0200
Subject: Re: [RFCv1 04/12] media: mtk-vcodec: fix copyright indent
To: Alexandre Courbot <acourbot@chromium.org>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20190528055635.12109-1-acourbot@chromium.org>
 <20190528055635.12109-5-acourbot@chromium.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <fa11a504-071e-f786-8564-cb7e95248f64@xs4all.nl>
Date: Tue, 28 May 2019 11:07:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190528055635.12109-5-acourbot@chromium.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfNgP3bKa8S2uESOwLT0GPUnLycNeowjEr5Lggzem4wfMEaDIBq7m4Zg6V5IkvWrB5sEVohwm2tLybYHYAPBWGs5mTvILdj7wZ8LeJJIpshmsM+ff6IXR
 LgFWaFhA/KldlsvLQ7wY78oBn3xOFJPgxrYdlVbmOuGekUR502TT14QrD5cCO/mFn1AdD6zCt8daTwSthQbhitomrG5YHiL+fUxtVpYOWzLfRqgFxL+knYVC
 hcFcYAa8qVog3BP21OOwxeAjs3Nk4lYFWpxhLmoWOTb8Vh1x5/1IBHttdGzHVatK+GVvGowRiseoZ6Upzezwzny5onfYJzsOekUpHrOL3TZ1H81orKKUc6EZ
 lQecz5n9TNReOGU9EftN3TP6f6sjUBVKzt+uBI/x3+xmO/Z34l8CV/b20hf0TyaTU6HD/m6A7lg2uCrVlAOsoKNJGDN1GqR0f9gOsijsiuCL4R1ouA1JsKPB
 wzMGhkyGOogDwsbc8acyXRK02oQ/OyVAZOKB70o8LI9d2qZW/AJzkMV+YxP8q5AVsU1N2BCeOsW0SnNRjq9dmHCmdaFkKPsxfM2LABkvoUSS9seRGnQ5SWPD
 Q5Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_020710_073233_C97C719F 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 5/28/19 7:56 AM, Alexandre Courbot wrote:
> From: Yunfei Dong <yunfei.dong@mediatek.com>
> 
> Minor identation fix for copyright notice in a few source files.

How about converting to using SPDX as well?

Regards,

	Hans

> 
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> [acourbot: refactor, cleanup and split]
> Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
> ---
>  .../platform/mtk-vcodec/mtk_vcodec_drv.h      | 26 +++++++++----------
>  .../platform/mtk-vcodec/mtk_vcodec_enc.c      | 26 +++++++++----------
>  .../platform/mtk-vcodec/mtk_vcodec_enc_pm.c   | 24 ++++++++---------
>  3 files changed, 38 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
> index 109c7578a8b2..76905e2d56a7 100644
> --- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
> +++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
> @@ -1,17 +1,17 @@
>  /*
> -* Copyright (c) 2016 MediaTek Inc.
> -* Author: PC Chen <pc.chen@mediatek.com>
> -*         Tiffany Lin <tiffany.lin@mediatek.com>
> -*
> -* This program is free software; you can redistribute it and/or modify
> -* it under the terms of the GNU General Public License version 2 as
> -* published by the Free Software Foundation.
> -*
> -* This program is distributed in the hope that it will be useful,
> -* but WITHOUT ANY WARRANTY; without even the implied warranty of
> -* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -* GNU General Public License for more details.
> -*/
> + * Copyright (c) 2016 MediaTek Inc.
> + * Author: PC Chen <pc.chen@mediatek.com>
> + *         Tiffany Lin <tiffany.lin@mediatek.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
>  
>  #ifndef _MTK_VCODEC_DRV_H_
>  #define _MTK_VCODEC_DRV_H_
> diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
> index 2d5a61c06287..32d8ce9c8f6e 100644
> --- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
> +++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
> @@ -1,17 +1,17 @@
>  /*
> -* Copyright (c) 2016 MediaTek Inc.
> -* Author: PC Chen <pc.chen@mediatek.com>
> -*         Tiffany Lin <tiffany.lin@mediatek.com>
> -*
> -* This program is free software; you can redistribute it and/or modify
> -* it under the terms of the GNU General Public License version 2 as
> -* published by the Free Software Foundation.
> -*
> -* This program is distributed in the hope that it will be useful,
> -* but WITHOUT ANY WARRANTY; without even the implied warranty of
> -* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -* GNU General Public License for more details.
> -*/
> + * Copyright (c) 2016 MediaTek Inc.
> + * Author: PC Chen <pc.chen@mediatek.com>
> + *         Tiffany Lin <tiffany.lin@mediatek.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
>  
>  #include <media/v4l2-event.h>
>  #include <media/v4l2-mem2mem.h>
> diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
> index 39375b8ea27c..2fdae50173be 100644
> --- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
> +++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
> @@ -1,16 +1,16 @@
>  /*
> -* Copyright (c) 2016 MediaTek Inc.
> -* Author: Tiffany Lin <tiffany.lin@mediatek.com>
> -*
> -* This program is free software; you can redistribute it and/or modify
> -* it under the terms of the GNU General Public License version 2 as
> -* published by the Free Software Foundation.
> -*
> -* This program is distributed in the hope that it will be useful,
> -* but WITHOUT ANY WARRANTY; without even the implied warranty of
> -* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -* GNU General Public License for more details.
> -*/
> + * Copyright (c) 2016 MediaTek Inc.
> + * Author: Tiffany Lin <tiffany.lin@mediatek.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
>  
>  #include <linux/clk.h>
>  #include <linux/of_address.h>
> 


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
