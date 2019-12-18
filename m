Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7991A124F05
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Dec 2019 18:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iy8H1wz9RI9WqqpzTqt/Vx5iOMCegf5Qxkfa99XMgg=; b=hYDoIOzMzHULUf
	E+FFEXrrwNGiF6j7sEHCM9e4iKuibNfvt06wLc6gvk+FunvQcI2wAJpJMfGNYVfLFTo7PLebUDz89
	PdqYLVJNq8LnFv6MY5Ov1R8dXvuIsZWp7T8yPFLuGRpYOHAyJ787+86q0v29ZCpqD69xytEm39aTw
	f7aWFJDlPL3N3GgrnJM3OcO5qhWxz/OAF9+MpSrrgcCSbgt/ri2kB1JR3OjUi+IhoLskqTqXykQr0
	pyVdj53LTYveVqaQW8l6NUycSaVOerws4pxWpjXn2ACpCazMlng6zFAlAr2fH2DanBi1E1AwEmoGY
	wKYnV4GDFEO3f827dvVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihd1p-0007Kh-JW; Wed, 18 Dec 2019 17:22:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihd1d-0007A8-BF; Wed, 18 Dec 2019 17:22:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 7A82628B855
Message-ID: <980c181ad15153ee0af4ea20ac2a7265cd2b56f1.camel@collabora.com>
Subject: Re: [PATCH v21 2/2] drm/bridge: Add I2C based driver for ps8640 bridge
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>, 
 linux-kernel@vger.kernel.org, Wolfram Sang <wsa@the-dreams.de>
Date: Wed, 18 Dec 2019 14:22:00 -0300
In-Reply-To: <9e38774d-0028-6988-1be1-2e726c5ed4ab@collabora.com>
References: <20191216135834.27775-1-enric.balletbo@collabora.com>
 <20191216135834.27775-3-enric.balletbo@collabora.com>
 <bb97505cfadae364afa14605793affe4a7d69ffa.camel@collabora.com>
 <9e38774d-0028-6988-1be1-2e726c5ed4ab@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_092217_520216_1EA0261C 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ulrich Hecht <uli@fpond.eu>, Jernej Skrabec <jernej.skrabec@siol.net>,
 drinkcat@chromium.org, Jitao Shi <jitao.shi@mediatek.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, Andrzej Hajda <a.hajda@samsung.com>,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-12-18 at 16:21 +0100, Enric Balletbo i Serra wrote:
> Hi Ezequiel,
> 
> Many thanks for the review, I am just preparing the next version to send.
> 
[..]
> > > +
> > > +#define PAGE1_VSTART		0x6b
> > > +#define PAGE2_SPI_CFG3		0x82
> > > +#define I2C_TO_SPI_RESET	0x20
> > > +#define PAGE2_ROMADD_BYTE1	0x8e
> > > +#define PAGE2_ROMADD_BYTE2	0x8f
> > > +#define PAGE2_SWSPI_WDATA	0x90
> > > +#define PAGE2_SWSPI_RDATA	0x91
> > > +#define PAGE2_SWSPI_LEN		0x92
> > > +#define PAGE2_SWSPI_CTL		0x93
> > > +#define TRIGGER_NO_READBACK	0x05
> > > +#define TRIGGER_READBACK	0x01
> > > +#define PAGE2_SPI_STATUS	0x9e
> > > +#define SPI_READY		0x0c
> > > +#define PAGE2_GPIO_L		0xa6
> > > +#define PAGE2_GPIO_H		0xa7
> > > +#define PS_GPIO9		BIT(1)
> > > +#define PAGE2_IROM_CTRL		0xb0
> > > +#define IROM_ENABLE		0xc0
> > > +#define IROM_DISABLE		0x80
> > > +#define PAGE2_SW_RESET		0xbc
> > > +#define SPI_SW_RESET		BIT(7)
> > > +#define MPU_SW_RESET		BIT(6)
> > > +#define PAGE2_ENCTLSPI_WR	0xda
> > > +#define PAGE2_I2C_BYPASS	0xea
> > > +#define I2C_BYPASS_EN		0xd0
> > > +#define PAGE2_MCS_EN		0xf3
> > > +#define MCS_EN			BIT(0)
> > > +#define PAGE3_SET_ADD		0xfe
> > > +#define PAGE3_SET_VAL		0xff
> > > +#define VDO_CTL_ADD		0x13
> > > +#define VDO_DIS			0x18
> > > +#define VDO_EN			0x1c
> > > +#define PAGE4_REV_L		0xf0
> > > +#define PAGE4_REV_H		0xf1
> > > +#define PAGE4_CHIP_L		0xf2
> > > +#define PAGE4_CHIP_H		0xf3
> > > +
> > > +#define PAGE0_DP_CNTL		0
> > 
> > Unused macro.
> > 
> > > +#define PAGE1_VDO_BDG		1
> > > +#define PAGE2_TOP_CNTL		2
> > > +#define PAGE3_DSI_CNTL1		3
> > > +#define PAGE4_MIPI_PHY		4
> > 
> > Ditto... maybe others as well?
> > 
> 
> I removed all the unused macros.
> 

In this case, given these PAGEX_XXX refer
to the I2C ancillaries, maybe you can leave them.

Moreover, I'd put them in an enum, to emphasize
their relationship.

Regards,
Ezequiel


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
