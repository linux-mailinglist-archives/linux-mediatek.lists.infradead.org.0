Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD3D2C2CB
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 11:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xvLdO6Q5stgzOKTKE4RgWyHuQ/AFhjzlbcmOIBaggQ=; b=dY49UE7cBRQ2Gr
	lT2AmR1hOZxsE6WLA4ZA8egwCUgezIL4GeyUQYaOrj3rPAEmnIh7ZzU3jzwdEmM3SOx27gX8ZzYzd
	KRkC0hAHucqdARTqOP7oWBx1j2STv5HX+nNEN5uQ+WPxtnYiHtNiohwqIhefl1lIxwRVSQCDRPOJ7
	xYImkuIoGWYN+SwRFqQw8fz9sXBdCni6jlEoP0qZwb2KkZQ0gKPLCpmeTWSUREZG/oSJSSSPLbDMl
	TaRWNL25xDXN6Q8UKL+8MnNUKqT4EYX/NrW2cfFSh3mQclqrgoNC0dHqTpAcLYTR2+nX56smKNDsa
	QOzMBQOvdQFejJvM/Rnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVY7X-0001h0-LA; Tue, 28 May 2019 09:10:11 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVY7U-0001Rf-PE
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 09:10:10 +0000
Received: from [IPv6:2001:983:e9a7:1:10b2:2e62:e4b1:bd13]
 ([IPv6:2001:983:e9a7:1:10b2:2e62:e4b1:bd13])
 by smtp-cloud9.xs4all.net with ESMTPA
 id VY7Shh4qrsDWyVY7ThcOs5; Tue, 28 May 2019 11:10:07 +0200
Subject: Re: [RFCv1 07/12] media: mtk-vcodec: abstract firmware interface
To: Alexandre Courbot <acourbot@chromium.org>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20190528055635.12109-1-acourbot@chromium.org>
 <20190528055635.12109-8-acourbot@chromium.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <1bfc3919-d0a4-c156-a23d-694d3ba65671@xs4all.nl>
Date: Tue, 28 May 2019 11:10:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190528055635.12109-8-acourbot@chromium.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfNkRnE/7I0BZw7uSTLp8FZTB9WWwwbpb2C4XssM5KjCBgwwV3fr9sMUhp31q/0UPOS5H9lvdRyki0rMBg95fR8fkQ4vo31dEC9c528yzxWShvwhRtXBV
 p90HGPEnXP+gFOOWrWShlhC59D4c6Ooujuzz263ol0T+hwnBTUkkkBxu6IhG6z/FGshx+8bSXq9aariXYOjknSGbBtXuhZTcRMyx7GqAWl5JH5ygt1jmRMSY
 R3GlPYLWhJGju1U9SWvbzA/pVTjZnoCQ5MiMfzBjzzKr2RQ/ZJJPiE5T6npnejVic/c7HCYb2FmwiYSMmiD69sKdcLTGW7pIODqFh0VlLb+eRUcYUIbyxO9H
 fuker8EHSkwLJs2VuDwQX1QouKrDzqEHu2wQIvdfPxDiCyRN3b4VMdz974cZ0a17vkM4RfD53JFHh3zlPd0G/+ThLZbuapUcIN8bPhryGuMedHAHPeifvvyr
 Mp9Nnqj7FlDwopYULu6qipUY0TZV2qxkPfkAfz5K4FjstddUmZmmXbhJq6hvqSxX+V9DC5ut7nDDE+as
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_021008_980848_9B2EF6DC 
X-CRM114-Status: GOOD (  11.61  )
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
> MT8183's codec firwmare is run by a different remote processor from
> MT8173. While the firmware interface is basically the same, the way to
> invoke it differs. Abstract all firmware calls under a layer that will
> allow us to handle both firmware types transparently.
> 
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> Co-developed-by: Alexandre Courbot <acourbot@chromium.org>
> Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
> [acourbot: refactor, cleanup and split]
> ---
>  drivers/media/platform/mtk-vcodec/Makefile    |   4 +-
>  .../platform/mtk-vcodec/mtk_vcodec_dec_drv.c  |  47 ++----
>  .../platform/mtk-vcodec/mtk_vcodec_dec_pm.c   |   1 -
>  .../platform/mtk-vcodec/mtk_vcodec_drv.h      |   5 +-
>  .../platform/mtk-vcodec/mtk_vcodec_enc_drv.c  |  46 ++---
>  .../platform/mtk-vcodec/mtk_vcodec_enc_pm.c   |   2 -
>  .../media/platform/mtk-vcodec/mtk_vcodec_fw.c | 157 ++++++++++++++++++
>  .../media/platform/mtk-vcodec/mtk_vcodec_fw.h |  36 ++++
>  .../platform/mtk-vcodec/mtk_vcodec_util.c     |   1 -
>  .../platform/mtk-vcodec/vdec/vdec_h264_if.c   |   1 -
>  .../platform/mtk-vcodec/vdec/vdec_vp8_if.c    |   1 -
>  .../platform/mtk-vcodec/vdec/vdec_vp9_if.c    |   1 -
>  .../media/platform/mtk-vcodec/vdec_drv_base.h |   2 -
>  .../media/platform/mtk-vcodec/vdec_drv_if.c   |   1 -
>  .../media/platform/mtk-vcodec/vdec_vpu_if.c   |  10 +-
>  .../media/platform/mtk-vcodec/vdec_vpu_if.h   |  11 +-
>  .../platform/mtk-vcodec/venc/venc_h264_if.c   |  15 +-
>  .../platform/mtk-vcodec/venc/venc_vp8_if.c    |   8 +-
>  .../media/platform/mtk-vcodec/venc_drv_if.c   |   1 -
>  .../media/platform/mtk-vcodec/venc_vpu_if.c   |  15 +-
>  .../media/platform/mtk-vcodec/venc_vpu_if.h   |   5 +-
>  21 files changed, 270 insertions(+), 100 deletions(-)
>  create mode 100644 drivers/media/platform/mtk-vcodec/mtk_vcodec_fw.c
>  create mode 100644 drivers/media/platform/mtk-vcodec/mtk_vcodec_fw.h
> 

<snip>

> +EXPORT_SYMBOL(mtk_vcodec_fw_select);
> +
> +int mtk_vcodec_fw_load_firmware(struct mtk_vcodec_fw *fw)
> +{
> +	return fw->ops->load_firmware(fw);
> +}
> +EXPORT_SYMBOL(mtk_vcodec_fw_load_firmware);
> +
> +unsigned int mtk_vcodec_fw_get_vdec_capa(struct mtk_vcodec_fw *fw)
> +{
> +	return fw->ops->get_vdec_capa(fw);
> +}
> +EXPORT_SYMBOL(mtk_vcodec_fw_get_vdec_capa);
> +
> +unsigned int mtk_vcodec_fw_get_venc_capa(struct mtk_vcodec_fw *fw)
> +{
> +	return fw->ops->get_venc_capa(fw);
> +}
> +EXPORT_SYMBOL(mtk_vcodec_fw_get_venc_capa);
> +
> +void *mtk_vcodec_fw_map_dm_addr(struct mtk_vcodec_fw *fw, u32 mem_addr)
> +{
> +	return fw->ops->map_dm_addr(fw, mem_addr);
> +}
> +EXPORT_SYMBOL(mtk_vcodec_fw_map_dm_addr);
> +
> +int mtk_vcodec_fw_ipi_register(struct mtk_vcodec_fw *fw, int id,
> +	mtk_vcodec_ipi_handler handler, const char *name, void *priv)
> +{
> +	return fw->ops->ipi_register(fw, id, handler, name, priv);
> +}
> +EXPORT_SYMBOL(mtk_vcodec_fw_ipi_register);

I recommend using EXPORT_SYMBOL_GPL instead.

Regards,

	Hans

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
