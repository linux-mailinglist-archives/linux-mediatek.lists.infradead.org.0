Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEACF9CEB4
	for <lists+linux-mediatek@lfdr.de>; Mon, 26 Aug 2019 13:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnZlMvslYFEUgpr11Bzug/KmAAaazLLgY8GX7DhqrJ4=; b=NXfeTICRaWSOxy
	o7rVlLA+GYQTZ4db8cp67SrzVB1fPRe/w2E/MhcQ1fT2D/9zkgEUTUA5je2ceGhckfcc/Ef19hXw5
	/6O7OI0MsGcxk2iQqJFUEBq0pOuiuHWz5H2RIz/y/mJVsRC4UWK2Sr7RHtc/CYDepzXKtoUTE2TGb
	dZmXBDFsHFJPIr2d+8PJgXQe+82N8nAENmyFrsvUruwxiKedVsW9hBzzBT1yV1C4g+M6dpAkMAX+j
	dJ25Z07XWqcE7pq5v82DbDdyagDf5khJd2LCVCfdFZvuRegaaNXiKNXFjOO+qw/ElUhrUcqREWUy+
	wWHfc9r767oD84zWZuxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Dat-0001qj-Ex; Mon, 26 Aug 2019 11:55:31 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Dak-0008IG-C6; Mon, 26 Aug 2019 11:55:23 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id B341E634C88;
 Mon, 26 Aug 2019 14:53:09 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1i2DYb-0000Nz-IT; Mon, 26 Aug 2019 14:53:09 +0300
Date: Mon, 26 Aug 2019 14:53:09 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Louis Kuo <louis.kuo@mediatek.com>
Subject: Re: [RFC PATCH V3 2/4] media: platform: Add Mediatek sensor
 interface driver KConfig
Message-ID: <20190826115309.GC826@valkosipuli.retiisi.org.uk>
References: <1559815233-24796-1-git-send-email-louis.kuo@mediatek.com>
 <1559815233-24796-3-git-send-email-louis.kuo@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559815233-24796-3-git-send-email-louis.kuo@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_045522_590530_D1BC303D 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, Jerry-ch.Chen@mediatek.com, tfiga@chromium.org,
 keiichiw@chromium.org, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, hans.verkuil@cisco.com, zwisler@chromium.org,
 frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 06:00:31PM +0800, Louis Kuo wrote:
> This patch adds KConfig for sensor interface driver. Sensor interface
> driver
> is a MIPI-CSI2 host driver, namely, a HW camera interface controller.
> It support a widely adopted, simple, high-speed protocol primarily
> intended
> for point-to-point image and video transmission between cameras and host
> devices.
> 
> Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
> ---
>  drivers/media/platform/mtk-isp/Kconfig | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>  create mode 100644 drivers/media/platform/mtk-isp/Kconfig
> 
> diff --git a/drivers/media/platform/mtk-isp/Kconfig b/drivers/media/platform/mtk-isp/Kconfig
> new file mode 100644
> index 0000000..bc7fd01
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/Kconfig
> @@ -0,0 +1,17 @@
> +config MTK_SENINF
> +	bool "Mediatek mipi csi2 driver"
> +	depends on VIDEO_V4L2 && VIDEO_V4L2_SUBDEV_API
> +	depends on MEDIA_CAMERA_SUPPORT
> +	select V4L2_FWNODE
> +
> +	default n
> +	help
> +	    This driver provides a mipi-csi2 host driver used as a
> +	    interface to connect camera with Mediatek's
> +	    MT8183 SOCs. It is able to handle multiple cameras
> +	    at the same time.
> +
> +	    Choose y if you want to use Mediatek SoCs to create image
> +	    capture application such as video recording and still image
> +	    capture.

Rather than being a separate patch, this should go in with the driver.

The DT bindings should precede the driver, and you'll need a MAINTAINERS
entry for the driver, too.

-- 
Sakari Ailus

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
