Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA6C5B462
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jul 2019 07:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrMtUaYN2eJSbJ3iRlaBT1L29Frnsu4bi+ETCwV1tMs=; b=NSzzFhyRf48xJp
	wI7M82VF6vXTFM0a/Gn7JX5cudMQhYOAj/96VUrEKG3Tv8Nl5KoPJl+tNFMNmDR7+kuCD1SJjyUat
	H2vB24ULa8ghIa1WxNLcAO5XJHmqWxLKN9tji+O4dCFfZE8fdAtLSA5WOKQVCwm02CcpujTkBHD6/
	waxWJApPnBGhRZRtPpfPuLTiypIqfhnOZbxJXQOVNvPjnRIrtJGQS1OyPe90qUDJNVWSgVpJPdpbe
	zU9Yl0i2rAfk41Jp9KQQl89jW61ZyN0Ef1gwZpQoe9nXADNXPrka0jWuGl26hnemNnifB4juslNZi
	l3ng/YZg6CooKD67l33A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhpDi-0001VX-IX; Mon, 01 Jul 2019 05:51:18 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhpDQ-0001Kv-NS
 for linux-mediatek@lists.infradead.org; Mon, 01 Jul 2019 05:51:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so6730419plt.1
 for <linux-mediatek@lists.infradead.org>; Sun, 30 Jun 2019 22:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=A/bf03g2B0LFEMWFVuMqS52+scFCs4jGeSMIYZD/Yek=;
 b=Iix6DCQErETbgO5HQHrWqtCbZiPADvJ2Zlncl2KylCIk8Cg93HCSVs81Bx75VxNm5Q
 PP5sfNRFhvD+AqwURTKNnqfnR9cQYYSAPtqGAvDt1ETLY2Ewu0DYvu02sMU3MDbATy+n
 pzDjHcXKRMZtzEjlxpPg31D7lH+UlA7Cy7fvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A/bf03g2B0LFEMWFVuMqS52+scFCs4jGeSMIYZD/Yek=;
 b=o2xKG/S23y7Feo89lDHlpZWr9UWhTvQqusw9/DP8uFIhetsW8JIrsnt3yjRqh/6dYi
 TzTtVgE+7OzJuTEPYIf3vpq7cGK3SdCPCGzAOI1MWRnYggjZdKQsf/KjyFlcRaaUcT50
 auRZkR8yDDC322qyRf6p/MZtBbQloOiNE9zwIeCjdloXrr696Owa1wJPXjfVPi6Ocqcc
 0k+cS3k/QL2ui77V2RxD1Ziem+CgAYMpl3zKDDWvLZflXeIpPEYR/srRhtbHPTD8Zgwv
 jaxAsBTOOvL5mEjWYgoLn75hwBBGo6sihvRJ+PSRcTNcUyWXegLykGAdgpxAnZgoOYHN
 BbzQ==
X-Gm-Message-State: APjAAAW6fNm8JTMDXC1V6NsCERo8YqWbQk2TOb451guMpZ/6r/GNlW9k
 77KcN0HTQYaW0tm9raCql+b/Lw==
X-Google-Smtp-Source: APXvYqzC+Op6oAeeU9AgUZ7d0ASyA+LyLyhKBUxNaOMz6Sx06gGxqMdsPUz/BBlKvF7i0lYhlvijjA==
X-Received: by 2002:a17:902:9896:: with SMTP id
 s22mr15507737plp.4.1561960259568; 
 Sun, 30 Jun 2019 22:50:59 -0700 (PDT)
Received: from chromium.org ([2401:fa00:4:4:6d27:f13:a0fa:d4b6])
 by smtp.gmail.com with ESMTPSA id m11sm8243540pjv.21.2019.06.30.22.50.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 22:50:58 -0700 (PDT)
Date: Mon, 1 Jul 2019 14:50:53 +0900
From: Tomasz Figa <tfiga@chromium.org>
To: Jungo Lin <jungo.lin@mediatek.com>
Subject: Re: [RFC,v3 5/9] media: platform: Add Mediatek ISP P1 V4L2 control
Message-ID: <20190701055053.GA137710@chromium.org>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-6-jungo.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611035344.29814-6-jungo.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_225100_759741_C29045B3 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, sean.cheng@mediatek.com,
 frederic.chen@mediatek.com, rynn.wu@mediatek.com, srv_heupstream@mediatek.com,
 robh@kernel.org, ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 hverkuil@xs4all.nl, ddavenport@chromium.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, laurent.pinchart@ideasonboard.com,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Jungo,

On Tue, Jun 11, 2019 at 11:53:40AM +0800, Jungo Lin wrote:
> Reserved Mediatek ISP P1 V4L2 control number with 16.
> Moreover, add two V4L2 controls for ISP P1 user space
> usage.
> 
> 1. V4L2_CID_MTK_GET_BIN_INFO
> - Provide the image output width & height in case
> camera binning mode is enabled.

Could you explain with a bit more details what these binned width and height
would mean? How would they relate to the video CAPTURE node width and height?
Isn't this something that should be rather exposed as an appropriate
selection rectangle, instead of custom controls?

> 
> 2. V4L2_CID_MTK_RAW_PATH
> - Export the path control of the main stream to user space.
> One is pure raw and the other is processing raw.
> The default value is 0 which outputs the pure raw bayer image
> from sesnor, without image processing in ISP HW.

Is it just effectively a full processing bypass? The driver seems to only
update the related configuration when the streaming starts. Can it be
controlled per-frame?

Generally this sounds more like something that should be modelled using the
media topology, similar to the example below.

/----------------\   /-------------------\   /--------------\
|                |---|                   |   |              |
| Capture Subdev |   | Processing Subdev |-o-| CAPTURE node |
|                |-\ |                   | | |              |
\----------------/ | \-------------------/ | \--------------/
                   |                       |
                   \-----------------------/

Then the userspace can select whether it wants the image from the capture
interface directly or procesed by the ISP by configuring the media links
appropriately.

The current limitation of this model is that it can't be easily configured
per-frame, as media configurations are not included in the requests yet.

[snip]

> +static int handle_ctrl_get_bin_info(struct v4l2_ctrl *ctrl, int is_width)
> +{
> +	struct mtk_cam_dev *cam_dev = ctrl->priv;
> +	struct v4l2_format *fmt;
> +
> +	fmt = &cam_dev->vdev_nodes[MTK_CAM_P1_MAIN_STREAM_OUT].vdev_fmt;
> +
> +	dev_dbg(&cam_dev->pdev->dev, "Get bin info w*h:%d*%d is_width:%d",
> +		fmt->fmt.pix_mp.width, fmt->fmt.pix_mp.height, is_width);
> +
> +	if (is_width)
> +		ctrl->val = fmt->fmt.pix_mp.width;
> +	else
> +		ctrl->val = fmt->fmt.pix_mp.height;

This seems to contradict to what the comment in the header says, because it just
always returns the video node format and doesn't seem to care about whether
binning is enabled or not.

> +
> +	return 0;
> +}
> +
> +static int handle_ctrl_get_process_raw(struct v4l2_ctrl *ctrl)
> +{
> +	struct mtk_cam_dev *cam_dev = ctrl->priv;
> +	struct isp_p1_device *p1_dev = get_p1_device(&cam_dev->pdev->dev);
> +
> +	ctrl->val = (p1_dev->isp_ctx.isp_raw_path == ISP_PROCESS_RAW_PATH);
> +
> +	dev_dbg(&cam_dev->pdev->dev, "Get process raw:%d", ctrl->val);
> +
> +	return 0;
> +}
> +
> +static int handle_ctrl_set_process_raw(struct v4l2_ctrl *ctrl)
> +{
> +	struct mtk_cam_dev *cam_dev = ctrl->priv;
> +	struct isp_p1_device *p1_dev = get_p1_device(&cam_dev->pdev->dev);
> +
> +	p1_dev->isp_ctx.isp_raw_path = (ctrl->val) ?
> +		ISP_PROCESS_RAW_PATH : ISP_PURE_RAW_PATH;
> +	dev_dbg(&cam_dev->pdev->dev, "Set process raw:%d", ctrl->val);
> +	return 0;
> +}
> +
> +static int mtk_cam_dev_g_ctrl(struct v4l2_ctrl *ctrl)

This is g_volatile_ctrl not, g_ctrl.

> +{
> +	switch (ctrl->id) {
> +	case V4L2_CID_MTK_PROCESSING_RAW:
> +		handle_ctrl_get_process_raw(ctrl);
> +		break;

No need to provide getters for non-volatile controls. The
framework manages them.

> +	case V4L2_CID_MTK_GET_BIN_WIDTH:
> +		handle_ctrl_get_bin_info(ctrl, 1);
> +		break;
> +	case V4L2_CID_MTK_GET_BIN_HEIGTH:
> +		handle_ctrl_get_bin_info(ctrl, 0);

It's trivial to get the value, so there isn't much benefit in having a
function to do so, especially if one needs something like a is_width
argument that further complicates the code.

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
> +	case V4L2_CID_MTK_PROCESSING_RAW:
> +		return handle_ctrl_set_process_raw(ctrl);

Same as above. The operation is too trivial to deserve a function.

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
> +	.id = V4L2_CID_MTK_PROCESSING_RAW,
> +	.name = "MTK CAM PROCESSING RAW",
> +	.type = V4L2_CTRL_TYPE_BOOLEAN,
> +	.min = 0,
> +	.max = 1,
> +	.step = 1,
> +	.def = 1,
> +	},
> +	{
> +	.ops = &mtk_cam_dev_ctrl_ops,
> +	.id = V4L2_CID_MTK_GET_BIN_WIDTH,
> +	.name = "MTK CAM GET BIN WIDTH",
> +	.type = V4L2_CTRL_TYPE_INTEGER,
> +	.min = IMG_MIN_WIDTH,
> +	.max = IMG_MAX_WIDTH,
> +	.step = 1,
> +	.def = IMG_MAX_WIDTH,
> +	.flags = V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_VOLATILE,
> +	},
> +	{
> +	.ops = &mtk_cam_dev_ctrl_ops,
> +	.id = V4L2_CID_MTK_GET_BIN_HEIGTH,
> +	.name = "MTK CAM GET BIN HEIGHT",
> +	.type = V4L2_CTRL_TYPE_INTEGER,
> +	.min = IMG_MIN_HEIGHT,
> +	.max = IMG_MAX_HEIGHT,
> +	.step = 1,
> +	.def = IMG_MAX_HEIGHT,
> +	.flags = V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_VOLATILE,
> +	},
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

This should be checked at the end, after all the controls are added.

Best regards,
Tomasz


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
