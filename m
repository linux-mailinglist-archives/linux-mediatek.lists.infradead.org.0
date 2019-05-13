Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 960C21B1F1
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 May 2019 10:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gc7zW03dtf6//c4wfPPPFjZVFttBilO+7UfFcKlLJrk=; b=e12HUqjMGEpMlw
	XoT6KWJebSheWk1Gsx/buKLwJJDfu5H2bjpQSit6FuSuf4CDL6/+BiLhzoSFnxdvtDUlijsQ4XsI6
	Sl1s0kvtBntwXRkZA9f5yfNka1aGq2OUGsloTAqKmhnq+lc1rgXaH4XGswW9oW7KgeLfcp4NSmchV
	ZKGf40jy9r/2TFWrr+oX8norX69hhej5t/aQ3iPlpnusYtlRZUMDKExlXDhpOpXZK/f7ICWWvw3tS
	8xFbt0x7Mv6HM98f8LPnK8jO6hxLNdiIlMbSwF7MkX6eYKUO4XWJBJH+6v+JlfSEdLKJMuoTjt79W
	fS4C1Z4HVSL06NvAEy3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ6R7-0004WE-A9; Mon, 13 May 2019 08:35:53 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ6Qx-0004Oe-DU; Mon, 13 May 2019 08:35:45 +0000
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud8.xs4all.net with ESMTPA
 id Q6Qqhi3v70YQeQ6QthcMlO; Mon, 13 May 2019 10:35:40 +0200
Subject: Re: [RFC, V2, 06/11] media: platform: Add Mediatek ISP P1 image & meta
 formats
To: Jungo Lin <jungo.lin@mediatek.com>, tfiga@chromium.org,
 hans.verkuil@cisco.com, laurent.pinchart+renesas@ideasonboard.com,
 matthias.bgg@gmail.com, mchehab@kernel.org
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20190510015755.51495-7-jungo.lin@mediatek.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <5aad30f8-04b0-e3f1-e1d1-def349fd2974@xs4all.nl>
Date: Mon, 13 May 2019 10:35:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510015755.51495-7-jungo.lin@mediatek.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfKjl+7SPK/J+2MK4GsV/OD790bNQlW19JYOKfRUnbuiA8rujxLk8gGYl+z3KpIf/mZfcUQ/QXXxXNi+TMglWyOToTnPvs7ewHyiHQXf59jZkHESwYFHd
 +kRKwIXD4pBeO2zEGaWNf5pCOec4H7+swakENaOzy9STrP2TYWRvf2Z7nYwgcZEg9ssHFHuq1TvD7jiuvBQLe2C7pnAC4BFC1z1o/fL9ZRWZTC3TXVol2QOg
 /7FGd8bmxXfnhblBakSB3UU8XqPptYatsjWyW1YSyEyul/ICFqpK9Lgrrga2MBBIasSWK79LzWno9j0ESHftme1vL+UgAqjX+J6fWV7rrV8HcuSiliGvPoun
 Hrm4JlLWWLfIpiFCtiiqJT0ZdjGhfJEYMLR03dhwbNsTGZuuL4RRPik7Vx6UiC2U/TVoh0ZG8MaDkJIQbzJmdOo/BSJVfGG7IyH4zUMuO0w5Tudw/oJRh3wc
 VzwPgDNunUEXRkSPJ7p2QTGpiTe4Wx+pg1RoHzvA1TTrsVDzXR06FeLKjaRLyT3npAThsSLK73PrrOiJhpF++5NdwGIde6H2s0AIdUWp7HQGFyYI+7UL9Wfj
 8z2zvjKgQXpDSHDKLE6/GRzxbnTXYzp87mfPb8op4Q039JR3Aq7q2bUllXlOW0oufratzQdO42yP6422pm4p0WnJcJHUlyQZDey8USGilYuFRBOT8MjC9b43
 R55LirBBHyyB78/4fvE2Me7YaZlzOSsaJgNLFSc0lF6SjkkDZpvqXs2FISvZnZJJ1P1VSe65numnGeQFo9zSeWwltuZhdNGLH0UVQQcGVD5o7uvm6W+yOKXe
 JkoIXL0Cpp+3Ew9bWZ6zEOP3XmKduNr7tA8r1BSfxvBWOPHmz+qU3lV5nVcQGrdGVmXs3P8nuAvbsJv3kH8HnjpXUkYgp3C/YbCCEOZNdg3IzelSfDwSyjke
 6od2ZhftMIiwnnH2TbOrnW4U+jR5sjc9vTs5tX+NYco145CEzzpJFAyOu0ViFXunWtr5KysxiGNoC06ICrWv9Qbz7eI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_013543_619331_CA66A20D 
X-CRM114-Status: GOOD (  13.06  )
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

On 5/10/19 3:57 AM, Jungo Lin wrote:
> Add packed/unpacked/full-g bayer format with 8/10/12/14 bit
> for image output. Add Pass 1 (P1) specific meta formats for
> parameter processing and 3A/other statistics.

These pixel formats will need to be documented in Documentation/media/uapi/v4l/pixfmt-<something>.rst.

> 
> Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> ---
>  include/uapi/linux/videodev2.h | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 1db220da3bcc..b79046d2d812 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -711,6 +711,20 @@ struct v4l2_pix_format {
>  #define V4L2_PIX_FMT_IPU3_SGRBG10	v4l2_fourcc('i', 'p', '3', 'G') /* IPU3 packed 10-bit GRBG bayer */
>  #define V4L2_PIX_FMT_IPU3_SRGGB10	v4l2_fourcc('i', 'p', '3', 'r') /* IPU3 packed 10-bit RGGB bayer */
>  
> +/* Vendor specific - Mediatek ISP compressed formats */
> +#define V4L2_PIX_FMT_MTISP_U8	v4l2_fourcc('M', 'T', 'U', '8') /* Unpacked bayer format, 16-bit */
> +#define V4L2_PIX_FMT_MTISP_U10  v4l2_fourcc('M', 'T', 'U', 'A') /* Unpacked bayer format, 16-bit */
> +#define V4L2_PIX_FMT_MTISP_U12  v4l2_fourcc('M', 'T', 'U', 'C') /* Unpacked bayer format, 16-bit */
> +#define V4L2_PIX_FMT_MTISP_U14  v4l2_fourcc('M', 'T', 'U', 'E') /* Unpacked bayer format, 16-bit */
> +#define V4L2_PIX_FMT_MTISP_B8	v4l2_fourcc('M', 'T', 'B', '8') /* Packed   bayer format,  8-bit */
> +#define V4L2_PIX_FMT_MTISP_B10  v4l2_fourcc('M', 'T', 'B', 'A') /* Packed   bayer format, 10-bit */
> +#define V4L2_PIX_FMT_MTISP_B12  v4l2_fourcc('M', 'T', 'B', 'C') /* Packed   bayer format, 12-bit */
> +#define V4L2_PIX_FMT_MTISP_B14  v4l2_fourcc('M', 'T', 'B', 'E') /* Packed   bayer format, 14-bit */
> +#define V4L2_PIX_FMT_MTISP_F8	v4l2_fourcc('M', 'T', 'F', '8') /* Full-G   bayer format,  8-bit */
> +#define V4L2_PIX_FMT_MTISP_F10  v4l2_fourcc('M', 'T', 'F', 'A') /* Full-G   bayer format, 10-bit */
> +#define V4L2_PIX_FMT_MTISP_F12  v4l2_fourcc('M', 'T', 'F', 'C') /* Full-G   bayer format, 12-bit */
> +#define V4L2_PIX_FMT_MTISP_F14  v4l2_fourcc('M', 'T', 'F', 'E') /* Full-G   bayer format, 14-bit */

Are these all compressed formats? What sort of compression is used? Can software unpack it,
or this is meant to be fed to other mediatek hardware blocks?

> +
>  /* SDR formats - used only for Software Defined Radio devices */
>  #define V4L2_SDR_FMT_CU8          v4l2_fourcc('C', 'U', '0', '8') /* IQ u8 */
>  #define V4L2_SDR_FMT_CU16LE       v4l2_fourcc('C', 'U', '1', '6') /* IQ u16le */
> @@ -732,6 +746,12 @@ struct v4l2_pix_format {
>  #define V4L2_META_FMT_VSP1_HGT    v4l2_fourcc('V', 'S', 'P', 'T') /* R-Car VSP1 2-D Histogram */
>  #define V4L2_META_FMT_UVC         v4l2_fourcc('U', 'V', 'C', 'H') /* UVC Payload Header metadata */
>  #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
> +/* Vendor specific - Mediatek ISP parameters for firmware */
> +#define V4L2_META_FMT_MTISP_PARAMS v4l2_fourcc('M', 'T', 'f', 'p') /* ISP tuning parameters */
> +#define V4L2_META_FMT_MTISP_3A	   v4l2_fourcc('M', 'T', 'f', 'a') /* AE/AWB histogram */
> +#define V4L2_META_FMT_MTISP_AF	   v4l2_fourcc('M', 'T', 'f', 'f') /* AF histogram */
> +#define V4L2_META_FMT_MTISP_LCS	   v4l2_fourcc('M', 'T', 'f', 'c') /* Local contrast enhanced statistics */
> +#define V4L2_META_FMT_MTISP_LMV	   v4l2_fourcc('M', 'T', 'f', 'm') /* Local motion vector histogram */

The documentation for these meta formats either needs to point to
freely available mediatek documentation (i.e. no NDA needed), or it
has to be documented in a header or in the pixelformat documentation.

Regards,

	Hans

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
