Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D331B20E
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 May 2019 10:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mb+DSY02vG8XS0XAUwmNpJum+jUkJh2BxROB3JwYsr0=; b=YvWhbZ4w2JeBgB
	Pvug19OfgUL4w0tT7NCHz3Rscr6SQrfRayFVBRXN7iLWZSOAUgTQrfExqBf9XJ8ktqW0YgozOIA7n
	HkhefBNE5kiM0SzlTc8p9p4Awm1P0r1NNdp1Cg62QR/nfAP86OhfUnHfnoQJ2KHeouPwDvKcwpFDr
	iGsKZHwffkFojXWgiiK1FsX636F9P1TyeA9px7VkC2P98a2GmMGq70Kdn8ey62fExAW19MT2Lg06R
	BmYr14Ss8wSXXUEnMuHgqVze9DfNWluOUg307ZpsinoA6O3TPUGDGWp981E/RDxSlJ/nnsMFJE0Lj
	5JZJHnjtdO3n/JXcZsww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ6bu-00016d-VE; Mon, 13 May 2019 08:47:02 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ6bl-0000y7-3N; Mon, 13 May 2019 08:46:54 +0000
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud8.xs4all.net with ESMTPA
 id Q6behi77h0YQeQ6bhhcPOr; Mon, 13 May 2019 10:46:50 +0200
Subject: Re: [RFC,V2,07/11] media: platform: Add Mediatek ISP P1 private
 control
To: Jungo Lin <jungo.lin@mediatek.com>, tfiga@chromium.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 laurent.pinchart+renesas@ideasonboard.com, matthias.bgg@gmail.com,
 mchehab@kernel.org
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20190510015755.51495-8-jungo.lin@mediatek.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <49a8ba54-aba4-1915-6732-987a58e8bd3c@xs4all.nl>
Date: Mon, 13 May 2019 10:46:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510015755.51495-8-jungo.lin@mediatek.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfHHaXdpb4HjyCwpK6c8zczVZ9MHjapU5asEU7huYl0qSECOmB85qXrDeDHowpRt4u3P0xEjlY7Y1A1+PA0IagAGRVP1SLiu80L98kqyxbGDK2TYNoFw6
 hrElQcH188T59b6hb15/+nsjoi6kLDGZh0AdEhZkYeXxEM6CUsQwY+Ppow3w83QCuc3w+CRflJDB4ZsnnA5I1NdEWKTkYQwyVxLg8qIezdYZODjP9aORLHT5
 VjXnuQDnPf3gf99pJbwbwVrOmzHhLNQrDpR1Z7MR1PYe68CNlWerq7DCt0XVLtVw9Puq8cMToczwrxWmwrKkLcbNHvNzspaES5THP3MxYLls3rnJSeWcXjgj
 +9mt8tFK57c4bfly9CTW1gegERQpXgLnjpavo4h+Bu1iI9gp9akZ1Om9Y4H1Kw1V4IjfQ5i8bPqZqoYJJrY/V4NjjjmNnEME9t5laUHD3tWnKtut59t5Y6ac
 sZc5CDHo2Bvhk9toN9sbmnZQ6ApWoPzXcy4pkIDgKMhrNIe9DJSURtQJJUcTo/YOqadEJCYljHvJ3ciTIoBkzIAi611NRlkUsKB1in+bW85kffYO7XxGrek5
 AtaVUVsOsqH4UMVTeOGuyai0lR+/bTx+Le3GfnySkI2XX2jdbaIXsG4RycVCE7Ocxj2SjJvw06Dh7c3fH42Sf19eEjCP0OMs1Nlo/aUknTkS3jyZlHp7Nf2B
 HZZjUQ6OaF64TuJ0XlVHGSjdcfBkTOc93+KPtTrqFPW3klpruLg9Jko+Ck+jGfLtbw20rvGAbCJGgJYgezpCv1w4USedi5jNWUrIAo3+TjrQ1hBHtw6VdbbI
 NfYyymwLLluKVm+RYynNuDlMqVM0AI6X8Iw3rAvQux8hcAX7+u86zzxOOkd3U4qacUXHAWnnTfngmQhe8f5zeuPSZe9TuIgeG2O7AweT9ob8B/NVmuAwfB0/
 LVYhChQXwsVVemJSsTrNuL7ulKhiZCiNZvVlMpN19GfBnnxsiliSyZjld4fG8/NVBKbyaptW4qv9V42fklcqvtc/xU4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_014653_304524_849B11EF 
X-CRM114-Status: GOOD (  26.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com, frankie.chiu@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 seraph.huang@mediatek.com, zwisler@chromium.org, christie.yu@mediatek.com,
 frederic.chen@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 5/10/19 3:58 AM, Jungo Lin wrote:
> Reserved Mediatek ISP P1 private control number with 16.
> Moreover, add two private controls for ISP P1 user space
> usage.
> 
> 1. V4L2_CID_PRIVATE_GET_BIN_INFO
> - Provide the image output width & height in case
> camera binning mode is enabled.
> 
> 2. V4L2_CID_PRIVATE_RAW_PATH
> - Export the path control of the main stream to user space.
> One is pure raw and the other is processing raw.
> The default image path is pure raw.
> 
> Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> ---
>  .../mtk-isp/isp_50/cam/mtk_cam-ctrl.c         | 133 ++++++++++++++++++
>  .../mtk-isp/isp_50/cam/mtk_cam-ctrl.h         |  32 +++++
>  include/uapi/linux/v4l2-controls.h            |   4 +
>  3 files changed, 169 insertions(+)
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h
> 
> diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c
> new file mode 100644
> index 000000000000..520adbe367ed
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c
> @@ -0,0 +1,133 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018 MediaTek Inc.
> + * Author: Ryan Yu <ryan.yu@mediatek.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + */

Don't combine both SPDX and a license text. Just use the SPDX.

I see it being used elsewhere as well, so I won't repeat myself.

> +
> +#include <linux/device.h>
> +#include <linux/platform_device.h>
> +#include "mtk_cam-dev.h"
> +#include "mtk_cam-ctrl.h"
> +#include "mtk_cam.h"
> +
> +static int handle_ctrl_get_bin_info(struct v4l2_ctrl *ctrl)
> +{
> +	struct mtk_cam_dev *cam_dev = ctrl->priv;
> +	const unsigned int idx = MTK_CAM_P1_MAIN_STREAM_OUT;
> +	struct v4l2_format *imgo_fmt = &cam_dev->mem2mem2_nodes[idx].vdev_fmt;
> +	unsigned int width, height;
> +
> +	width = imgo_fmt->fmt.pix_mp.width;
> +	height = imgo_fmt->fmt.pix_mp.height;
> +
> +	dev_dbg(&cam_dev->pdev->dev, "Get bin info w*h:%d*%d",
> +		width, height);
> +
> +	ctrl->val = (width << 16) | height;
> +
> +	return 0;
> +}
> +
> +static int handle_ctrl_get_raw_path(struct v4l2_ctrl *ctrl)
> +{
> +	struct mtk_cam_dev *cam_dev = ctrl->priv;
> +	struct isp_p1_device *p1_dev = get_p1_device(&cam_dev->pdev->dev);
> +
> +	ctrl->val = p1_dev->isp_ctx.isp_raw_path;
> +
> +	dev_dbg(&cam_dev->pdev->dev, "Get raw path:%d", ctrl->val);
> +
> +	return 0;
> +}
> +
> +static int handle_ctrl_set_raw_path(struct v4l2_ctrl *ctrl)
> +{
> +	struct mtk_cam_dev *cam_dev = ctrl->priv;
> +	struct isp_p1_device *p1_dev = get_p1_device(&cam_dev->pdev->dev);
> +
> +	p1_dev->isp_ctx.isp_raw_path = ctrl->val;
> +	dev_dbg(&cam_dev->pdev->dev, "Set raw path:%d", ctrl->val);
> +	return 0;
> +}
> +
> +static int mtk_cam_dev_g_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	switch (ctrl->id) {
> +	case V4L2_CID_PRIVATE_GET_BIN_INFO:
> +		handle_ctrl_get_bin_info(ctrl);
> +		break;
> +	case V4L2_CID_PRIVATE_RAW_PATH:
> +		handle_ctrl_get_raw_path(ctrl);
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +	return 0;
> +}
> +
> +static int mtk_cam_dev_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	switch (ctrl->id) {
> +	case V4L2_CID_PRIVATE_RAW_PATH:
> +		return handle_ctrl_set_raw_path(ctrl);
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static const struct v4l2_ctrl_ops mtk_cam_dev_ctrl_ops = {
> +	.g_volatile_ctrl = mtk_cam_dev_g_ctrl,
> +	.s_ctrl = mtk_cam_dev_s_ctrl,
> +};
> +
> +struct v4l2_ctrl_config mtk_cam_controls[] = {
> +	{
> +	.ops = &mtk_cam_dev_ctrl_ops,
> +	.id = V4L2_CID_PRIVATE_GET_BIN_INFO,

Don't use "PRIVATE" in the name. I'd replace that with MTK to indicate
that this is mediatek-specific. Same for the next control below.

> +	.name = "MTK CAM GET BIN INFO",
> +	.type = V4L2_CTRL_TYPE_INTEGER,
> +	.min = (IMG_MIN_WIDTH << 16) | IMG_MIN_HEIGHT,
> +	.max = (IMG_MAX_WIDTH << 16) | IMG_MAX_HEIGHT,
> +	.step = 1,
> +	.def = (IMG_MAX_WIDTH << 16) | IMG_MAX_HEIGHT,
> +	.flags = V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_VOLATILE,

Don't mix width and height. I recommend splitting this into two controls.

Sakari might have an opinion on this as well.

> +	},
> +	{
> +	.ops = &mtk_cam_dev_ctrl_ops,
> +	.id = V4L2_CID_PRIVATE_RAW_PATH,
> +	.name = "MTK CAM RAW PATH",
> +	.type = V4L2_CTRL_TYPE_BOOLEAN,
> +	.min = 0,
> +	.max = 1,
> +	.step = 1,
> +	.def = 1,
> +	},

RAW_PATH is a very vague name. If it is 0, then it is pure raw, and if it
is 1, then it is 'processing raw'? If so, call it "Processing Raw".

Although you have to describe in the header or here what that means.

Private controls should be well documented.

> +};
> +
> +int mtk_cam_ctrl_init(struct mtk_cam_dev *cam_dev,
> +		      struct v4l2_ctrl_handler *hdl)
> +{
> +	unsigned int i;
> +
> +	/* Initialized HW controls, allow V4L2_CID_MTK_CAM_MAX ctrls */
> +	v4l2_ctrl_handler_init(hdl, V4L2_CID_MTK_CAM_MAX);
> +	if (hdl->error) {
> +		v4l2_ctrl_handler_free(hdl);
> +		return hdl->error;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(mtk_cam_controls); i++)
> +		v4l2_ctrl_new_custom(hdl, &mtk_cam_controls[i], cam_dev);
> +
> +	dev_dbg(&cam_dev->pdev->dev, "%s done", __func__);
> +	return 0;
> +}
> diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h
> new file mode 100644
> index 000000000000..74a6538c81ac
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h
> @@ -0,0 +1,32 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2018 MediaTek Inc.
> + * Author: Ryan Yu <ryan.yu@mediatek.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef __MTK_CAM_CTRL_H__
> +#define __MTK_CAM_CTRL_H__
> +
> +#include <media/v4l2-ctrls.h>
> +
> +#define V4L2_CID_MTK_CAM_PRIVATE_CAM  V4L2_CID_USER_MTK_CAM_BASE
> +#define V4L2_CID_PRIVATE_GET_BIN_INFO \
> +	(V4L2_CID_MTK_CAM_PRIVATE_CAM + 1)
> +#define V4L2_CID_PRIVATE_RAW_PATH \
> +	(V4L2_CID_MTK_CAM_PRIVATE_CAM + 2)

These last two defines can be on a single line.

They need to be documented in the header.

> +
> +#define V4L2_CID_MTK_CAM_MAX	16
> +
> +int mtk_cam_ctrl_init(struct mtk_cam_dev *cam_dev,
> +		      struct v4l2_ctrl_handler *hdl);
> +
> +#endif /* __MTK_CAM_CTRL_H__ */
> diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
> index 06479f2fb3ae..cbe8f5f7782b 100644
> --- a/include/uapi/linux/v4l2-controls.h
> +++ b/include/uapi/linux/v4l2-controls.h
> @@ -192,6 +192,10 @@ enum v4l2_colorfx {
>   * We reserve 16 controls for this driver. */
>  #define V4L2_CID_USER_IMX_BASE			(V4L2_CID_USER_BASE + 0x10b0)
>  
> +/* The base for the mediatek ISP Pass 1 driver controls */
> +/* We reserve 16 controls for this driver. */
> +#define V4L2_CID_USER_MTK_CAM_BASE		(V4L2_CID_USER_BASE + 0x10c0)
> +
>  /* MPEG-class control IDs */
>  /* The MPEG controls are applicable to all codec controls
>   * and the 'MPEG' part of the define is historical */
> 

Regards,

	Hans

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
