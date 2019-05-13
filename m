Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7901B2D0
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 May 2019 11:25:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJy8NgnuuuaCwYx5aqUnhLXwNttOEdw++WCVZu9k62Y=; b=IkEitw6+6cNcts
	g5M/VbBdpA7U5QdPWnkYnooRDdU4dCxOB+JWnRlWP7I16huYwinld7B+Zk7iQBIAaZPADh1zHVM1Q
	JAipuFEcviPbKsor5ZFtPuH9Fahbr8FHdhUjOS5tTDt9xEfIdC7JEP0kLDsXqXhiB0uWJ9rfl/+tq
	w99uUj0ZuniJwMAUHviucOBiaH0ulKXgUu2Xe2e2MvWIkQ6L1FSqnhLZYx2NDm18J/4Q8uRzF+lTP
	fVXr/JwCIAXS3Il2ERZSq6YPCNTdWduUc4bRmntz4VvKN6h0GE3IZY9kveY9tsN8ISjkautHKLJjX
	4MsOYbC6aiFaMyxlt5ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ7Ci-0000YZ-SI; Mon, 13 May 2019 09:25:04 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ7CV-0000Q5-SZ; Mon, 13 May 2019 09:24:53 +0000
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud8.xs4all.net with ESMTPA
 id Q7COhiHa00YQeQ7CRhcWle; Mon, 13 May 2019 11:24:48 +0200
Subject: Re: [PATCH v2 13/15] [media] mtk-mipicsi: add the function for
 Get/Set PARM for application
To: Stu Hsieh <stu.hsieh@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
References: <1555407015-18130-1-git-send-email-stu.hsieh@mediatek.com>
 <1555407015-18130-14-git-send-email-stu.hsieh@mediatek.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <8dcbaa14-29bb-8469-fc36-82e34df81737@xs4all.nl>
Date: Mon, 13 May 2019 11:24:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1555407015-18130-14-git-send-email-stu.hsieh@mediatek.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCfMFdvufpYlAoVkC6/FNWW97drMNqs9zzMyTIveUsIjoRhTAZz6jCYP+N8X20c09w4lo8FUspQkD+2oPhGYQTZzu2WEOh90nYKhmU2CmuyX13+n5SQv
 NtTtQ9ZiNK3Y7OWRJ14rFaq/zJtplNwHlvOGFMWE4ZQnbgMLmavgsMicqnqpWIz2uWzArRDsFKFNbDURDhXxN0TA5+Xhvk64qcRfTazx4EC409QcFbmxSMF6
 j2HyUMdR4qhn7uSi+aO5gW40JlUQKs7avOGmfq0+NLiZVjoYJ0nP9Oc/rlwfjmCC0aIHDvGfhKGoJq/zvYMucPHM1lg2Lhlmb5eQE6o1BonMkhsfzcdd8OtT
 GJVYq7W71fFh3Ysj4zzDuHbDB+RitRSZLvtBChQ2afHKdB64JHAgKxjv2XaGBgHkiD9GPYeDey6zwfPh1JsBhMBghUtrHXso+Ao5vyfH+RRy1OXyX0UiwN+y
 haivmh+uBdjzm82CPSAbZA2doMljXSuT0mP+5r1piFnfZaNR8Q+o/CByF54fRcRL6i0K0lycDgoZeXJwAQIbCS7zyv7AFUX7tWX7ABnHAIpEsZNq+8735Neu
 Re1DepiL6jzJfYazFiwy865SDnmZgaW8JwSYCPO6US6aqw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_022452_086982_98C16D0E 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.21 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 4/16/19 11:30 AM, Stu Hsieh wrote:
> This patch add the function for Get/Set PARM for application.
> 
> Application can get the information about number of link.
> 
> Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
> ---
>  .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
> index 5e4028d0d5e1..5db9c68b0da9 100644
> --- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
> +++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
> @@ -346,6 +346,38 @@ static int get_subdev_link(const struct soc_camera_device *icd,
>  	return 0;
>  }
>  
> +static int mtk_mipicsi_get_parm(struct soc_camera_device *icd,
> +	struct v4l2_streamparm *a)
> +{
> +	unsigned int link = 0U;
> +	u8 link_reg_val = 0x0U;
> +	int ret = 0;
> +
> +	/*get camera link number*/
> +	ret = get_subdev_link(icd, &link, &link_reg_val);
> +	if (ret < 0)
> +		return ret;
> +
> +	a->parm.capture.timeperframe.numerator = 1;
> +	a->parm.capture.timeperframe.denominator = 30;
> +	a->parm.capture.reserved[0] = link_reg_val;
> +	a->parm.capture.reserved[1] = (u32)(icd->use_count);

No, no, don't use G/S_PARM for that. It's an awful API and other than
getting/setting the frame period it shouldn't be used for anything else.

I've CC-ed Sakari, he is the CSI specialist. I think some work was done
(or is in progress) regarding providing more CSI lane information.

> +	dev_info(icd->parent, "use count %d\n", icd->use_count);
> +
> +	return 0;
> +}
> +
> +static int mtk_mipicsi_set_param(struct soc_camera_device *icd,
> +	struct v4l2_streamparm *a)
> +{
> +	struct soc_camera_host *ici = to_soc_camera_host(icd->parent);
> +
> +	if (ici->ops->get_parm == NULL)
> +		return ici->ops->get_parm(icd, a);

This clearly was never tested since ici->ops->get_parm is NULL when
you call it. I'd drop this function altogether since there is no
point if you can make changes.

Regards,

	Hans

> +
> +	return 0;
> +}
> +
>  static u32 get_bytesperline(const u32 fmt, const u32 width)
>  {
>  	u32 bytesperline = 0;
> @@ -884,6 +916,8 @@ static struct soc_camera_host_ops mtk_soc_camera_host_ops = {
>  	.poll			= vb2_fop_poll,
>  	.querycap		= mtk_mipicsi_querycap,
>  	.set_bus_param		= mtk_mipicsi_set_bus_param,
> +	.get_parm		= mtk_mipicsi_get_parm,
> +	.set_parm		= mtk_mipicsi_set_param,
>  };
>  
>  static void mtk_mipicsi_ana_init(void __iomem *base)
> 


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
