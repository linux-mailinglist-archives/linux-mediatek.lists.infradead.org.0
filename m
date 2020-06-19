Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A1520026B
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jun 2020 09:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6xIa2clDgNf+xM5Cv7ZKL/v1GafIddG+NoyYAa+ero=; b=EgrRd3tMkT5Hvm
	dHu7iej8QCpIxyeCHqjJQ6KwKu4gRMb1rUme+jLteAPD4fQaOTmcusDe1aPoOg/EMzak+8YZKRro6
	dlLQW0mpJ+zNZsof3CNSly3OP6ohQOXe2MkWJ70mlHtMw3LGP3n04dnkNF5enLYzkWxA/Brvx8AZ3
	IW3wZ5PrUK4AzFGZZAv/DXzP89I+CZ7bvXVHvIjTI1IlaOjQ1yqmA5MXJk6FajPuQalwoWND7be+a
	LFZG6z0XYaKwDpbjtui7WcVmbP/y3+2dlqNEmtuA0apuTtG+J6AxZDG+TQ5UY7qJodku1aHYujxHO
	SOdqNpv806JR2DU+Jkqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmB5X-0001MF-4y; Fri, 19 Jun 2020 07:05:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmB5T-0001Li-Aq
 for linux-mediatek@lists.infradead.org; Fri, 19 Jun 2020 07:05:20 +0000
X-UUID: d3ceeb5aaf0449dba8334e455568e6c3-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=PCB8Qz7hOOk222bVQxjPpuUhXuN7LtCLPsnk9tCpO4M=; 
 b=u0VcAhR6xsyiieTIQPVcjxbHrxRLWu5wsq2BVbZwk9QtooTM2z+UaWu6ktDonHhO4E8hHvYt739v2xZmiikORHwCaVC30lt1aZsMSu5jVy74122596hMUHOMAh5FqYUN47oYmOfzrPmShJbjPHebuOXBQybOXyBEpCpnK80OJPw=;
X-UUID: d3ceeb5aaf0449dba8334e455568e6c3-20200618
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <tiffany.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1400906837; Thu, 18 Jun 2020 23:05:22 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 23:59:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 14:59:11 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 19 Jun 2020 14:59:12 +0800
Message-ID: <1592549952.23952.3.camel@mtksdaap41>
Subject: Re: [PATCH 07/10] media: mtk-vcodec: venc: remove redundant code
From: Tiffany Lin <tiffany.lin@mediatek.com>
To: Alexandre Courbot <acourbot@chromium.org>
Date: Fri, 19 Jun 2020 14:59:12 +0800
In-Reply-To: <20200520082723.96136-8-acourbot@chromium.org>
References: <20200520082723.96136-1-acourbot@chromium.org>
 <20200520082723.96136-8-acourbot@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7CCBF29C811E6FE35B861FCCF8B303D3C129E8FA0D985C43E6CCB2781D20C5BF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_000519_388263_59C5FE46 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Maoguang Meng <maoguang.meng@mediatek.com>,
 Rui Wang <gtk_ruiwang@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, Pi-Hsun
 Shih <pihsun@chromium.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2020-05-20 at 17:27 +0900, Alexandre Courbot wrote:
> vidioc_try_fmt() does clamp height and width when called on the OUTPUT
> queue, so clamping them prior to calling this function is redundant. Set
> the queue's parameters after calling vidioc_try_fmt() so we can use the
> values it computed.
> 

vidioc_try_fmt clamps height and width only when f->type ==
V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE

Does this cleanup pass v4l2 compliance test?
I recall compliance test will try different fmt and make sure driver
response enough information?


> Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
> ---
>  .../media/platform/mtk-vcodec/mtk_vcodec_enc.c   | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
> index 05743a745a11..f0af78f112db 100644
> --- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
> +++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
> @@ -449,7 +449,6 @@ static int vidioc_venc_s_fmt_out(struct file *file, void *priv,
>  	struct mtk_q_data *q_data;
>  	int ret, i;
>  	const struct mtk_video_fmt *fmt;
> -	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
>  
>  	vq = v4l2_m2m_get_vq(ctx->m2m_ctx, f->type);
>  	if (!vq) {
> @@ -474,20 +473,13 @@ static int vidioc_venc_s_fmt_out(struct file *file, void *priv,
>  		f->fmt.pix.pixelformat = fmt->fourcc;
>  	}
>  
> -	pix_fmt_mp->height = clamp(pix_fmt_mp->height,
> -				MTK_VENC_MIN_H,
> -				MTK_VENC_MAX_H);
> -	pix_fmt_mp->width = clamp(pix_fmt_mp->width,
> -				MTK_VENC_MIN_W,
> -				MTK_VENC_MAX_W);
> -
> -	q_data->visible_width = f->fmt.pix_mp.width;
> -	q_data->visible_height = f->fmt.pix_mp.height;
> -	q_data->fmt = fmt;
> -	ret = vidioc_try_fmt(f, q_data->fmt);
> +	ret = vidioc_try_fmt(f, fmt);
>  	if (ret)
>  		return ret;
>  
> +	q_data->fmt = fmt;
> +	q_data->visible_width = f->fmt.pix_mp.width;
> +	q_data->visible_height = f->fmt.pix_mp.height;
>  	q_data->coded_width = f->fmt.pix_mp.width;
>  	q_data->coded_height = f->fmt.pix_mp.height;
>  

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
