Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D02F12F7
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 Nov 2019 10:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btH9pph/R5tUyEhUYTiBDeuu4j4F4NTE76i0sI0yQ5U=; b=O2IEAMD01s+zzA
	qaPRCFPugRdDy3GbALdbjHOGy7GUIc/2eHqHbhwHEIwVlU9TnluqdvtxKu9Rm4lFyLFq+zxV2ak2G
	Zy1b0MiNn3gBhwp6FlgJraJ1+3HtxT93hAI1D3zlnPpEs1PE0HTg9kDObk/9uDDjeq8ciQBvb0aGu
	cSTG+uA+qxCk5c61imOoowecQSU5aja+8yIHCbo+S1MWPGXGCCzw6iOehIH1mP160Hn+6275VsCmW
	6T6I/KaY/77jQF5Pl0vXZLPr9KbOh2dw33W1hWfgyCz6759XH4bNVJ2bFkB3unCHFUEM6FbO1eQAe
	rkFoGpH+6UY+dSPijssg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSI2Z-0003Ta-Fi; Wed, 06 Nov 2019 09:55:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSI2V-0003TB-82; Wed, 06 Nov 2019 09:55:49 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10014217F4;
 Wed,  6 Nov 2019 09:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573034146;
 bh=xaZbHzfePiMvb/Ln+JmUUomfMT4M42nuBHK8lgpd5dI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tg0SL1FF/Q/PJnmaDT0jGepMu2xlLaRBGFe+R79eyHM+uL335tGZKwi7AetWokqxO
 iEfj1qWrv7o8+64JMgI50wm5hd2axIt3wGqfYQDhtoZkIA4gGpb2Vau6tEvPz0xVU4
 Dcn7uS8XyVlkqEQKxOi25yl/M9wsRsSCUGkEF2Dw=
Date: Wed, 6 Nov 2019 10:55:42 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 16/28] media: siano: use usb_debugfs_create_dir() to
 create directory
Message-ID: <20191106095542.GA2975502@kroah.com>
References: <8cb137d5376b4e317dc22dcb9e81a1125b781f8f.1573008519.git.chunfeng.yun@mediatek.com>
 <591c5ca23fc0399ebd8a4bc2520bdabf07d9538c.1573008520.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <591c5ca23fc0399ebd8a4bc2520bdabf07d9538c.1573008520.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_015547_332246_A42F0F2C 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peter Chen <Peter.Chen@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Wolfram Sang <wsa@the-dreams.de>, Yangtao Li <tiny.windzz@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Mans Rullgard <mans@mansr.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Kevin Cernekee <cernekee@gmail.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Alan Stern <stern@rowland.harvard.edu>, NXP Linux Team <linux-imx@nxp.com>,
 bcm-kernel-feedback-list@broadcom.com,
 David Kershner <david.kershner@unisys.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Cristian Birsan <cristian.birsan@microchip.com>, linux-media@vger.kernel.org,
 Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Mathias Payer <mathias.payer@nebelwelt.net>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-mediatek@lists.infradead.org, Minas Harutyunyan <hminas@synopsys.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org, Biju Das <biju.das@bp.renesas.com>,
 Felipe Balbi <balbi@kernel.org>, Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-usb@vger.kernel.org, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Dmitry Torokhov <dtor@chromium.org>, Guenter Roeck <linux@roeck-us.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Colin Ian King <colin.king@canonical.com>, Shawn Guo <shawnguo@kernel.org>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 11:15:17AM +0800, Chunfeng Yun wrote:
> The usb_debug_root is now a file-scope static variable, use
> usb_debugfs_create_dir() to create directory under usb root
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  drivers/media/common/siano/smsdvb-debugfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/common/siano/smsdvb-debugfs.c b/drivers/media/common/siano/smsdvb-debugfs.c
> index c95d4583498e..28c025e39a00 100644
> --- a/drivers/media/common/siano/smsdvb-debugfs.c
> +++ b/drivers/media/common/siano/smsdvb-debugfs.c
> @@ -514,7 +514,7 @@ void smsdvb_debugfs_register(void)
>  	 * node for sdio-based boards, but this may need some logic at sdio
>  	 * subsystem.
>  	 */
> -	d = debugfs_create_dir("smsdvb", usb_debug_root);
> +	d = usb_debugfs_create_dir("smsdvb");

It is odd that a media driver is using the usb debugfs directory.
Anyone know why that is?

thanks,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
