Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8113E12E243
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Jan 2020 05:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvcgDL/AfURM9pqbB9CBM9zWozBqokpnIS+Yw90E0FU=; b=aO9KVpvZLuGaHE
	WoRacVVkWYSSN/A7IhO2ORZbSAIbodF7sQjKPN4S/acEde2TCkYbaSP+S738cABBtfUARcbrzUV/Y
	rp5Rn9GOvmzYgMahSi2+w+0oxVfizwCuDL+AmI3uB3X4pJ8wPg2J8WiWoHio1dsU2ctkaZp5m+4pF
	ec52fwLug4YCXyvuds6Pf2IdHdzO78+R/Drsrk5SRwgLXMqSrHxVqblmLU8kRW7GEKnarj8VkfkaI
	jGv/4Db2YkvwSfdIakmgWVc5gGq2MCbuICBGucuubwdPhWuY1wjGG6oIfa+EZGqxnojQ0rd3fmdmh
	/MmdpC7uyvrTDL31pcrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imrsi-0002Uf-II; Thu, 02 Jan 2020 04:14:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imrqU-0008He-Lu
 for linux-mediatek@lists.infradead.org; Thu, 02 Jan 2020 04:12:33 +0000
X-UUID: 9a9399f2d81f4ace8a9a7a37fbaf41c0-20200101
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=2sdVnaJLgKIBKoD1RUowjpwyI+rHnWslUVR+YnfvHEI=; 
 b=LNd+vHdyP21x7603FjH2KcPNe4iRIHmln7056Og3w1smCoXSfPOTKMA2uIz5q426NhsGL3nHV8Q3nleWVEGON9FtoRRpAC8QO4xjSvl4zGkZWdVjm9s4fm8NNff93hi0eH3NOgz5YH6xYlXwdanscG9y5G1bjdzOX9MUxtnzZoI=;
X-UUID: 9a9399f2d81f4ace8a9a7a37fbaf41c0-20200101
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1456283399; Wed, 01 Jan 2020 20:12:17 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 Jan 2020 20:04:49 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 12:04:38 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 2 Jan 2020 12:03:33 +0800
Message-ID: <1577937853.27785.1.camel@mtkswgap22>
Subject: Re: [PATCH v2 04/11] pinctrl: mediatek: update pinmux definitions
 for mt6779
From: Hanks Chen <hanks.chen@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 2 Jan 2020 12:04:13 +0800
In-Reply-To: <f3d71cb9-63c1-661a-c2d5-0fd29c21407c@gmail.com>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-5-git-send-email-mars.cheng@mediatek.com>
 <f3d71cb9-63c1-661a-c2d5-0fd29c21407c@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_201226_832306_5F375ED9 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Rob Herring <robh@kernel.org>, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, devicetree@vger.kernel.org, Marc
 Zyngier <marc.zyngier@arm.com>, Andy Teng <andy.teng@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Mars Cheng <mars.cheng@mediatek.com>,
 mtk01761 <wendell.lin@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-08-23 at 17:53 +0200, Matthias Brugger wrote:
> 
> On 19/08/2019 11:21, Mars Cheng wrote:
> > Add devicetree bindings for Mediatek mt6779 SoC Pin Controller.
> > 
> > Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> > Signed-off-by: Andy Teng <andy.teng@mediatek.com>
> > ---
> >  include/dt-bindings/pinctrl/mt6779-pinfunc.h | 1242 ++++++++++++++++++++++++++
> 
> This is just the header file, but the commit messages suggests you also wanted
> to update the binding documentation.
> 
> Please do so.
> Matthias
> 
got it, will fix it in v3. Thanks for reviewing.


Sorry for the late reply.

I will be taking over from Mars.

Thanks for reviewing.


> >  1 file changed, 1242 insertions(+)
> >  create mode 100644 include/dt-bindings/pinctrl/mt6779-pinfunc.h
> > 
> > diff --git a/include/dt-bindings/pinctrl/mt6779-pinfunc.h b/include/dt-bindings/pinctrl/mt6779-pinfunc.h
> > new file mode 100644
> > index 0000000..4698d2f
> > --- /dev/null
> > +++ b/include/dt-bindings/pinctrl/mt6779-pinfunc.h
> > @@ -0,0 +1,1242 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (C) 2019 MediaTek Inc.
> > + * Author: Andy Teng <andy.teng@mediatek.com>
> > + *
> > + */
> > +
> > +#ifndef __MT6779_PINFUNC_H
> > +#define __MT6779_PINFUNC_H
> > +
> > +#include "mt65xx.h"
> > +
> > +#define PINMUX_GPIO0__FUNC_GPIO0 (MTK_PIN_NO(0) | 0)
> > +#define PINMUX_GPIO0__FUNC_SPI6_MI (MTK_PIN_NO(0) | 1)
> > +#define PINMUX_GPIO0__FUNC_I2S5_LRCK (MTK_PIN_NO(0) | 2)
> > +#define PINMUX_GPIO0__FUNC_TDM_LRCK_2ND (MTK_PIN_NO(0) | 3)
> > +#define PINMUX_GPIO0__FUNC_PCM1_SYNC (MTK_PIN_NO(0) | 4)
> > +#define PINMUX_GPIO0__FUNC_SCL_6306 (MTK_PIN_NO(0) | 5)
> > +#define PINMUX_GPIO0__FUNC_TP_GPIO0_AO (MTK_PIN_NO(0) | 6)
> > +#define PINMUX_GPIO0__FUNC_PTA_RXD (MTK_PIN_NO(0) | 7)
> > +
> > +#define PINMUX_GPIO1__FUNC_GPIO1 (MTK_PIN_NO(1) | 0)
> > +#define PINMUX_GPIO1__FUNC_SPI6_CSB (MTK_PIN_NO(1) | 1)
> > +#define PINMUX_GPIO1__FUNC_I2S5_DO (MTK_PIN_NO(1) | 2)
> > +#define PINMUX_GPIO1__FUNC_TDM_DATA0_2ND (MTK_PIN_NO(1) | 3)
> > +#define PINMUX_GPIO1__FUNC_PCM1_DO0 (MTK_PIN_NO(1) | 4)
> > +#define PINMUX_GPIO1__FUNC_SDA_6306 (MTK_PIN_NO(1) | 5)
> > +#define PINMUX_GPIO1__FUNC_TP_GPIO1_AO (MTK_PIN_NO(1) | 6)
> > +#define PINMUX_GPIO1__FUNC_PTA_TXD (MTK_PIN_NO(1) | 7)
> > +
> > +#define PINMUX_GPIO2__FUNC_GPIO2 (MTK_PIN_NO(2) | 0)
> > +#define PINMUX_GPIO2__FUNC_SPI6_MO (MTK_PIN_NO(2) | 1)
> > +#define PINMUX_GPIO2__FUNC_I2S5_BCK (MTK_PIN_NO(2) | 2)
> > +#define PINMUX_GPIO2__FUNC_TDM_BCK_2ND (MTK_PIN_NO(2) | 3)
> > +#define PINMUX_GPIO2__FUNC_PCM1_CLK (MTK_PIN_NO(2) | 4)
> > +#define PINMUX_GPIO2__FUNC_MD_INT1_C2K_UIM0_HOT_PLUG (MTK_PIN_NO(2) | 5)
> > +#define PINMUX_GPIO2__FUNC_TP_GPIO2_AO (MTK_PIN_NO(2) | 6)
> > +
> > +#define PINMUX_GPIO3__FUNC_GPIO3 (MTK_PIN_NO(3) | 0)
> > +#define PINMUX_GPIO3__FUNC_SPI6_CLK (MTK_PIN_NO(3) | 1)
> > +#define PINMUX_GPIO3__FUNC_I2S5_MCK (MTK_PIN_NO(3) | 2)
> > +#define PINMUX_GPIO3__FUNC_TDM_MCK_2ND (MTK_PIN_NO(3) | 3)
> > +#define PINMUX_GPIO3__FUNC_EXT_FRAME_SYNC (MTK_PIN_NO(3) | 4)
> > +#define PINMUX_GPIO3__FUNC_MD_INT2_C2K_UIM1_HOT_PLUG (MTK_PIN_NO(3) | 5)
> > +#define PINMUX_GPIO3__FUNC_TP_GPIO3_AO (MTK_PIN_NO(3) | 6)
> > +
> > +#define PINMUX_GPIO4__FUNC_GPIO4 (MTK_PIN_NO(4) | 0)
> > +#define PINMUX_GPIO4__FUNC_SPI7_MI (MTK_PIN_NO(4) | 1)
> > +#define PINMUX_GPIO4__FUNC_I2S0_MCK (MTK_PIN_NO(4) | 2)
> > +#define PINMUX_GPIO4__FUNC_TDM_DATA1_2ND (MTK_PIN_NO(4) | 3)
> > +#define PINMUX_GPIO4__FUNC_PCM1_DO1 (MTK_PIN_NO(4) | 4)
> > +#define PINMUX_GPIO4__FUNC_DMIC1_CLK (MTK_PIN_NO(4) | 5)
> > +#define PINMUX_GPIO4__FUNC_TP_GPIO4_AO (MTK_PIN_NO(4) | 6)
> > +#define PINMUX_GPIO4__FUNC_SCL8 (MTK_PIN_NO(4) | 7)
> > +
> > +#define PINMUX_GPIO5__FUNC_GPIO5 (MTK_PIN_NO(5) | 0)
> > +#define PINMUX_GPIO5__FUNC_SPI7_CSB (MTK_PIN_NO(5) | 1)
> > +#define PINMUX_GPIO5__FUNC_I2S0_BCK (MTK_PIN_NO(5) | 2)
> > +#define PINMUX_GPIO5__FUNC_TDM_DATA2_2ND (MTK_PIN_NO(5) | 3)
> > +#define PINMUX_GPIO5__FUNC_PCM1_DO2 (MTK_PIN_NO(5) | 4)
> > +#define PINMUX_GPIO5__FUNC_DMIC1_DAT (MTK_PIN_NO(5) | 5)
> > +#define PINMUX_GPIO5__FUNC_TP_GPIO5_AO (MTK_PIN_NO(5) | 6)
> > +#define PINMUX_GPIO5__FUNC_SDA8 (MTK_PIN_NO(5) | 7)
> > +
> > +#define PINMUX_GPIO6__FUNC_GPIO6 (MTK_PIN_NO(6) | 0)
> > +#define PINMUX_GPIO6__FUNC_SPI7_MO (MTK_PIN_NO(6) | 1)
> > +#define PINMUX_GPIO6__FUNC_I2S0_LRCK (MTK_PIN_NO(6) | 2)
> > +#define PINMUX_GPIO6__FUNC_TDM_DATA3_2ND (MTK_PIN_NO(6) | 3)
> > +#define PINMUX_GPIO6__FUNC_PCM1_DI (MTK_PIN_NO(6) | 4)
> > +#define PINMUX_GPIO6__FUNC_DMIC_CLK (MTK_PIN_NO(6) | 5)
> > +#define PINMUX_GPIO6__FUNC_TP_GPIO6_AO (MTK_PIN_NO(6) | 6)
> > +#define PINMUX_GPIO6__FUNC_SCL9 (MTK_PIN_NO(6) | 7)
> > +
> > +#define PINMUX_GPIO7__FUNC_GPIO7 (MTK_PIN_NO(7) | 0)
> > +#define PINMUX_GPIO7__FUNC_SPI7_CLK (MTK_PIN_NO(7) | 1)
> > +#define PINMUX_GPIO7__FUNC_I2S0_DI (MTK_PIN_NO(7) | 2)
> > +#define PINMUX_GPIO7__FUNC_SRCLKENAI1 (MTK_PIN_NO(7) | 3)
> > +#define PINMUX_GPIO7__FUNC_DVFSRC_EXT_REQ (MTK_PIN_NO(7) | 4)
> > +#define PINMUX_GPIO7__FUNC_DMIC_DAT (MTK_PIN_NO(7) | 5)
> > +#define PINMUX_GPIO7__FUNC_TP_GPIO7_AO (MTK_PIN_NO(7) | 6)
> > +#define PINMUX_GPIO7__FUNC_SDA9 (MTK_PIN_NO(7) | 7)
> > +
> > +#define PINMUX_GPIO8__FUNC_GPIO8 (MTK_PIN_NO(8) | 0)
> > +#define PINMUX_GPIO8__FUNC_PWM_0 (MTK_PIN_NO(8) | 1)
> > +#define PINMUX_GPIO8__FUNC_I2S2_DI2 (MTK_PIN_NO(8) | 2)
> > +#define PINMUX_GPIO8__FUNC_SRCLKENAI0 (MTK_PIN_NO(8) | 3)
> > +#define PINMUX_GPIO8__FUNC_URXD1 (MTK_PIN_NO(8) | 4)
> > +#define PINMUX_GPIO8__FUNC_I2S0_MCK (MTK_PIN_NO(8) | 5)
> > +#define PINMUX_GPIO8__FUNC_CONN_MCU_DBGACK_N (MTK_PIN_NO(8) | 6)
> > +#define PINMUX_GPIO8__FUNC_IDDIG (MTK_PIN_NO(8) | 7)
> > +
> > +#define PINMUX_GPIO9__FUNC_GPIO9 (MTK_PIN_NO(9) | 0)
> > +#define PINMUX_GPIO9__FUNC_PWM_3 (MTK_PIN_NO(9) | 1)
> > +#define PINMUX_GPIO9__FUNC_MD_INT0 (MTK_PIN_NO(9) | 2)
> > +#define PINMUX_GPIO9__FUNC_SRCLKENAI1 (MTK_PIN_NO(9) | 3)
> > +#define PINMUX_GPIO9__FUNC_UTXD1 (MTK_PIN_NO(9) | 4)
> > +#define PINMUX_GPIO9__FUNC_I2S0_BCK (MTK_PIN_NO(9) | 5)
> > +#define PINMUX_GPIO9__FUNC_CONN_MCU_TRST_B (MTK_PIN_NO(9) | 6)
> > +#define PINMUX_GPIO9__FUNC_USB_DRVVBUS (MTK_PIN_NO(9) | 7)
> > +
> > +#define PINMUX_GPIO10__FUNC_GPIO10 (MTK_PIN_NO(10) | 0)
> > +#define PINMUX_GPIO10__FUNC_MSDC1_CLK_A (MTK_PIN_NO(10) | 1)
> > +#define PINMUX_GPIO10__FUNC_TP_URXD1_AO (MTK_PIN_NO(10) | 2)
> > +#define PINMUX_GPIO10__FUNC_I2S1_LRCK (MTK_PIN_NO(10) | 3)
> > +#define PINMUX_GPIO10__FUNC_UCTS0 (MTK_PIN_NO(10) | 4)
> > +#define PINMUX_GPIO10__FUNC_DMIC1_CLK (MTK_PIN_NO(10) | 5)
> > +#define PINMUX_GPIO10__FUNC_KPCOL2 (MTK_PIN_NO(10) | 6)
> > +#define PINMUX_GPIO10__FUNC_SCL8 (MTK_PIN_NO(10) | 7)
> > +
> > +#define PINMUX_GPIO11__FUNC_GPIO11 (MTK_PIN_NO(11) | 0)
> > +#define PINMUX_GPIO11__FUNC_MSDC1_CMD_A (MTK_PIN_NO(11) | 1)
> > +#define PINMUX_GPIO11__FUNC_TP_UTXD1_AO (MTK_PIN_NO(11) | 2)
> > +#define PINMUX_GPIO11__FUNC_I2S1_DO (MTK_PIN_NO(11) | 3)
> > +#define PINMUX_GPIO11__FUNC_URTS0 (MTK_PIN_NO(11) | 4)
> > +#define PINMUX_GPIO11__FUNC_DMIC1_DAT (MTK_PIN_NO(11) | 5)
> > +#define PINMUX_GPIO11__FUNC_KPROW2 (MTK_PIN_NO(11) | 6)
> > +#define PINMUX_GPIO11__FUNC_SDA8 (MTK_PIN_NO(11) | 7)
> > +
> > +#define PINMUX_GPIO12__FUNC_GPIO12 (MTK_PIN_NO(12) | 0)
> > +#define PINMUX_GPIO12__FUNC_MSDC1_DAT3_A (MTK_PIN_NO(12) | 1)
> > +#define PINMUX_GPIO12__FUNC_TP_URXD2_AO (MTK_PIN_NO(12) | 2)
> > +#define PINMUX_GPIO12__FUNC_I2S1_MCK (MTK_PIN_NO(12) | 3)
> > +#define PINMUX_GPIO12__FUNC_UCTS1 (MTK_PIN_NO(12) | 4)
> > +#define PINMUX_GPIO12__FUNC_DMIC_CLK (MTK_PIN_NO(12) | 5)
> > +#define PINMUX_GPIO12__FUNC_ANT_SEL9 (MTK_PIN_NO(12) | 6)
> > +#define PINMUX_GPIO12__FUNC_SCL9 (MTK_PIN_NO(12) | 7)
> > +
> > +#define PINMUX_GPIO13__FUNC_GPIO13 (MTK_PIN_NO(13) | 0)
> > +#define PINMUX_GPIO13__FUNC_MSDC1_DAT0_A (MTK_PIN_NO(13) | 1)
> > +#define PINMUX_GPIO13__FUNC_TP_UTXD2_AO (MTK_PIN_NO(13) | 2)
> > +#define PINMUX_GPIO13__FUNC_I2S1_BCK (MTK_PIN_NO(13) | 3)
> > +#define PINMUX_GPIO13__FUNC_URTS1 (MTK_PIN_NO(13) | 4)
> > +#define PINMUX_GPIO13__FUNC_DMIC_DAT (MTK_PIN_NO(13) | 5)
> > +#define PINMUX_GPIO13__FUNC_ANT_SEL10 (MTK_PIN_NO(13) | 6)
> > +#define PINMUX_GPIO13__FUNC_SDA9 (MTK_PIN_NO(13) | 7)
> > +
> > +#define PINMUX_GPIO14__FUNC_GPIO14 (MTK_PIN_NO(14) | 0)
> > +#define PINMUX_GPIO14__FUNC_MSDC1_DAT2_A (MTK_PIN_NO(14) | 1)
> > +#define PINMUX_GPIO14__FUNC_PWM_3 (MTK_PIN_NO(14) | 2)
> > +#define PINMUX_GPIO14__FUNC_IDDIG (MTK_PIN_NO(14) | 3)
> > +#define PINMUX_GPIO14__FUNC_MD_INT0 (MTK_PIN_NO(14) | 4)
> > +#define PINMUX_GPIO14__FUNC_PTA_RXD (MTK_PIN_NO(14) | 5)
> > +#define PINMUX_GPIO14__FUNC_ANT_SEL11 (MTK_PIN_NO(14) | 6)
> > +
> > +#define PINMUX_GPIO15__FUNC_GPIO15 (MTK_PIN_NO(15) | 0)
> > +#define PINMUX_GPIO15__FUNC_MSDC1_DAT1_A (MTK_PIN_NO(15) | 1)
> > +#define PINMUX_GPIO15__FUNC_DVFSRC_EXT_REQ (MTK_PIN_NO(15) | 2)
> > +#define PINMUX_GPIO15__FUNC_USB_DRVVBUS (MTK_PIN_NO(15) | 3)
> > +#define PINMUX_GPIO15__FUNC_MD_INT1_C2K_UIM0_HOT_PLUG (MTK_PIN_NO(15) | 4)
> > +#define PINMUX_GPIO15__FUNC_PTA_TXD (MTK_PIN_NO(15) | 5)
> > +#define PINMUX_GPIO15__FUNC_ANT_SEL12 (MTK_PIN_NO(15) | 6)
> > +
> > +#define PINMUX_GPIO16__FUNC_GPIO16 (MTK_PIN_NO(16) | 0)
> > +#define PINMUX_GPIO16__FUNC_SRCLKENAI0 (MTK_PIN_NO(16) | 1)
> > +#define PINMUX_GPIO16__FUNC_EXT_FRAME_SYNC (MTK_PIN_NO(16) | 2)
> > +#define PINMUX_GPIO16__FUNC_MFG_EJTAG_TRSTN (MTK_PIN_NO(16) | 3)
> > +#define PINMUX_GPIO16__FUNC_MD_INT2_C2K_UIM1_HOT_PLUG (MTK_PIN_NO(16) | 4)
> > +#define PINMUX_GPIO16__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(16) | 5)
> > +#define PINMUX_GPIO16__FUNC_PWM_2 (MTK_PIN_NO(16) | 6)
> > +#define PINMUX_GPIO16__FUNC_JTRSTN_SEL1 (MTK_PIN_NO(16) | 7)
> > +
> > +#define PINMUX_GPIO17__FUNC_GPIO17 (MTK_PIN_NO(17) | 0)
> > +#define PINMUX_GPIO17__FUNC_SPI0_A_MI (MTK_PIN_NO(17) | 1)
> > +#define PINMUX_GPIO17__FUNC_SCP_SPI0_MI (MTK_PIN_NO(17) | 2)
> > +#define PINMUX_GPIO17__FUNC_MFG_EJTAG_TDO (MTK_PIN_NO(17) | 3)
> > +#define PINMUX_GPIO17__FUNC_DPI_HSYNC (MTK_PIN_NO(17) | 4)
> > +#define PINMUX_GPIO17__FUNC_MFG_DFD_JTAG_TDO (MTK_PIN_NO(17) | 5)
> > +#define PINMUX_GPIO17__FUNC_DFD_TDO (MTK_PIN_NO(17) | 6)
> > +#define PINMUX_GPIO17__FUNC_JTDO_SEL1 (MTK_PIN_NO(17) | 7)
> > +
> > +#define PINMUX_GPIO18__FUNC_GPIO18 (MTK_PIN_NO(18) | 0)
> > +#define PINMUX_GPIO18__FUNC_SPI0_A_MO (MTK_PIN_NO(18) | 1)
> > +#define PINMUX_GPIO18__FUNC_SCP_SPI0_MO (MTK_PIN_NO(18) | 2)
> > +#define PINMUX_GPIO18__FUNC_MFG_EJTAG_TDI (MTK_PIN_NO(18) | 3)
> > +#define PINMUX_GPIO18__FUNC_DPI_VSYNC (MTK_PIN_NO(18) | 4)
> > +#define PINMUX_GPIO18__FUNC_MFG_DFD_JTAG_TDI (MTK_PIN_NO(18) | 5)
> > +#define PINMUX_GPIO18__FUNC_DFD_TDI (MTK_PIN_NO(18) | 6)
> > +#define PINMUX_GPIO18__FUNC_JTDI_SEL1 (MTK_PIN_NO(18) | 7)
> > +
> > +#define PINMUX_GPIO19__FUNC_GPIO19 (MTK_PIN_NO(19) | 0)
> > +#define PINMUX_GPIO19__FUNC_SPI0_A_CSB (MTK_PIN_NO(19) | 1)
> > +#define PINMUX_GPIO19__FUNC_SCP_SPI0_CS (MTK_PIN_NO(19) | 2)
> > +#define PINMUX_GPIO19__FUNC_MFG_EJTAG_TMS (MTK_PIN_NO(19) | 3)
> > +#define PINMUX_GPIO19__FUNC_DPI_DE (MTK_PIN_NO(19) | 4)
> > +#define PINMUX_GPIO19__FUNC_MFG_DFD_JTAG_TMS (MTK_PIN_NO(19) | 5)
> > +#define PINMUX_GPIO19__FUNC_DFD_TMS (MTK_PIN_NO(19) | 6)
> > +#define PINMUX_GPIO19__FUNC_JTMS_SEL1 (MTK_PIN_NO(19) | 7)
> > +
> > +#define PINMUX_GPIO20__FUNC_GPIO20 (MTK_PIN_NO(20) | 0)
> > +#define PINMUX_GPIO20__FUNC_SPI0_A_CLK (MTK_PIN_NO(20) | 1)
> > +#define PINMUX_GPIO20__FUNC_SCP_SPI0_CK (MTK_PIN_NO(20) | 2)
> > +#define PINMUX_GPIO20__FUNC_MFG_EJTAG_TCK (MTK_PIN_NO(20) | 3)
> > +#define PINMUX_GPIO20__FUNC_DPI_CK (MTK_PIN_NO(20) | 4)
> > +#define PINMUX_GPIO20__FUNC_MFG_DFD_JTAG_TCK (MTK_PIN_NO(20) | 5)
> > +#define PINMUX_GPIO20__FUNC_DFD_TCK_XI (MTK_PIN_NO(20) | 6)
> > +#define PINMUX_GPIO20__FUNC_JTCK_SEL1 (MTK_PIN_NO(20) | 7)
> > +
> > +#define PINMUX_GPIO21__FUNC_GPIO21 (MTK_PIN_NO(21) | 0)
> > +#define PINMUX_GPIO21__FUNC_PWM_0 (MTK_PIN_NO(21) | 1)
> > +#define PINMUX_GPIO21__FUNC_CMFLASH0 (MTK_PIN_NO(21) | 2)
> > +#define PINMUX_GPIO21__FUNC_CMVREF2 (MTK_PIN_NO(21) | 3)
> > +#define PINMUX_GPIO21__FUNC_CLKM0 (MTK_PIN_NO(21) | 4)
> > +#define PINMUX_GPIO21__FUNC_ANT_SEL9 (MTK_PIN_NO(21) | 5)
> > +#define PINMUX_GPIO21__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(21) | 6)
> > +#define PINMUX_GPIO21__FUNC_DBG_MON_A27 (MTK_PIN_NO(21) | 7)
> > +
> > +#define PINMUX_GPIO22__FUNC_GPIO22 (MTK_PIN_NO(22) | 0)
> > +#define PINMUX_GPIO22__FUNC_PWM_1 (MTK_PIN_NO(22) | 1)
> > +#define PINMUX_GPIO22__FUNC_CMFLASH1 (MTK_PIN_NO(22) | 2)
> > +#define PINMUX_GPIO22__FUNC_CMVREF3 (MTK_PIN_NO(22) | 3)
> > +#define PINMUX_GPIO22__FUNC_CLKM1 (MTK_PIN_NO(22) | 4)
> > +#define PINMUX_GPIO22__FUNC_ANT_SEL10 (MTK_PIN_NO(22) | 5)
> > +#define PINMUX_GPIO22__FUNC_DBG_MON_A28 (MTK_PIN_NO(22) | 7)
> > +
> > +#define PINMUX_GPIO23__FUNC_GPIO23 (MTK_PIN_NO(23) | 0)
> > +#define PINMUX_GPIO23__FUNC_PWM_2 (MTK_PIN_NO(23) | 1)
> > +#define PINMUX_GPIO23__FUNC_CMFLASH2 (MTK_PIN_NO(23) | 2)
> > +#define PINMUX_GPIO23__FUNC_CMVREF0 (MTK_PIN_NO(23) | 3)
> > +#define PINMUX_GPIO23__FUNC_CLKM2 (MTK_PIN_NO(23) | 4)
> > +#define PINMUX_GPIO23__FUNC_ANT_SEL11 (MTK_PIN_NO(23) | 5)
> > +#define PINMUX_GPIO23__FUNC_DBG_MON_A29 (MTK_PIN_NO(23) | 7)
> > +
> > +#define PINMUX_GPIO24__FUNC_GPIO24 (MTK_PIN_NO(24) | 0)
> > +#define PINMUX_GPIO24__FUNC_PWM_0 (MTK_PIN_NO(24) | 1)
> > +#define PINMUX_GPIO24__FUNC_CMFLASH3 (MTK_PIN_NO(24) | 2)
> > +#define PINMUX_GPIO24__FUNC_CMVREF1 (MTK_PIN_NO(24) | 3)
> > +#define PINMUX_GPIO24__FUNC_CLKM3 (MTK_PIN_NO(24) | 4)
> > +#define PINMUX_GPIO24__FUNC_ANT_SEL12 (MTK_PIN_NO(24) | 5)
> > +#define PINMUX_GPIO24__FUNC_DBG_MON_A30 (MTK_PIN_NO(24) | 7)
> > +
> > +#define PINMUX_GPIO25__FUNC_GPIO25 (MTK_PIN_NO(25) | 0)
> > +#define PINMUX_GPIO25__FUNC_SRCLKENAI0 (MTK_PIN_NO(25) | 1)
> > +#define PINMUX_GPIO25__FUNC_UCTS0 (MTK_PIN_NO(25) | 2)
> > +#define PINMUX_GPIO25__FUNC_SCL8 (MTK_PIN_NO(25) | 3)
> > +#define PINMUX_GPIO25__FUNC_CMVREF4 (MTK_PIN_NO(25) | 4)
> > +#define PINMUX_GPIO25__FUNC_I2S0_LRCK (MTK_PIN_NO(25) | 5)
> > +#define PINMUX_GPIO25__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(25) | 6)
> > +#define PINMUX_GPIO25__FUNC_DBG_MON_A31 (MTK_PIN_NO(25) | 7)
> > +
> > +#define PINMUX_GPIO26__FUNC_GPIO26 (MTK_PIN_NO(26) | 0)
> > +#define PINMUX_GPIO26__FUNC_PWM_0 (MTK_PIN_NO(26) | 1)
> > +#define PINMUX_GPIO26__FUNC_URTS0 (MTK_PIN_NO(26) | 2)
> > +#define PINMUX_GPIO26__FUNC_SDA8 (MTK_PIN_NO(26) | 3)
> > +#define PINMUX_GPIO26__FUNC_CLKM0 (MTK_PIN_NO(26) | 4)
> > +#define PINMUX_GPIO26__FUNC_I2S0_DI (MTK_PIN_NO(26) | 5)
> > +#define PINMUX_GPIO26__FUNC_AGPS_SYNC (MTK_PIN_NO(26) | 6)
> > +#define PINMUX_GPIO26__FUNC_DBG_MON_A32 (MTK_PIN_NO(26) | 7)
> > +
> > +#define PINMUX_GPIO27__FUNC_GPIO27 (MTK_PIN_NO(27) | 0)
> > +#define PINMUX_GPIO27__FUNC_AP_GOOD (MTK_PIN_NO(27) | 1)
> > +
> > +#define PINMUX_GPIO28__FUNC_GPIO28 (MTK_PIN_NO(28) | 0)
> > +#define PINMUX_GPIO28__FUNC_SCL5 (MTK_PIN_NO(28) | 1)
> > +
> > +#define PINMUX_GPIO29__FUNC_GPIO29 (MTK_PIN_NO(29) | 0)
> > +#define PINMUX_GPIO29__FUNC_SDA5 (MTK_PIN_NO(29) | 1)
> > +
> > +#define PINMUX_GPIO30__FUNC_GPIO30 (MTK_PIN_NO(30) | 0)
> > +#define PINMUX_GPIO30__FUNC_I2S1_MCK (MTK_PIN_NO(30) | 1)
> > +#define PINMUX_GPIO30__FUNC_I2S3_MCK (MTK_PIN_NO(30) | 2)
> > +#define PINMUX_GPIO30__FUNC_I2S2_MCK (MTK_PIN_NO(30) | 3)
> > +#define PINMUX_GPIO30__FUNC_DPI_D0 (MTK_PIN_NO(30) | 4)
> > +#define PINMUX_GPIO30__FUNC_SPI4_MI (MTK_PIN_NO(30) | 5)
> > +#define PINMUX_GPIO30__FUNC_CONN_MCU_DBGI_N (MTK_PIN_NO(30) | 6)
> > +
> > +#define PINMUX_GPIO31__FUNC_GPIO31 (MTK_PIN_NO(31) | 0)
> > +#define PINMUX_GPIO31__FUNC_I2S1_BCK (MTK_PIN_NO(31) | 1)
> > +#define PINMUX_GPIO31__FUNC_I2S3_BCK (MTK_PIN_NO(31) | 2)
> > +#define PINMUX_GPIO31__FUNC_I2S2_BCK (MTK_PIN_NO(31) | 3)
> > +#define PINMUX_GPIO31__FUNC_DPI_D1 (MTK_PIN_NO(31) | 4)
> > +#define PINMUX_GPIO31__FUNC_SPI4_CSB (MTK_PIN_NO(31) | 5)
> > +#define PINMUX_GPIO31__FUNC_CONN_MCU_TDO (MTK_PIN_NO(31) | 6)
> > +
> > +#define PINMUX_GPIO32__FUNC_GPIO32 (MTK_PIN_NO(32) | 0)
> > +#define PINMUX_GPIO32__FUNC_I2S1_LRCK (MTK_PIN_NO(32) | 1)
> > +#define PINMUX_GPIO32__FUNC_I2S3_LRCK (MTK_PIN_NO(32) | 2)
> > +#define PINMUX_GPIO32__FUNC_I2S2_LRCK (MTK_PIN_NO(32) | 3)
> > +#define PINMUX_GPIO32__FUNC_DPI_D2 (MTK_PIN_NO(32) | 4)
> > +#define PINMUX_GPIO32__FUNC_SPI4_MO (MTK_PIN_NO(32) | 5)
> > +#define PINMUX_GPIO32__FUNC_CONN_MCU_TDI (MTK_PIN_NO(32) | 6)
> > +
> > +#define PINMUX_GPIO33__FUNC_GPIO33 (MTK_PIN_NO(33) | 0)
> > +#define PINMUX_GPIO33__FUNC_I2S2_DI (MTK_PIN_NO(33) | 1)
> > +#define PINMUX_GPIO33__FUNC_I2S0_DI (MTK_PIN_NO(33) | 2)
> > +#define PINMUX_GPIO33__FUNC_I2S5_DO (MTK_PIN_NO(33) | 3)
> > +#define PINMUX_GPIO33__FUNC_DPI_D3 (MTK_PIN_NO(33) | 4)
> > +#define PINMUX_GPIO33__FUNC_SPI4_CLK (MTK_PIN_NO(33) | 5)
> > +#define PINMUX_GPIO33__FUNC_CONN_MCU_TMS (MTK_PIN_NO(33) | 6)
> > +
> > +#define PINMUX_GPIO34__FUNC_GPIO34 (MTK_PIN_NO(34) | 0)
> > +#define PINMUX_GPIO34__FUNC_I2S1_DO (MTK_PIN_NO(34) | 1)
> > +#define PINMUX_GPIO34__FUNC_I2S3_DO (MTK_PIN_NO(34) | 2)
> > +#define PINMUX_GPIO34__FUNC_I2S2_DI2 (MTK_PIN_NO(34) | 3)
> > +#define PINMUX_GPIO34__FUNC_DPI_D4 (MTK_PIN_NO(34) | 4)
> > +#define PINMUX_GPIO34__FUNC_AGPS_SYNC (MTK_PIN_NO(34) | 5)
> > +#define PINMUX_GPIO34__FUNC_CONN_MCU_TCK (MTK_PIN_NO(34) | 6)
> > +
> > +#define PINMUX_GPIO35__FUNC_GPIO35 (MTK_PIN_NO(35) | 0)
> > +#define PINMUX_GPIO35__FUNC_TDM_LRCK (MTK_PIN_NO(35) | 1)
> > +#define PINMUX_GPIO35__FUNC_I2S1_LRCK (MTK_PIN_NO(35) | 2)
> > +#define PINMUX_GPIO35__FUNC_I2S5_LRCK (MTK_PIN_NO(35) | 3)
> > +#define PINMUX_GPIO35__FUNC_DPI_D5 (MTK_PIN_NO(35) | 4)
> > +#define PINMUX_GPIO35__FUNC_SPI5_A_MO (MTK_PIN_NO(35) | 5)
> > +#define PINMUX_GPIO35__FUNC_IO_JTAG_TDI (MTK_PIN_NO(35) | 6)
> > +#define PINMUX_GPIO35__FUNC_PWM_2 (MTK_PIN_NO(35) | 7)
> > +
> > +#define PINMUX_GPIO36__FUNC_GPIO36 (MTK_PIN_NO(36) | 0)
> > +#define PINMUX_GPIO36__FUNC_TDM_BCK (MTK_PIN_NO(36) | 1)
> > +#define PINMUX_GPIO36__FUNC_I2S1_BCK (MTK_PIN_NO(36) | 2)
> > +#define PINMUX_GPIO36__FUNC_I2S5_BCK (MTK_PIN_NO(36) | 3)
> > +#define PINMUX_GPIO36__FUNC_DPI_D6 (MTK_PIN_NO(36) | 4)
> > +#define PINMUX_GPIO36__FUNC_SPI5_A_CSB (MTK_PIN_NO(36) | 5)
> > +#define PINMUX_GPIO36__FUNC_IO_JTAG_TRSTN (MTK_PIN_NO(36) | 6)
> > +#define PINMUX_GPIO36__FUNC_SRCLKENAI1 (MTK_PIN_NO(36) | 7)
> > +
> > +#define PINMUX_GPIO37__FUNC_GPIO37 (MTK_PIN_NO(37) | 0)
> > +#define PINMUX_GPIO37__FUNC_TDM_MCK (MTK_PIN_NO(37) | 1)
> > +#define PINMUX_GPIO37__FUNC_I2S1_MCK (MTK_PIN_NO(37) | 2)
> > +#define PINMUX_GPIO37__FUNC_I2S5_MCK (MTK_PIN_NO(37) | 3)
> > +#define PINMUX_GPIO37__FUNC_DPI_D7 (MTK_PIN_NO(37) | 4)
> > +#define PINMUX_GPIO37__FUNC_SPI5_A_MI (MTK_PIN_NO(37) | 5)
> > +#define PINMUX_GPIO37__FUNC_IO_JTAG_TCK (MTK_PIN_NO(37) | 6)
> > +#define PINMUX_GPIO37__FUNC_SRCLKENAI0 (MTK_PIN_NO(37) | 7)
> > +
> > +#define PINMUX_GPIO38__FUNC_GPIO38 (MTK_PIN_NO(38) | 0)
> > +#define PINMUX_GPIO38__FUNC_TDM_DATA0 (MTK_PIN_NO(38) | 1)
> > +#define PINMUX_GPIO38__FUNC_I2S2_DI (MTK_PIN_NO(38) | 2)
> > +#define PINMUX_GPIO38__FUNC_I2S5_DO (MTK_PIN_NO(38) | 3)
> > +#define PINMUX_GPIO38__FUNC_DPI_D8 (MTK_PIN_NO(38) | 4)
> > +#define PINMUX_GPIO38__FUNC_SPI5_A_CLK (MTK_PIN_NO(38) | 5)
> > +#define PINMUX_GPIO38__FUNC_IO_JTAG_TDO (MTK_PIN_NO(38) | 6)
> > +#define PINMUX_GPIO38__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(38) | 7)
> > +
> > +#define PINMUX_GPIO39__FUNC_GPIO39 (MTK_PIN_NO(39) | 0)
> > +#define PINMUX_GPIO39__FUNC_TDM_DATA1 (MTK_PIN_NO(39) | 1)
> > +#define PINMUX_GPIO39__FUNC_I2S1_DO (MTK_PIN_NO(39) | 2)
> > +#define PINMUX_GPIO39__FUNC_I2S2_DI2 (MTK_PIN_NO(39) | 3)
> > +#define PINMUX_GPIO39__FUNC_DPI_D9 (MTK_PIN_NO(39) | 4)
> > +#define PINMUX_GPIO39__FUNC_DVFSRC_EXT_REQ (MTK_PIN_NO(39) | 5)
> > +#define PINMUX_GPIO39__FUNC_IO_JTAG_TMS (MTK_PIN_NO(39) | 6)
> > +#define PINMUX_GPIO39__FUNC_IDDIG (MTK_PIN_NO(39) | 7)
> > +
> > +#define PINMUX_GPIO40__FUNC_GPIO40 (MTK_PIN_NO(40) | 0)
> > +#define PINMUX_GPIO40__FUNC_TDM_DATA2 (MTK_PIN_NO(40) | 1)
> > +#define PINMUX_GPIO40__FUNC_SCL9 (MTK_PIN_NO(40) | 2)
> > +#define PINMUX_GPIO40__FUNC_PWM_3 (MTK_PIN_NO(40) | 3)
> > +#define PINMUX_GPIO40__FUNC_DPI_D10 (MTK_PIN_NO(40) | 4)
> > +#define PINMUX_GPIO40__FUNC_SRCLKENAI0 (MTK_PIN_NO(40) | 5)
> > +#define PINMUX_GPIO40__FUNC_DAP_MD32_SWD (MTK_PIN_NO(40) | 6)
> > +#define PINMUX_GPIO40__FUNC_USB_DRVVBUS (MTK_PIN_NO(40) | 7)
> > +
> > +#define PINMUX_GPIO41__FUNC_GPIO41 (MTK_PIN_NO(41) | 0)
> > +#define PINMUX_GPIO41__FUNC_TDM_DATA3 (MTK_PIN_NO(41) | 1)
> > +#define PINMUX_GPIO41__FUNC_SDA9 (MTK_PIN_NO(41) | 2)
> > +#define PINMUX_GPIO41__FUNC_PWM_1 (MTK_PIN_NO(41) | 3)
> > +#define PINMUX_GPIO41__FUNC_DPI_D11 (MTK_PIN_NO(41) | 4)
> > +#define PINMUX_GPIO41__FUNC_CLKM1 (MTK_PIN_NO(41) | 5)
> > +#define PINMUX_GPIO41__FUNC_DAP_MD32_SWCK (MTK_PIN_NO(41) | 6)
> > +
> > +#define PINMUX_GPIO42__FUNC_GPIO42 (MTK_PIN_NO(42) | 0)
> > +#define PINMUX_GPIO42__FUNC_DISP_PWM (MTK_PIN_NO(42) | 1)
> > +
> > +#define PINMUX_GPIO43__FUNC_GPIO43 (MTK_PIN_NO(43) | 0)
> > +#define PINMUX_GPIO43__FUNC_DSI_TE (MTK_PIN_NO(43) | 1)
> > +
> > +#define PINMUX_GPIO44__FUNC_GPIO44 (MTK_PIN_NO(44) | 0)
> > +#define PINMUX_GPIO44__FUNC_LCM_RST (MTK_PIN_NO(44) | 1)
> > +
> > +#define PINMUX_GPIO45__FUNC_GPIO45 (MTK_PIN_NO(45) | 0)
> > +#define PINMUX_GPIO45__FUNC_SCL6 (MTK_PIN_NO(45) | 1)
> > +#define PINMUX_GPIO45__FUNC_SCP_SCL0 (MTK_PIN_NO(45) | 2)
> > +#define PINMUX_GPIO45__FUNC_SCP_SCL1 (MTK_PIN_NO(45) | 3)
> > +#define PINMUX_GPIO45__FUNC_SCL_6306 (MTK_PIN_NO(45) | 4)
> > +
> > +#define PINMUX_GPIO46__FUNC_GPIO46 (MTK_PIN_NO(46) | 0)
> > +#define PINMUX_GPIO46__FUNC_SDA6 (MTK_PIN_NO(46) | 1)
> > +#define PINMUX_GPIO46__FUNC_SCP_SDA0 (MTK_PIN_NO(46) | 2)
> > +#define PINMUX_GPIO46__FUNC_SCP_SDA1 (MTK_PIN_NO(46) | 3)
> > +#define PINMUX_GPIO46__FUNC_SDA_6306 (MTK_PIN_NO(46) | 4)
> > +
> > +#define PINMUX_GPIO47__FUNC_GPIO47 (MTK_PIN_NO(47) | 0)
> > +#define PINMUX_GPIO47__FUNC_SPI1_A_MI (MTK_PIN_NO(47) | 1)
> > +#define PINMUX_GPIO47__FUNC_SCP_SPI1_A_MI (MTK_PIN_NO(47) | 2)
> > +#define PINMUX_GPIO47__FUNC_KPCOL2 (MTK_PIN_NO(47) | 3)
> > +#define PINMUX_GPIO47__FUNC_MD_URXD0 (MTK_PIN_NO(47) | 4)
> > +#define PINMUX_GPIO47__FUNC_CONN_UART0_RXD (MTK_PIN_NO(47) | 5)
> > +#define PINMUX_GPIO47__FUNC_SSPM_URXD_AO (MTK_PIN_NO(47) | 6)
> > +#define PINMUX_GPIO47__FUNC_DBG_MON_B32 (MTK_PIN_NO(47) | 7)
> > +
> > +#define PINMUX_GPIO48__FUNC_GPIO48 (MTK_PIN_NO(48) | 0)
> > +#define PINMUX_GPIO48__FUNC_SPI1_A_CSB (MTK_PIN_NO(48) | 1)
> > +#define PINMUX_GPIO48__FUNC_SCP_SPI1_A_CS (MTK_PIN_NO(48) | 2)
> > +#define PINMUX_GPIO48__FUNC_KPROW2 (MTK_PIN_NO(48) | 3)
> > +#define PINMUX_GPIO48__FUNC_MD_UTXD0 (MTK_PIN_NO(48) | 4)
> > +#define PINMUX_GPIO48__FUNC_CONN_UART0_TXD (MTK_PIN_NO(48) | 5)
> > +#define PINMUX_GPIO48__FUNC_SSPM_UTXD_AO (MTK_PIN_NO(48) | 6)
> > +#define PINMUX_GPIO48__FUNC_DBG_MON_B31 (MTK_PIN_NO(48) | 7)
> > +
> > +#define PINMUX_GPIO49__FUNC_GPIO49 (MTK_PIN_NO(49) | 0)
> > +#define PINMUX_GPIO49__FUNC_SPI1_A_MO (MTK_PIN_NO(49) | 1)
> > +#define PINMUX_GPIO49__FUNC_SCP_SPI1_A_MO (MTK_PIN_NO(49) | 2)
> > +#define PINMUX_GPIO49__FUNC_UCTS0 (MTK_PIN_NO(49) | 3)
> > +#define PINMUX_GPIO49__FUNC_MD_URXD1 (MTK_PIN_NO(49) | 4)
> > +#define PINMUX_GPIO49__FUNC_PWM_1 (MTK_PIN_NO(49) | 5)
> > +#define PINMUX_GPIO49__FUNC_TP_URXD2_AO (MTK_PIN_NO(49) | 6)
> > +#define PINMUX_GPIO49__FUNC_DBG_MON_B30 (MTK_PIN_NO(49) | 7)
> > +
> > +#define PINMUX_GPIO50__FUNC_GPIO50 (MTK_PIN_NO(50) | 0)
> > +#define PINMUX_GPIO50__FUNC_SPI1_A_CLK (MTK_PIN_NO(50) | 1)
> > +#define PINMUX_GPIO50__FUNC_SCP_SPI1_A_CK (MTK_PIN_NO(50) | 2)
> > +#define PINMUX_GPIO50__FUNC_URTS0 (MTK_PIN_NO(50) | 3)
> > +#define PINMUX_GPIO50__FUNC_MD_UTXD1 (MTK_PIN_NO(50) | 4)
> > +#define PINMUX_GPIO50__FUNC_WIFI_TXD (MTK_PIN_NO(50) | 5)
> > +#define PINMUX_GPIO50__FUNC_TP_UTXD2_AO (MTK_PIN_NO(50) | 6)
> > +#define PINMUX_GPIO50__FUNC_DBG_MON_B29 (MTK_PIN_NO(50) | 7)
> > +
> > +#define PINMUX_GPIO51__FUNC_GPIO51 (MTK_PIN_NO(51) | 0)
> > +#define PINMUX_GPIO51__FUNC_SCL0 (MTK_PIN_NO(51) | 1)
> > +
> > +#define PINMUX_GPIO52__FUNC_GPIO52 (MTK_PIN_NO(52) | 0)
> > +#define PINMUX_GPIO52__FUNC_SDA0 (MTK_PIN_NO(52) | 1)
> > +
> > +#define PINMUX_GPIO53__FUNC_GPIO53 (MTK_PIN_NO(53) | 0)
> > +#define PINMUX_GPIO53__FUNC_URXD0 (MTK_PIN_NO(53) | 1)
> > +#define PINMUX_GPIO53__FUNC_UTXD0 (MTK_PIN_NO(53) | 2)
> > +#define PINMUX_GPIO53__FUNC_MD_URXD0 (MTK_PIN_NO(53) | 3)
> > +#define PINMUX_GPIO53__FUNC_MD_URXD1 (MTK_PIN_NO(53) | 4)
> > +#define PINMUX_GPIO53__FUNC_SSPM_URXD_AO (MTK_PIN_NO(53) | 5)
> > +#define PINMUX_GPIO53__FUNC_CONN_UART0_RXD (MTK_PIN_NO(53) | 7)
> > +
> > +#define PINMUX_GPIO54__FUNC_GPIO54 (MTK_PIN_NO(54) | 0)
> > +#define PINMUX_GPIO54__FUNC_UTXD0 (MTK_PIN_NO(54) | 1)
> > +#define PINMUX_GPIO54__FUNC_URXD0 (MTK_PIN_NO(54) | 2)
> > +#define PINMUX_GPIO54__FUNC_MD_UTXD0 (MTK_PIN_NO(54) | 3)
> > +#define PINMUX_GPIO54__FUNC_MD_UTXD1 (MTK_PIN_NO(54) | 4)
> > +#define PINMUX_GPIO54__FUNC_SSPM_UTXD_AO (MTK_PIN_NO(54) | 5)
> > +#define PINMUX_GPIO54__FUNC_WIFI_TXD (MTK_PIN_NO(54) | 6)
> > +#define PINMUX_GPIO54__FUNC_CONN_UART0_TXD (MTK_PIN_NO(54) | 7)
> > +
> > +#define PINMUX_GPIO55__FUNC_GPIO55 (MTK_PIN_NO(55) | 0)
> > +#define PINMUX_GPIO55__FUNC_SCL3 (MTK_PIN_NO(55) | 1)
> > +#define PINMUX_GPIO55__FUNC_SCP_SCL0 (MTK_PIN_NO(55) | 2)
> > +#define PINMUX_GPIO55__FUNC_SCP_SCL1 (MTK_PIN_NO(55) | 3)
> > +#define PINMUX_GPIO55__FUNC_SCL_6306 (MTK_PIN_NO(55) | 4)
> > +
> > +#define PINMUX_GPIO56__FUNC_GPIO56 (MTK_PIN_NO(56) | 0)
> > +#define PINMUX_GPIO56__FUNC_SDA3 (MTK_PIN_NO(56) | 1)
> > +#define PINMUX_GPIO56__FUNC_SCP_SDA0 (MTK_PIN_NO(56) | 2)
> > +#define PINMUX_GPIO56__FUNC_SCP_SDA1 (MTK_PIN_NO(56) | 3)
> > +#define PINMUX_GPIO56__FUNC_SDA_6306 (MTK_PIN_NO(56) | 4)
> > +
> > +#define PINMUX_GPIO57__FUNC_GPIO57 (MTK_PIN_NO(57) | 0)
> > +#define PINMUX_GPIO57__FUNC_KPROW1 (MTK_PIN_NO(57) | 1)
> > +#define PINMUX_GPIO57__FUNC_PWM_1 (MTK_PIN_NO(57) | 2)
> > +#define PINMUX_GPIO57__FUNC_DVFSRC_EXT_REQ (MTK_PIN_NO(57) | 3)
> > +#define PINMUX_GPIO57__FUNC_CLKM1 (MTK_PIN_NO(57) | 4)
> > +#define PINMUX_GPIO57__FUNC_IDDIG (MTK_PIN_NO(57) | 5)
> > +#define PINMUX_GPIO57__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(57) | 6)
> > +#define PINMUX_GPIO57__FUNC_MBISTREADEN_TRIGGER (MTK_PIN_NO(57) | 7)
> > +
> > +#define PINMUX_GPIO58__FUNC_GPIO58 (MTK_PIN_NO(58) | 0)
> > +#define PINMUX_GPIO58__FUNC_KPROW0 (MTK_PIN_NO(58) | 1)
> > +#define PINMUX_GPIO58__FUNC_DBG_MON_B28 (MTK_PIN_NO(58) | 7)
> > +
> > +#define PINMUX_GPIO59__FUNC_GPIO59 (MTK_PIN_NO(59) | 0)
> > +#define PINMUX_GPIO59__FUNC_KPCOL0 (MTK_PIN_NO(59) | 1)
> > +#define PINMUX_GPIO59__FUNC_DBG_MON_B27 (MTK_PIN_NO(59) | 7)
> > +
> > +#define PINMUX_GPIO60__FUNC_GPIO60 (MTK_PIN_NO(60) | 0)
> > +#define PINMUX_GPIO60__FUNC_KPCOL1 (MTK_PIN_NO(60) | 1)
> > +#define PINMUX_GPIO60__FUNC_PWM_2 (MTK_PIN_NO(60) | 2)
> > +#define PINMUX_GPIO60__FUNC_UCTS1 (MTK_PIN_NO(60) | 3)
> > +#define PINMUX_GPIO60__FUNC_CLKM2 (MTK_PIN_NO(60) | 4)
> > +#define PINMUX_GPIO60__FUNC_USB_DRVVBUS (MTK_PIN_NO(60) | 5)
> > +#define PINMUX_GPIO60__FUNC_MBISTWRITEEN_TRIGGER (MTK_PIN_NO(60) | 7)
> > +
> > +#define PINMUX_GPIO61__FUNC_GPIO61 (MTK_PIN_NO(61) | 0)
> > +#define PINMUX_GPIO61__FUNC_SCL1 (MTK_PIN_NO(61) | 1)
> > +#define PINMUX_GPIO61__FUNC_SCP_SCL0 (MTK_PIN_NO(61) | 2)
> > +#define PINMUX_GPIO61__FUNC_SCP_SCL1 (MTK_PIN_NO(61) | 3)
> > +
> > +#define PINMUX_GPIO62__FUNC_GPIO62 (MTK_PIN_NO(62) | 0)
> > +#define PINMUX_GPIO62__FUNC_SDA1 (MTK_PIN_NO(62) | 1)
> > +#define PINMUX_GPIO62__FUNC_SCP_SDA0 (MTK_PIN_NO(62) | 2)
> > +#define PINMUX_GPIO62__FUNC_SCP_SDA1 (MTK_PIN_NO(62) | 3)
> > +
> > +#define PINMUX_GPIO63__FUNC_GPIO63 (MTK_PIN_NO(63) | 0)
> > +#define PINMUX_GPIO63__FUNC_SPI2_MI (MTK_PIN_NO(63) | 1)
> > +#define PINMUX_GPIO63__FUNC_SCP_SPI2_MI (MTK_PIN_NO(63) | 2)
> > +#define PINMUX_GPIO63__FUNC_KPCOL2 (MTK_PIN_NO(63) | 3)
> > +#define PINMUX_GPIO63__FUNC_MRG_DI (MTK_PIN_NO(63) | 4)
> > +#define PINMUX_GPIO63__FUNC_MD_URXD0 (MTK_PIN_NO(63) | 5)
> > +#define PINMUX_GPIO63__FUNC_CONN_UART0_RXD (MTK_PIN_NO(63) | 6)
> > +#define PINMUX_GPIO63__FUNC_DBG_MON_B26 (MTK_PIN_NO(63) | 7)
> > +
> > +#define PINMUX_GPIO64__FUNC_GPIO64 (MTK_PIN_NO(64) | 0)
> > +#define PINMUX_GPIO64__FUNC_SPI2_CSB (MTK_PIN_NO(64) | 1)
> > +#define PINMUX_GPIO64__FUNC_SCP_SPI2_CS (MTK_PIN_NO(64) | 2)
> > +#define PINMUX_GPIO64__FUNC_KPROW2 (MTK_PIN_NO(64) | 3)
> > +#define PINMUX_GPIO64__FUNC_MRG_SYNC (MTK_PIN_NO(64) | 4)
> > +#define PINMUX_GPIO64__FUNC_MD_UTXD0 (MTK_PIN_NO(64) | 5)
> > +#define PINMUX_GPIO64__FUNC_CONN_UART0_TXD (MTK_PIN_NO(64) | 6)
> > +#define PINMUX_GPIO64__FUNC_DBG_MON_B25 (MTK_PIN_NO(64) | 7)
> > +
> > +#define PINMUX_GPIO65__FUNC_GPIO65 (MTK_PIN_NO(65) | 0)
> > +#define PINMUX_GPIO65__FUNC_SPI2_MO (MTK_PIN_NO(65) | 1)
> > +#define PINMUX_GPIO65__FUNC_SCP_SPI2_MO (MTK_PIN_NO(65) | 2)
> > +#define PINMUX_GPIO65__FUNC_SCP_SDA1 (MTK_PIN_NO(65) | 3)
> > +#define PINMUX_GPIO65__FUNC_MRG_DO (MTK_PIN_NO(65) | 4)
> > +#define PINMUX_GPIO65__FUNC_MD_URXD1 (MTK_PIN_NO(65) | 5)
> > +#define PINMUX_GPIO65__FUNC_PWM_3 (MTK_PIN_NO(65) | 6)
> > +
> > +#define PINMUX_GPIO66__FUNC_GPIO66 (MTK_PIN_NO(66) | 0)
> > +#define PINMUX_GPIO66__FUNC_SPI2_CLK (MTK_PIN_NO(66) | 1)
> > +#define PINMUX_GPIO66__FUNC_SCP_SPI2_CK (MTK_PIN_NO(66) | 2)
> > +#define PINMUX_GPIO66__FUNC_SCP_SCL1 (MTK_PIN_NO(66) | 3)
> > +#define PINMUX_GPIO66__FUNC_MRG_CLK (MTK_PIN_NO(66) | 4)
> > +#define PINMUX_GPIO66__FUNC_MD_UTXD1 (MTK_PIN_NO(66) | 5)
> > +#define PINMUX_GPIO66__FUNC_WIFI_TXD (MTK_PIN_NO(66) | 6)
> > +
> > +#define PINMUX_GPIO67__FUNC_GPIO67 (MTK_PIN_NO(67) | 0)
> > +#define PINMUX_GPIO67__FUNC_I2S3_LRCK (MTK_PIN_NO(67) | 1)
> > +#define PINMUX_GPIO67__FUNC_I2S1_LRCK (MTK_PIN_NO(67) | 2)
> > +#define PINMUX_GPIO67__FUNC_URXD1 (MTK_PIN_NO(67) | 3)
> > +#define PINMUX_GPIO67__FUNC_PCM0_SYNC (MTK_PIN_NO(67) | 4)
> > +#define PINMUX_GPIO67__FUNC_I2S5_LRCK (MTK_PIN_NO(67) | 5)
> > +#define PINMUX_GPIO67__FUNC_ANT_SEL9 (MTK_PIN_NO(67) | 6)
> > +#define PINMUX_GPIO67__FUNC_DBG_MON_B10 (MTK_PIN_NO(67) | 7)
> > +
> > +#define PINMUX_GPIO68__FUNC_GPIO68 (MTK_PIN_NO(68) | 0)
> > +#define PINMUX_GPIO68__FUNC_I2S3_DO (MTK_PIN_NO(68) | 1)
> > +#define PINMUX_GPIO68__FUNC_I2S1_DO (MTK_PIN_NO(68) | 2)
> > +#define PINMUX_GPIO68__FUNC_UTXD1 (MTK_PIN_NO(68) | 3)
> > +#define PINMUX_GPIO68__FUNC_PCM0_DO (MTK_PIN_NO(68) | 4)
> > +#define PINMUX_GPIO68__FUNC_I2S5_DO (MTK_PIN_NO(68) | 5)
> > +#define PINMUX_GPIO68__FUNC_ANT_SEL10 (MTK_PIN_NO(68) | 6)
> > +#define PINMUX_GPIO68__FUNC_DBG_MON_B9 (MTK_PIN_NO(68) | 7)
> > +
> > +#define PINMUX_GPIO69__FUNC_GPIO69 (MTK_PIN_NO(69) | 0)
> > +#define PINMUX_GPIO69__FUNC_I2S3_MCK (MTK_PIN_NO(69) | 1)
> > +#define PINMUX_GPIO69__FUNC_I2S1_MCK (MTK_PIN_NO(69) | 2)
> > +#define PINMUX_GPIO69__FUNC_URTS1 (MTK_PIN_NO(69) | 3)
> > +#define PINMUX_GPIO69__FUNC_AGPS_SYNC (MTK_PIN_NO(69) | 4)
> > +#define PINMUX_GPIO69__FUNC_I2S5_MCK (MTK_PIN_NO(69) | 5)
> > +#define PINMUX_GPIO69__FUNC_DVFSRC_EXT_REQ (MTK_PIN_NO(69) | 6)
> > +#define PINMUX_GPIO69__FUNC_DBG_MON_B8 (MTK_PIN_NO(69) | 7)
> > +
> > +#define PINMUX_GPIO70__FUNC_GPIO70 (MTK_PIN_NO(70) | 0)
> > +#define PINMUX_GPIO70__FUNC_I2S0_DI (MTK_PIN_NO(70) | 1)
> > +#define PINMUX_GPIO70__FUNC_I2S2_DI (MTK_PIN_NO(70) | 2)
> > +#define PINMUX_GPIO70__FUNC_KPCOL2 (MTK_PIN_NO(70) | 3)
> > +#define PINMUX_GPIO70__FUNC_PCM0_DI (MTK_PIN_NO(70) | 4)
> > +#define PINMUX_GPIO70__FUNC_I2S2_DI2 (MTK_PIN_NO(70) | 5)
> > +#define PINMUX_GPIO70__FUNC_ANT_SEL11 (MTK_PIN_NO(70) | 6)
> > +#define PINMUX_GPIO70__FUNC_DBG_MON_B7 (MTK_PIN_NO(70) | 7)
> > +
> > +#define PINMUX_GPIO71__FUNC_GPIO71 (MTK_PIN_NO(71) | 0)
> > +#define PINMUX_GPIO71__FUNC_I2S3_BCK (MTK_PIN_NO(71) | 1)
> > +#define PINMUX_GPIO71__FUNC_I2S1_BCK (MTK_PIN_NO(71) | 2)
> > +#define PINMUX_GPIO71__FUNC_KPROW2 (MTK_PIN_NO(71) | 3)
> > +#define PINMUX_GPIO71__FUNC_PCM0_CLK (MTK_PIN_NO(71) | 4)
> > +#define PINMUX_GPIO71__FUNC_I2S5_BCK (MTK_PIN_NO(71) | 5)
> > +#define PINMUX_GPIO71__FUNC_ANT_SEL12 (MTK_PIN_NO(71) | 6)
> > +#define PINMUX_GPIO71__FUNC_DBG_MON_B6 (MTK_PIN_NO(71) | 7)
> > +
> > +#define PINMUX_GPIO72__FUNC_GPIO72 (MTK_PIN_NO(72) | 0)
> > +#define PINMUX_GPIO72__FUNC_BPI_BUS19_OLAT0 (MTK_PIN_NO(72) | 1)
> > +#define PINMUX_GPIO72__FUNC_CONN_BPI_BUS19_OLAT0 (MTK_PIN_NO(72) | 2)
> > +
> > +#define PINMUX_GPIO73__FUNC_GPIO73 (MTK_PIN_NO(73) | 0)
> > +#define PINMUX_GPIO73__FUNC_BPI_BUS18_PA_VM1 (MTK_PIN_NO(73) | 1)
> > +#define PINMUX_GPIO73__FUNC_CONN_MIPI5_SCLK (MTK_PIN_NO(73) | 2)
> > +#define PINMUX_GPIO73__FUNC_MIPI5_SCLK (MTK_PIN_NO(73) | 3)
> > +
> > +#define PINMUX_GPIO74__FUNC_GPIO74 (MTK_PIN_NO(74) | 0)
> > +#define PINMUX_GPIO74__FUNC_BPI_BUS17_PA_VM0 (MTK_PIN_NO(74) | 1)
> > +#define PINMUX_GPIO74__FUNC_CONN_MIPI5_SDATA (MTK_PIN_NO(74) | 2)
> > +#define PINMUX_GPIO74__FUNC_MIPI5_SDATA (MTK_PIN_NO(74) | 3)
> > +
> > +#define PINMUX_GPIO75__FUNC_GPIO75 (MTK_PIN_NO(75) | 0)
> > +#define PINMUX_GPIO75__FUNC_BPI_BUS20_OLAT1 (MTK_PIN_NO(75) | 1)
> > +#define PINMUX_GPIO75__FUNC_CONN_BPI_BUS20_OLAT1 (MTK_PIN_NO(75) | 2)
> > +#define PINMUX_GPIO75__FUNC_RFIC0_BSI_D2 (MTK_PIN_NO(75) | 3)
> > +
> > +#define PINMUX_GPIO76__FUNC_GPIO76 (MTK_PIN_NO(76) | 0)
> > +#define PINMUX_GPIO76__FUNC_RFIC0_BSI_D1 (MTK_PIN_NO(76) | 1)
> > +
> > +#define PINMUX_GPIO77__FUNC_GPIO77 (MTK_PIN_NO(77) | 0)
> > +#define PINMUX_GPIO77__FUNC_RFIC0_BSI_D0 (MTK_PIN_NO(77) | 1)
> > +
> > +#define PINMUX_GPIO78__FUNC_GPIO78 (MTK_PIN_NO(78) | 0)
> > +#define PINMUX_GPIO78__FUNC_BPI_BUS7 (MTK_PIN_NO(78) | 1)
> > +#define PINMUX_GPIO78__FUNC_DBG_MON_B24 (MTK_PIN_NO(78) | 7)
> > +
> > +#define PINMUX_GPIO79__FUNC_GPIO79 (MTK_PIN_NO(79) | 0)
> > +#define PINMUX_GPIO79__FUNC_BPI_BUS6 (MTK_PIN_NO(79) | 1)
> > +#define PINMUX_GPIO79__FUNC_DBG_MON_B23 (MTK_PIN_NO(79) | 7)
> > +
> > +#define PINMUX_GPIO80__FUNC_GPIO80 (MTK_PIN_NO(80) | 0)
> > +#define PINMUX_GPIO80__FUNC_BPI_BUS8 (MTK_PIN_NO(80) | 1)
> > +#define PINMUX_GPIO80__FUNC_DBG_MON_B22 (MTK_PIN_NO(80) | 7)
> > +
> > +#define PINMUX_GPIO81__FUNC_GPIO81 (MTK_PIN_NO(81) | 0)
> > +#define PINMUX_GPIO81__FUNC_BPI_BUS9 (MTK_PIN_NO(81) | 1)
> > +#define PINMUX_GPIO81__FUNC_DBG_MON_B21 (MTK_PIN_NO(81) | 7)
> > +
> > +#define PINMUX_GPIO82__FUNC_GPIO82 (MTK_PIN_NO(82) | 0)
> > +#define PINMUX_GPIO82__FUNC_BPI_BUS10 (MTK_PIN_NO(82) | 1)
> > +#define PINMUX_GPIO82__FUNC_DBG_MON_B20 (MTK_PIN_NO(82) | 7)
> > +
> > +#define PINMUX_GPIO83__FUNC_GPIO83 (MTK_PIN_NO(83) | 0)
> > +#define PINMUX_GPIO83__FUNC_BPI_BUS11 (MTK_PIN_NO(83) | 1)
> > +#define PINMUX_GPIO83__FUNC_DBG_MON_B19 (MTK_PIN_NO(83) | 7)
> > +
> > +#define PINMUX_GPIO84__FUNC_GPIO84 (MTK_PIN_NO(84) | 0)
> > +#define PINMUX_GPIO84__FUNC_BPI_BUS12 (MTK_PIN_NO(84) | 1)
> > +#define PINMUX_GPIO84__FUNC_CONN_BPI_BUS12 (MTK_PIN_NO(84) | 2)
> > +
> > +#define PINMUX_GPIO85__FUNC_GPIO85 (MTK_PIN_NO(85) | 0)
> > +#define PINMUX_GPIO85__FUNC_BPI_BUS13 (MTK_PIN_NO(85) | 1)
> > +#define PINMUX_GPIO85__FUNC_CONN_BPI_BUS13 (MTK_PIN_NO(85) | 2)
> > +
> > +#define PINMUX_GPIO86__FUNC_GPIO86 (MTK_PIN_NO(86) | 0)
> > +#define PINMUX_GPIO86__FUNC_BPI_BUS14 (MTK_PIN_NO(86) | 1)
> > +#define PINMUX_GPIO86__FUNC_CONN_BPI_BUS14 (MTK_PIN_NO(86) | 2)
> > +
> > +#define PINMUX_GPIO87__FUNC_GPIO87 (MTK_PIN_NO(87) | 0)
> > +#define PINMUX_GPIO87__FUNC_BPI_BUS15 (MTK_PIN_NO(87) | 1)
> > +#define PINMUX_GPIO87__FUNC_CONN_BPI_BUS15 (MTK_PIN_NO(87) | 2)
> > +
> > +#define PINMUX_GPIO88__FUNC_GPIO88 (MTK_PIN_NO(88) | 0)
> > +#define PINMUX_GPIO88__FUNC_BPI_BUS16 (MTK_PIN_NO(88) | 1)
> > +#define PINMUX_GPIO88__FUNC_CONN_BPI_BUS16 (MTK_PIN_NO(88) | 2)
> > +
> > +#define PINMUX_GPIO89__FUNC_GPIO89 (MTK_PIN_NO(89) | 0)
> > +#define PINMUX_GPIO89__FUNC_BPI_BUS5 (MTK_PIN_NO(89) | 1)
> > +#define PINMUX_GPIO89__FUNC_DBG_MON_B18 (MTK_PIN_NO(89) | 7)
> > +
> > +#define PINMUX_GPIO90__FUNC_GPIO90 (MTK_PIN_NO(90) | 0)
> > +#define PINMUX_GPIO90__FUNC_BPI_BUS4 (MTK_PIN_NO(90) | 1)
> > +#define PINMUX_GPIO90__FUNC_DBG_MON_B17 (MTK_PIN_NO(90) | 7)
> > +
> > +#define PINMUX_GPIO91__FUNC_GPIO91 (MTK_PIN_NO(91) | 0)
> > +#define PINMUX_GPIO91__FUNC_BPI_BUS3 (MTK_PIN_NO(91) | 1)
> > +
> > +#define PINMUX_GPIO92__FUNC_GPIO92 (MTK_PIN_NO(92) | 0)
> > +#define PINMUX_GPIO92__FUNC_BPI_BUS2 (MTK_PIN_NO(92) | 1)
> > +#define PINMUX_GPIO92__FUNC_DBG_MON_B16 (MTK_PIN_NO(92) | 7)
> > +
> > +#define PINMUX_GPIO93__FUNC_GPIO93 (MTK_PIN_NO(93) | 0)
> > +#define PINMUX_GPIO93__FUNC_BPI_BUS1 (MTK_PIN_NO(93) | 1)
> > +
> > +#define PINMUX_GPIO94__FUNC_GPIO94 (MTK_PIN_NO(94) | 0)
> > +#define PINMUX_GPIO94__FUNC_BPI_BUS0 (MTK_PIN_NO(94) | 1)
> > +#define PINMUX_GPIO94__FUNC_DBG_MON_B15 (MTK_PIN_NO(94) | 7)
> > +
> > +#define PINMUX_GPIO95__FUNC_GPIO95 (MTK_PIN_NO(95) | 0)
> > +#define PINMUX_GPIO95__FUNC_MIPI0_SDATA (MTK_PIN_NO(95) | 1)
> > +
> > +#define PINMUX_GPIO96__FUNC_GPIO96 (MTK_PIN_NO(96) | 0)
> > +#define PINMUX_GPIO96__FUNC_MIPI0_SCLK (MTK_PIN_NO(96) | 1)
> > +
> > +#define PINMUX_GPIO97__FUNC_GPIO97 (MTK_PIN_NO(97) | 0)
> > +#define PINMUX_GPIO97__FUNC_MIPI1_SDATA (MTK_PIN_NO(97) | 1)
> > +
> > +#define PINMUX_GPIO98__FUNC_GPIO98 (MTK_PIN_NO(98) | 0)
> > +#define PINMUX_GPIO98__FUNC_MIPI1_SCLK (MTK_PIN_NO(98) | 1)
> > +
> > +#define PINMUX_GPIO99__FUNC_GPIO99 (MTK_PIN_NO(99) | 0)
> > +#define PINMUX_GPIO99__FUNC_MIPI2_SCLK (MTK_PIN_NO(99) | 1)
> > +#define PINMUX_GPIO99__FUNC_DBG_MON_B14 (MTK_PIN_NO(99) | 7)
> > +
> > +#define PINMUX_GPIO100__FUNC_GPIO100 (MTK_PIN_NO(100) | 0)
> > +#define PINMUX_GPIO100__FUNC_MIPI2_SDATA (MTK_PIN_NO(100) | 1)
> > +#define PINMUX_GPIO100__FUNC_DBG_MON_B13 (MTK_PIN_NO(100) | 7)
> > +
> > +#define PINMUX_GPIO101__FUNC_GPIO101 (MTK_PIN_NO(101) | 0)
> > +#define PINMUX_GPIO101__FUNC_MIPI3_SCLK (MTK_PIN_NO(101) | 1)
> > +#define PINMUX_GPIO101__FUNC_DBG_MON_B12 (MTK_PIN_NO(101) | 7)
> > +
> > +#define PINMUX_GPIO102__FUNC_GPIO102 (MTK_PIN_NO(102) | 0)
> > +#define PINMUX_GPIO102__FUNC_MIPI3_SDATA (MTK_PIN_NO(102) | 1)
> > +#define PINMUX_GPIO102__FUNC_DBG_MON_B11 (MTK_PIN_NO(102) | 7)
> > +
> > +#define PINMUX_GPIO103__FUNC_GPIO103 (MTK_PIN_NO(103) | 0)
> > +#define PINMUX_GPIO103__FUNC_MIPI4_SCLK (MTK_PIN_NO(103) | 1)
> > +#define PINMUX_GPIO103__FUNC_CONN_MIPI4_SCLK (MTK_PIN_NO(103) | 2)
> > +
> > +#define PINMUX_GPIO104__FUNC_GPIO104 (MTK_PIN_NO(104) | 0)
> > +#define PINMUX_GPIO104__FUNC_MIPI4_SDATA (MTK_PIN_NO(104) | 1)
> > +#define PINMUX_GPIO104__FUNC_CONN_MIPI4_SDATA (MTK_PIN_NO(104) | 2)
> > +
> > +#define PINMUX_GPIO105__FUNC_GPIO105 (MTK_PIN_NO(105) | 0)
> > +#define PINMUX_GPIO105__FUNC_BPI_BUS22_OLAT3 (MTK_PIN_NO(105) | 1)
> > +#define PINMUX_GPIO105__FUNC_CONN_BPI_BUS22_OLAT3 (MTK_PIN_NO(105) | 2)
> > +
> > +#define PINMUX_GPIO106__FUNC_GPIO106 (MTK_PIN_NO(106) | 0)
> > +#define PINMUX_GPIO106__FUNC_BPI_BUS21_OLAT2 (MTK_PIN_NO(106) | 1)
> > +#define PINMUX_GPIO106__FUNC_CONN_BPI_BUS21_OLAT2 (MTK_PIN_NO(106) | 2)
> > +
> > +#define PINMUX_GPIO107__FUNC_GPIO107 (MTK_PIN_NO(107) | 0)
> > +#define PINMUX_GPIO107__FUNC_BPI_BUS24_ANT1 (MTK_PIN_NO(107) | 1)
> > +#define PINMUX_GPIO107__FUNC_CONN_BPI_BUS24_ANT1 (MTK_PIN_NO(107) | 2)
> > +
> > +#define PINMUX_GPIO108__FUNC_GPIO108 (MTK_PIN_NO(108) | 0)
> > +#define PINMUX_GPIO108__FUNC_BPI_BUS25_ANT2 (MTK_PIN_NO(108) | 1)
> > +#define PINMUX_GPIO108__FUNC_CONN_BPI_BUS25_ANT2 (MTK_PIN_NO(108) | 2)
> > +
> > +#define PINMUX_GPIO109__FUNC_GPIO109 (MTK_PIN_NO(109) | 0)
> > +#define PINMUX_GPIO109__FUNC_BPI_BUS23_ANT0 (MTK_PIN_NO(109) | 1)
> > +#define PINMUX_GPIO109__FUNC_CONN_BPI_BUS23_ANT0 (MTK_PIN_NO(109) | 2)
> > +
> > +#define PINMUX_GPIO110__FUNC_GPIO110 (MTK_PIN_NO(110) | 0)
> > +#define PINMUX_GPIO110__FUNC_SCL4 (MTK_PIN_NO(110) | 1)
> > +
> > +#define PINMUX_GPIO111__FUNC_GPIO111 (MTK_PIN_NO(111) | 0)
> > +#define PINMUX_GPIO111__FUNC_SDA4 (MTK_PIN_NO(111) | 1)
> > +
> > +#define PINMUX_GPIO112__FUNC_GPIO112 (MTK_PIN_NO(112) | 0)
> > +#define PINMUX_GPIO112__FUNC_SCL2 (MTK_PIN_NO(112) | 1)
> > +
> > +#define PINMUX_GPIO113__FUNC_GPIO113 (MTK_PIN_NO(113) | 0)
> > +#define PINMUX_GPIO113__FUNC_SDA2 (MTK_PIN_NO(113) | 1)
> > +
> > +#define PINMUX_GPIO114__FUNC_GPIO114 (MTK_PIN_NO(114) | 0)
> > +#define PINMUX_GPIO114__FUNC_CLKM0 (MTK_PIN_NO(114) | 1)
> > +#define PINMUX_GPIO114__FUNC_SPI3_MI (MTK_PIN_NO(114) | 2)
> > +#define PINMUX_GPIO114__FUNC_DBG_MON_B5 (MTK_PIN_NO(114) | 7)
> > +
> > +#define PINMUX_GPIO115__FUNC_GPIO115 (MTK_PIN_NO(115) | 0)
> > +#define PINMUX_GPIO115__FUNC_CLKM1 (MTK_PIN_NO(115) | 1)
> > +#define PINMUX_GPIO115__FUNC_SPI3_CSB (MTK_PIN_NO(115) | 2)
> > +#define PINMUX_GPIO115__FUNC_DBG_MON_B4 (MTK_PIN_NO(115) | 7)
> > +
> > +#define PINMUX_GPIO116__FUNC_GPIO116 (MTK_PIN_NO(116) | 0)
> > +#define PINMUX_GPIO116__FUNC_CMMCLK0 (MTK_PIN_NO(116) | 1)
> > +#define PINMUX_GPIO116__FUNC_DBG_MON_B3 (MTK_PIN_NO(116) | 7)
> > +
> > +#define PINMUX_GPIO117__FUNC_GPIO117 (MTK_PIN_NO(117) | 0)
> > +#define PINMUX_GPIO117__FUNC_CMMCLK1 (MTK_PIN_NO(117) | 1)
> > +#define PINMUX_GPIO117__FUNC_DVFSRC_EXT_REQ (MTK_PIN_NO(117) | 2)
> > +#define PINMUX_GPIO117__FUNC_DBG_MON_B2 (MTK_PIN_NO(117) | 7)
> > +
> > +#define PINMUX_GPIO118__FUNC_GPIO118 (MTK_PIN_NO(118) | 0)
> > +#define PINMUX_GPIO118__FUNC_CLKM2 (MTK_PIN_NO(118) | 1)
> > +#define PINMUX_GPIO118__FUNC_SPI3_MO (MTK_PIN_NO(118) | 2)
> > +#define PINMUX_GPIO118__FUNC_DBG_MON_B1 (MTK_PIN_NO(118) | 7)
> > +
> > +#define PINMUX_GPIO119__FUNC_GPIO119 (MTK_PIN_NO(119) | 0)
> > +#define PINMUX_GPIO119__FUNC_CLKM3 (MTK_PIN_NO(119) | 1)
> > +#define PINMUX_GPIO119__FUNC_SPI3_CLK (MTK_PIN_NO(119) | 2)
> > +#define PINMUX_GPIO119__FUNC_DBG_MON_B0 (MTK_PIN_NO(119) | 7)
> > +
> > +#define PINMUX_GPIO120__FUNC_GPIO120 (MTK_PIN_NO(120) | 0)
> > +#define PINMUX_GPIO120__FUNC_CMMCLK2 (MTK_PIN_NO(120) | 1)
> > +#define PINMUX_GPIO120__FUNC_CLKM2 (MTK_PIN_NO(120) | 2)
> > +#define PINMUX_GPIO120__FUNC_ANT_SEL12 (MTK_PIN_NO(120) | 6)
> > +#define PINMUX_GPIO120__FUNC_TP_UCTS2_AO (MTK_PIN_NO(120) | 7)
> > +
> > +#define PINMUX_GPIO121__FUNC_GPIO121 (MTK_PIN_NO(121) | 0)
> > +#define PINMUX_GPIO121__FUNC_CMMCLK3 (MTK_PIN_NO(121) | 1)
> > +#define PINMUX_GPIO121__FUNC_CLKM3 (MTK_PIN_NO(121) | 2)
> > +#define PINMUX_GPIO121__FUNC_DVFSRC_EXT_REQ (MTK_PIN_NO(121) | 3)
> > +#define PINMUX_GPIO121__FUNC_ANT_SEL11 (MTK_PIN_NO(121) | 6)
> > +#define PINMUX_GPIO121__FUNC_TP_URTS2_AO (MTK_PIN_NO(121) | 7)
> > +
> > +#define PINMUX_GPIO122__FUNC_GPIO122 (MTK_PIN_NO(122) | 0)
> > +#define PINMUX_GPIO122__FUNC_CMVREF1 (MTK_PIN_NO(122) | 1)
> > +#define PINMUX_GPIO122__FUNC_PCM0_SYNC (MTK_PIN_NO(122) | 2)
> > +#define PINMUX_GPIO122__FUNC_SRCLKENAI1 (MTK_PIN_NO(122) | 3)
> > +#define PINMUX_GPIO122__FUNC_AGPS_SYNC (MTK_PIN_NO(122) | 4)
> > +#define PINMUX_GPIO122__FUNC_PWM_1 (MTK_PIN_NO(122) | 5)
> > +#define PINMUX_GPIO122__FUNC_ANT_SEL9 (MTK_PIN_NO(122) | 6)
> > +#define PINMUX_GPIO122__FUNC_TP_UCTS1_AO (MTK_PIN_NO(122) | 7)
> > +
> > +#define PINMUX_GPIO123__FUNC_GPIO123 (MTK_PIN_NO(123) | 0)
> > +#define PINMUX_GPIO123__FUNC_PCM0_DI (MTK_PIN_NO(123) | 2)
> > +#define PINMUX_GPIO123__FUNC_ADSP_JTAG_TRSTN (MTK_PIN_NO(123) | 3)
> > +#define PINMUX_GPIO123__FUNC_VPU_UDI_NTRST (MTK_PIN_NO(123) | 4)
> > +#define PINMUX_GPIO123__FUNC_SPM_JTAG_TRSTN (MTK_PIN_NO(123) | 5)
> > +#define PINMUX_GPIO123__FUNC_SSPM_JTAG_TRSTN (MTK_PIN_NO(123) | 6)
> > +
> > +#define PINMUX_GPIO124__FUNC_GPIO124 (MTK_PIN_NO(124) | 0)
> > +#define PINMUX_GPIO124__FUNC_CMVREF2 (MTK_PIN_NO(124) | 1)
> > +#define PINMUX_GPIO124__FUNC_PCM0_CLK (MTK_PIN_NO(124) | 2)
> > +#define PINMUX_GPIO124__FUNC_MD_INT0 (MTK_PIN_NO(124) | 3)
> > +#define PINMUX_GPIO124__FUNC_EXT_FRAME_SYNC (MTK_PIN_NO(124) | 4)
> > +#define PINMUX_GPIO124__FUNC_PWM_2 (MTK_PIN_NO(124) | 5)
> > +#define PINMUX_GPIO124__FUNC_ANT_SEL10 (MTK_PIN_NO(124) | 6)
> > +#define PINMUX_GPIO124__FUNC_TP_URTS1_AO (MTK_PIN_NO(124) | 7)
> > +
> > +#define PINMUX_GPIO125__FUNC_GPIO125 (MTK_PIN_NO(125) | 0)
> > +#define PINMUX_GPIO125__FUNC_CMVREF3 (MTK_PIN_NO(125) | 1)
> > +#define PINMUX_GPIO125__FUNC_PCM0_DO (MTK_PIN_NO(125) | 2)
> > +#define PINMUX_GPIO125__FUNC_ADSP_JTAG_TMS (MTK_PIN_NO(125) | 3)
> > +#define PINMUX_GPIO125__FUNC_VPU_UDI_TMS (MTK_PIN_NO(125) | 4)
> > +#define PINMUX_GPIO125__FUNC_SPM_JTAG_TMS (MTK_PIN_NO(125) | 5)
> > +#define PINMUX_GPIO125__FUNC_SSPM_JTAG_TMS (MTK_PIN_NO(125) | 6)
> > +
> > +#define PINMUX_GPIO126__FUNC_GPIO126 (MTK_PIN_NO(126) | 0)
> > +#define PINMUX_GPIO126__FUNC_CMVREF4 (MTK_PIN_NO(126) | 1)
> > +#define PINMUX_GPIO126__FUNC_CMFLASH0 (MTK_PIN_NO(126) | 2)
> > +#define PINMUX_GPIO126__FUNC_CONN_MCU_AICE_TMSC (MTK_PIN_NO(126) | 6)
> > +
> > +#define PINMUX_GPIO127__FUNC_GPIO127 (MTK_PIN_NO(127) | 0)
> > +#define PINMUX_GPIO127__FUNC_CMVREF0 (MTK_PIN_NO(127) | 1)
> > +#define PINMUX_GPIO127__FUNC_CMFLASH1 (MTK_PIN_NO(127) | 2)
> > +#define PINMUX_GPIO127__FUNC_CONN_MCU_AICE_TCKC (MTK_PIN_NO(127) | 6)
> > +
> > +#define PINMUX_GPIO128__FUNC_GPIO128 (MTK_PIN_NO(128) | 0)
> > +#define PINMUX_GPIO128__FUNC_MD1_SIM1_SIO (MTK_PIN_NO(128) | 1)
> > +#define PINMUX_GPIO128__FUNC_MD1_SIM2_SIO (MTK_PIN_NO(128) | 2)
> > +#define PINMUX_GPIO128__FUNC_CCU_JTAG_TRST (MTK_PIN_NO(128) | 3)
> > +#define PINMUX_GPIO128__FUNC_CONN_DSP_JINTP (MTK_PIN_NO(128) | 4)
> > +#define PINMUX_GPIO128__FUNC_SCP_JTAG_TRSTN (MTK_PIN_NO(128) | 5)
> > +#define PINMUX_GPIO128__FUNC_LVTS_FOUT (MTK_PIN_NO(128) | 6)
> > +#define PINMUX_GPIO128__FUNC_DBG_MON_A3 (MTK_PIN_NO(128) | 7)
> > +
> > +#define PINMUX_GPIO129__FUNC_GPIO129 (MTK_PIN_NO(129) | 0)
> > +#define PINMUX_GPIO129__FUNC_MD1_SIM1_SRST (MTK_PIN_NO(129) | 1)
> > +#define PINMUX_GPIO129__FUNC_MD1_SIM2_SRST (MTK_PIN_NO(129) | 2)
> > +#define PINMUX_GPIO129__FUNC_CCU_JTAG_TCK (MTK_PIN_NO(129) | 3)
> > +#define PINMUX_GPIO129__FUNC_CONN_DSP_JCK (MTK_PIN_NO(129) | 4)
> > +#define PINMUX_GPIO129__FUNC_SCP_JTAG_TCK (MTK_PIN_NO(129) | 5)
> > +#define PINMUX_GPIO129__FUNC_LVTS_SDO (MTK_PIN_NO(129) | 6)
> > +#define PINMUX_GPIO129__FUNC_DBG_MON_A4 (MTK_PIN_NO(129) | 7)
> > +
> > +#define PINMUX_GPIO130__FUNC_GPIO130 (MTK_PIN_NO(130) | 0)
> > +#define PINMUX_GPIO130__FUNC_MD1_SIM1_SCLK (MTK_PIN_NO(130) | 1)
> > +#define PINMUX_GPIO130__FUNC_MD1_SIM2_SCLK (MTK_PIN_NO(130) | 2)
> > +#define PINMUX_GPIO130__FUNC_LVTS_26M (MTK_PIN_NO(130) | 6)
> > +#define PINMUX_GPIO130__FUNC_DBG_MON_A5 (MTK_PIN_NO(130) | 7)
> > +
> > +#define PINMUX_GPIO131__FUNC_GPIO131 (MTK_PIN_NO(131) | 0)
> > +#define PINMUX_GPIO131__FUNC_MD1_SIM2_SCLK (MTK_PIN_NO(131) | 1)
> > +#define PINMUX_GPIO131__FUNC_MD1_SIM1_SCLK (MTK_PIN_NO(131) | 2)
> > +#define PINMUX_GPIO131__FUNC_CCU_JTAG_TDI (MTK_PIN_NO(131) | 3)
> > +#define PINMUX_GPIO131__FUNC_CONN_DSP_JDI (MTK_PIN_NO(131) | 4)
> > +#define PINMUX_GPIO131__FUNC_SCP_JTAG_TDI (MTK_PIN_NO(131) | 5)
> > +#define PINMUX_GPIO131__FUNC_LVTS_SCK (MTK_PIN_NO(131) | 6)
> > +#define PINMUX_GPIO131__FUNC_DBG_MON_A0 (MTK_PIN_NO(131) | 7)
> > +
> > +#define PINMUX_GPIO132__FUNC_GPIO132 (MTK_PIN_NO(132) | 0)
> > +#define PINMUX_GPIO132__FUNC_MD1_SIM2_SRST (MTK_PIN_NO(132) | 1)
> > +#define PINMUX_GPIO132__FUNC_MD1_SIM1_SRST (MTK_PIN_NO(132) | 2)
> > +#define PINMUX_GPIO132__FUNC_CCU_JTAG_TMS (MTK_PIN_NO(132) | 3)
> > +#define PINMUX_GPIO132__FUNC_CONN_DSP_JMS (MTK_PIN_NO(132) | 4)
> > +#define PINMUX_GPIO132__FUNC_SCP_JTAG_TMS (MTK_PIN_NO(132) | 5)
> > +#define PINMUX_GPIO132__FUNC_LVTS_SDI (MTK_PIN_NO(132) | 6)
> > +#define PINMUX_GPIO132__FUNC_DBG_MON_A1 (MTK_PIN_NO(132) | 7)
> > +
> > +#define PINMUX_GPIO133__FUNC_GPIO133 (MTK_PIN_NO(133) | 0)
> > +#define PINMUX_GPIO133__FUNC_MD1_SIM2_SIO (MTK_PIN_NO(133) | 1)
> > +#define PINMUX_GPIO133__FUNC_MD1_SIM1_SIO (MTK_PIN_NO(133) | 2)
> > +#define PINMUX_GPIO133__FUNC_CCU_JTAG_TDO (MTK_PIN_NO(133) | 3)
> > +#define PINMUX_GPIO133__FUNC_CONN_DSP_JDO (MTK_PIN_NO(133) | 4)
> > +#define PINMUX_GPIO133__FUNC_SCP_JTAG_TDO (MTK_PIN_NO(133) | 5)
> > +#define PINMUX_GPIO133__FUNC_LVTS_SCF (MTK_PIN_NO(133) | 6)
> > +#define PINMUX_GPIO133__FUNC_DBG_MON_A2 (MTK_PIN_NO(133) | 7)
> > +
> > +#define PINMUX_GPIO134__FUNC_GPIO134 (MTK_PIN_NO(134) | 0)
> > +#define PINMUX_GPIO134__FUNC_MSDC1_CLK (MTK_PIN_NO(134) | 1)
> > +#define PINMUX_GPIO134__FUNC_PCM1_CLK (MTK_PIN_NO(134) | 2)
> > +#define PINMUX_GPIO134__FUNC_SPI5_B_MI (MTK_PIN_NO(134) | 3)
> > +#define PINMUX_GPIO134__FUNC_UDI_TCK (MTK_PIN_NO(134) | 4)
> > +#define PINMUX_GPIO134__FUNC_CONN_DSP_JCK (MTK_PIN_NO(134) | 5)
> > +#define PINMUX_GPIO134__FUNC_IPU_JTAG_TCK (MTK_PIN_NO(134) | 6)
> > +#define PINMUX_GPIO134__FUNC_JTCK_SEL3 (MTK_PIN_NO(134) | 7)
> > +
> > +#define PINMUX_GPIO135__FUNC_GPIO135 (MTK_PIN_NO(135) | 0)
> > +#define PINMUX_GPIO135__FUNC_MSDC1_CMD (MTK_PIN_NO(135) | 1)
> > +#define PINMUX_GPIO135__FUNC_PCM1_SYNC (MTK_PIN_NO(135) | 2)
> > +#define PINMUX_GPIO135__FUNC_SPI5_B_CSB (MTK_PIN_NO(135) | 3)
> > +#define PINMUX_GPIO135__FUNC_UDI_TMS (MTK_PIN_NO(135) | 4)
> > +#define PINMUX_GPIO135__FUNC_CONN_DSP_JMS (MTK_PIN_NO(135) | 5)
> > +#define PINMUX_GPIO135__FUNC_IPU_JTAG_TMS (MTK_PIN_NO(135) | 6)
> > +#define PINMUX_GPIO135__FUNC_JTMS_SEL3 (MTK_PIN_NO(135) | 7)
> > +
> > +#define PINMUX_GPIO136__FUNC_GPIO136 (MTK_PIN_NO(136) | 0)
> > +#define PINMUX_GPIO136__FUNC_MSDC1_DAT3 (MTK_PIN_NO(136) | 1)
> > +#define PINMUX_GPIO136__FUNC_PCM1_DI (MTK_PIN_NO(136) | 2)
> > +#define PINMUX_GPIO136__FUNC_SPI5_B_MO (MTK_PIN_NO(136) | 3)
> > +#define PINMUX_GPIO136__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(136) | 4)
> > +#define PINMUX_GPIO136__FUNC_CONN_DSP_JINTP (MTK_PIN_NO(136) | 5)
> > +#define PINMUX_GPIO136__FUNC_CONN_MCU_AICE_TMSC (MTK_PIN_NO(136) | 6)
> > +
> > +#define PINMUX_GPIO137__FUNC_GPIO137 (MTK_PIN_NO(137) | 0)
> > +#define PINMUX_GPIO137__FUNC_MSDC1_DAT0 (MTK_PIN_NO(137) | 1)
> > +#define PINMUX_GPIO137__FUNC_PCM1_DO0 (MTK_PIN_NO(137) | 2)
> > +#define PINMUX_GPIO137__FUNC_SPI5_B_CLK (MTK_PIN_NO(137) | 3)
> > +#define PINMUX_GPIO137__FUNC_UDI_TDI (MTK_PIN_NO(137) | 4)
> > +#define PINMUX_GPIO137__FUNC_CONN_DSP_JDI (MTK_PIN_NO(137) | 5)
> > +#define PINMUX_GPIO137__FUNC_IPU_JTAG_TDI (MTK_PIN_NO(137) | 6)
> > +#define PINMUX_GPIO137__FUNC_JTDI_SEL3 (MTK_PIN_NO(137) | 7)
> > +
> > +#define PINMUX_GPIO138__FUNC_GPIO138 (MTK_PIN_NO(138) | 0)
> > +#define PINMUX_GPIO138__FUNC_MSDC1_DAT2 (MTK_PIN_NO(138) | 1)
> > +#define PINMUX_GPIO138__FUNC_PCM1_DO2 (MTK_PIN_NO(138) | 2)
> > +#define PINMUX_GPIO138__FUNC_ANT_SEL11 (MTK_PIN_NO(138) | 3)
> > +#define PINMUX_GPIO138__FUNC_UDI_NTRST (MTK_PIN_NO(138) | 4)
> > +#define PINMUX_GPIO138__FUNC_CONN_MCU_AICE_TCKC (MTK_PIN_NO(138) | 5)
> > +#define PINMUX_GPIO138__FUNC_IPU_JTAG_TRST (MTK_PIN_NO(138) | 6)
> > +#define PINMUX_GPIO138__FUNC_JTRSTN_SEL3 (MTK_PIN_NO(138) | 7)
> > +
> > +#define PINMUX_GPIO139__FUNC_GPIO139 (MTK_PIN_NO(139) | 0)
> > +#define PINMUX_GPIO139__FUNC_MSDC1_DAT1 (MTK_PIN_NO(139) | 1)
> > +#define PINMUX_GPIO139__FUNC_PCM1_DO1 (MTK_PIN_NO(139) | 2)
> > +#define PINMUX_GPIO139__FUNC_ANT_SEL12 (MTK_PIN_NO(139) | 3)
> > +#define PINMUX_GPIO139__FUNC_UDI_TDO (MTK_PIN_NO(139) | 4)
> > +#define PINMUX_GPIO139__FUNC_CONN_DSP_JDO (MTK_PIN_NO(139) | 5)
> > +#define PINMUX_GPIO139__FUNC_IPU_JTAG_TDO (MTK_PIN_NO(139) | 6)
> > +#define PINMUX_GPIO139__FUNC_JTDO_SEL3 (MTK_PIN_NO(139) | 7)
> > +
> > +#define PINMUX_GPIO140__FUNC_GPIO140 (MTK_PIN_NO(140) | 0)
> > +#define PINMUX_GPIO140__FUNC_MD_INT1_C2K_UIM0_HOT_PLUG (MTK_PIN_NO(140) | 1)
> > +#define PINMUX_GPIO140__FUNC_MD_INT2_C2K_UIM1_HOT_PLUG (MTK_PIN_NO(140) | 2)
> > +#define PINMUX_GPIO140__FUNC_ADSP_URXD0 (MTK_PIN_NO(140) | 3)
> > +#define PINMUX_GPIO140__FUNC_SCL_6306 (MTK_PIN_NO(140) | 4)
> > +#define PINMUX_GPIO140__FUNC_PTA_RXD (MTK_PIN_NO(140) | 5)
> > +#define PINMUX_GPIO140__FUNC_SSPM_URXD_AO (MTK_PIN_NO(140) | 6)
> > +
> > +#define PINMUX_GPIO141__FUNC_GPIO141 (MTK_PIN_NO(141) | 0)
> > +#define PINMUX_GPIO141__FUNC_MD_INT2_C2K_UIM1_HOT_PLUG (MTK_PIN_NO(141) | 1)
> > +#define PINMUX_GPIO141__FUNC_MD_INT1_C2K_UIM0_HOT_PLUG (MTK_PIN_NO(141) | 2)
> > +#define PINMUX_GPIO141__FUNC_ADSP_UTXD0 (MTK_PIN_NO(141) | 3)
> > +#define PINMUX_GPIO141__FUNC_SDA_6306 (MTK_PIN_NO(141) | 4)
> > +#define PINMUX_GPIO141__FUNC_PTA_TXD (MTK_PIN_NO(141) | 5)
> > +#define PINMUX_GPIO141__FUNC_SSPM_UTXD_AO (MTK_PIN_NO(141) | 6)
> > +
> > +#define PINMUX_GPIO142__FUNC_GPIO142 (MTK_PIN_NO(142) | 0)
> > +#define PINMUX_GPIO142__FUNC_SCP_VREQ_VAO (MTK_PIN_NO(142) | 1)
> > +#define PINMUX_GPIO142__FUNC_DVFSRC_EXT_REQ (MTK_PIN_NO(142) | 2)
> > +
> > +#define PINMUX_GPIO143__FUNC_GPIO143 (MTK_PIN_NO(143) | 0)
> > +#define PINMUX_GPIO143__FUNC_AUD_DAT_MOSI2 (MTK_PIN_NO(143) | 1)
> > +#define PINMUX_GPIO143__FUNC_DBG_MON_A9 (MTK_PIN_NO(143) | 7)
> > +
> > +#define PINMUX_GPIO144__FUNC_GPIO144 (MTK_PIN_NO(144) | 0)
> > +#define PINMUX_GPIO144__FUNC_AUD_NLE_MOSI1 (MTK_PIN_NO(144) | 1)
> > +#define PINMUX_GPIO144__FUNC_AUD_CLK_MISO (MTK_PIN_NO(144) | 2)
> > +#define PINMUX_GPIO144__FUNC_I2S2_MCK (MTK_PIN_NO(144) | 3)
> > +#define PINMUX_GPIO144__FUNC_UDI_TCK (MTK_PIN_NO(144) | 5)
> > +#define PINMUX_GPIO144__FUNC_UFS_UNIPRO_SDA (MTK_PIN_NO(144) | 6)
> > +#define PINMUX_GPIO144__FUNC_DBG_MON_A10 (MTK_PIN_NO(144) | 7)
> > +
> > +#define PINMUX_GPIO145__FUNC_GPIO145 (MTK_PIN_NO(145) | 0)
> > +#define PINMUX_GPIO145__FUNC_AUD_NLE_MOSI0 (MTK_PIN_NO(145) | 1)
> > +#define PINMUX_GPIO145__FUNC_AUD_SYNC_MISO (MTK_PIN_NO(145) | 2)
> > +#define PINMUX_GPIO145__FUNC_I2S2_BCK (MTK_PIN_NO(145) | 3)
> > +#define PINMUX_GPIO145__FUNC_UDI_TMS (MTK_PIN_NO(145) | 5)
> > +#define PINMUX_GPIO145__FUNC_DBG_MON_A11 (MTK_PIN_NO(145) | 7)
> > +
> > +#define PINMUX_GPIO146__FUNC_GPIO146 (MTK_PIN_NO(146) | 0)
> > +#define PINMUX_GPIO146__FUNC_AUD_DAT_MISO2 (MTK_PIN_NO(146) | 1)
> > +#define PINMUX_GPIO146__FUNC_I2S2_DI2 (MTK_PIN_NO(146) | 3)
> > +#define PINMUX_GPIO146__FUNC_UDI_TDO (MTK_PIN_NO(146) | 5)
> > +#define PINMUX_GPIO146__FUNC_DBG_MON_A14 (MTK_PIN_NO(146) | 7)
> > +
> > +#define PINMUX_GPIO147__FUNC_GPIO147 (MTK_PIN_NO(147) | 0)
> > +#define PINMUX_GPIO147__FUNC_ANT_SEL0 (MTK_PIN_NO(147) | 1)
> > +#define PINMUX_GPIO147__FUNC_PWM_3 (MTK_PIN_NO(147) | 2)
> > +
> > +#define PINMUX_GPIO148__FUNC_GPIO148 (MTK_PIN_NO(148) | 0)
> > +#define PINMUX_GPIO148__FUNC_ANT_SEL1 (MTK_PIN_NO(148) | 1)
> > +#define PINMUX_GPIO148__FUNC_SPI0_B_MI (MTK_PIN_NO(148) | 2)
> > +#define PINMUX_GPIO148__FUNC_SSPM_URXD_AO (MTK_PIN_NO(148) | 3)
> > +#define PINMUX_GPIO148__FUNC_TP_UCTS2_AO (MTK_PIN_NO(148) | 5)
> > +#define PINMUX_GPIO148__FUNC_CLKM0 (MTK_PIN_NO(148) | 6)
> > +
> > +#define PINMUX_GPIO149__FUNC_GPIO149 (MTK_PIN_NO(149) | 0)
> > +#define PINMUX_GPIO149__FUNC_ANT_SEL2 (MTK_PIN_NO(149) | 1)
> > +#define PINMUX_GPIO149__FUNC_SPI0_B_CSB (MTK_PIN_NO(149) | 2)
> > +#define PINMUX_GPIO149__FUNC_SSPM_UTXD_AO (MTK_PIN_NO(149) | 3)
> > +#define PINMUX_GPIO149__FUNC_TP_URTS2_AO (MTK_PIN_NO(149) | 5)
> > +#define PINMUX_GPIO149__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(149) | 6)
> > +
> > +#define PINMUX_GPIO150__FUNC_GPIO150 (MTK_PIN_NO(150) | 0)
> > +#define PINMUX_GPIO150__FUNC_ANT_SEL3 (MTK_PIN_NO(150) | 1)
> > +#define PINMUX_GPIO150__FUNC_SPI0_B_MO (MTK_PIN_NO(150) | 2)
> > +#define PINMUX_GPIO150__FUNC_UCTS1 (MTK_PIN_NO(150) | 3)
> > +#define PINMUX_GPIO150__FUNC_TP_UCTS1_AO (MTK_PIN_NO(150) | 5)
> > +#define PINMUX_GPIO150__FUNC_IDDIG (MTK_PIN_NO(150) | 6)
> > +#define PINMUX_GPIO150__FUNC_SCL9 (MTK_PIN_NO(150) | 7)
> > +
> > +#define PINMUX_GPIO151__FUNC_GPIO151 (MTK_PIN_NO(151) | 0)
> > +#define PINMUX_GPIO151__FUNC_ANT_SEL4 (MTK_PIN_NO(151) | 1)
> > +#define PINMUX_GPIO151__FUNC_SPI0_B_CLK (MTK_PIN_NO(151) | 2)
> > +#define PINMUX_GPIO151__FUNC_URTS1 (MTK_PIN_NO(151) | 3)
> > +#define PINMUX_GPIO151__FUNC_TP_URTS1_AO (MTK_PIN_NO(151) | 5)
> > +#define PINMUX_GPIO151__FUNC_USB_DRVVBUS (MTK_PIN_NO(151) | 6)
> > +#define PINMUX_GPIO151__FUNC_SDA9 (MTK_PIN_NO(151) | 7)
> > +
> > +#define PINMUX_GPIO152__FUNC_GPIO152 (MTK_PIN_NO(152) | 0)
> > +#define PINMUX_GPIO152__FUNC_ANT_SEL5 (MTK_PIN_NO(152) | 1)
> > +#define PINMUX_GPIO152__FUNC_SPI1_B_MI (MTK_PIN_NO(152) | 2)
> > +#define PINMUX_GPIO152__FUNC_CLKM3 (MTK_PIN_NO(152) | 3)
> > +#define PINMUX_GPIO152__FUNC_TP_URXD1_AO (MTK_PIN_NO(152) | 5)
> > +#define PINMUX_GPIO152__FUNC_SCP_SPI1_B_MI (MTK_PIN_NO(152) | 6)
> > +#define PINMUX_GPIO152__FUNC_SCL8 (MTK_PIN_NO(152) | 7)
> > +
> > +#define PINMUX_GPIO153__FUNC_GPIO153 (MTK_PIN_NO(153) | 0)
> > +#define PINMUX_GPIO153__FUNC_ANT_SEL6 (MTK_PIN_NO(153) | 1)
> > +#define PINMUX_GPIO153__FUNC_SPI1_B_CSB (MTK_PIN_NO(153) | 2)
> > +#define PINMUX_GPIO153__FUNC_SRCLKENAI0 (MTK_PIN_NO(153) | 3)
> > +#define PINMUX_GPIO153__FUNC_PWM_0 (MTK_PIN_NO(153) | 4)
> > +#define PINMUX_GPIO153__FUNC_TP_UTXD1_AO (MTK_PIN_NO(153) | 5)
> > +#define PINMUX_GPIO153__FUNC_SCP_SPI1_B_CS (MTK_PIN_NO(153) | 6)
> > +#define PINMUX_GPIO153__FUNC_SDA8 (MTK_PIN_NO(153) | 7)
> > +
> > +#define PINMUX_GPIO154__FUNC_GPIO154 (MTK_PIN_NO(154) | 0)
> > +#define PINMUX_GPIO154__FUNC_ANT_SEL7 (MTK_PIN_NO(154) | 1)
> > +#define PINMUX_GPIO154__FUNC_SPI1_B_MO (MTK_PIN_NO(154) | 2)
> > +#define PINMUX_GPIO154__FUNC_SRCLKENAI1 (MTK_PIN_NO(154) | 3)
> > +#define PINMUX_GPIO154__FUNC_TP_URXD2_AO (MTK_PIN_NO(154) | 5)
> > +#define PINMUX_GPIO154__FUNC_SCP_SPI1_B_MO (MTK_PIN_NO(154) | 6)
> > +
> > +#define PINMUX_GPIO155__FUNC_GPIO155 (MTK_PIN_NO(155) | 0)
> > +#define PINMUX_GPIO155__FUNC_ANT_SEL8 (MTK_PIN_NO(155) | 1)
> > +#define PINMUX_GPIO155__FUNC_SPI1_B_CLK (MTK_PIN_NO(155) | 2)
> > +#define PINMUX_GPIO155__FUNC_MD_INT0 (MTK_PIN_NO(155) | 3)
> > +#define PINMUX_GPIO155__FUNC_TP_UTXD2_AO (MTK_PIN_NO(155) | 5)
> > +#define PINMUX_GPIO155__FUNC_SCP_SPI1_B_CK (MTK_PIN_NO(155) | 6)
> > +#define PINMUX_GPIO155__FUNC_DBG_MON_A15 (MTK_PIN_NO(155) | 7)
> > +
> > +#define PINMUX_GPIO156__FUNC_GPIO156 (MTK_PIN_NO(156) | 0)
> > +#define PINMUX_GPIO156__FUNC_CONN_TOP_CLK (MTK_PIN_NO(156) | 1)
> > +#define PINMUX_GPIO156__FUNC_AUXIF_CLK0 (MTK_PIN_NO(156) | 2)
> > +#define PINMUX_GPIO156__FUNC_DBG_MON_A16 (MTK_PIN_NO(156) | 7)
> > +
> > +#define PINMUX_GPIO157__FUNC_GPIO157 (MTK_PIN_NO(157) | 0)
> > +#define PINMUX_GPIO157__FUNC_CONN_TOP_DATA (MTK_PIN_NO(157) | 1)
> > +#define PINMUX_GPIO157__FUNC_AUXIF_ST0 (MTK_PIN_NO(157) | 2)
> > +#define PINMUX_GPIO157__FUNC_DBG_MON_A17 (MTK_PIN_NO(157) | 7)
> > +
> > +#define PINMUX_GPIO158__FUNC_GPIO158 (MTK_PIN_NO(158) | 0)
> > +#define PINMUX_GPIO158__FUNC_CONN_HRST_B (MTK_PIN_NO(158) | 1)
> > +#define PINMUX_GPIO158__FUNC_DBG_MON_A18 (MTK_PIN_NO(158) | 7)
> > +
> > +#define PINMUX_GPIO159__FUNC_GPIO159 (MTK_PIN_NO(159) | 0)
> > +#define PINMUX_GPIO159__FUNC_CONN_WB_PTA (MTK_PIN_NO(159) | 1)
> > +#define PINMUX_GPIO159__FUNC_DBG_MON_A19 (MTK_PIN_NO(159) | 7)
> > +
> > +#define PINMUX_GPIO160__FUNC_GPIO160 (MTK_PIN_NO(160) | 0)
> > +#define PINMUX_GPIO160__FUNC_CONN_BT_CLK (MTK_PIN_NO(160) | 1)
> > +#define PINMUX_GPIO160__FUNC_AUXIF_CLK1 (MTK_PIN_NO(160) | 2)
> > +#define PINMUX_GPIO160__FUNC_DBG_MON_A20 (MTK_PIN_NO(160) | 7)
> > +
> > +#define PINMUX_GPIO161__FUNC_GPIO161 (MTK_PIN_NO(161) | 0)
> > +#define PINMUX_GPIO161__FUNC_CONN_BT_DATA (MTK_PIN_NO(161) | 1)
> > +#define PINMUX_GPIO161__FUNC_AUXIF_ST1 (MTK_PIN_NO(161) | 2)
> > +#define PINMUX_GPIO161__FUNC_DBG_MON_A21 (MTK_PIN_NO(161) | 7)
> > +
> > +#define PINMUX_GPIO162__FUNC_GPIO162 (MTK_PIN_NO(162) | 0)
> > +#define PINMUX_GPIO162__FUNC_CONN_WF_CTRL0 (MTK_PIN_NO(162) | 1)
> > +#define PINMUX_GPIO162__FUNC_DBG_MON_A22 (MTK_PIN_NO(162) | 7)
> > +
> > +#define PINMUX_GPIO163__FUNC_GPIO163 (MTK_PIN_NO(163) | 0)
> > +#define PINMUX_GPIO163__FUNC_CONN_WF_CTRL1 (MTK_PIN_NO(163) | 1)
> > +#define PINMUX_GPIO163__FUNC_UFS_MPHY_SCL (MTK_PIN_NO(163) | 2)
> > +#define PINMUX_GPIO163__FUNC_DBG_MON_A23 (MTK_PIN_NO(163) | 7)
> > +
> > +#define PINMUX_GPIO164__FUNC_GPIO164 (MTK_PIN_NO(164) | 0)
> > +#define PINMUX_GPIO164__FUNC_CONN_WF_CTRL2 (MTK_PIN_NO(164) | 1)
> > +#define PINMUX_GPIO164__FUNC_UFS_MPHY_SDA (MTK_PIN_NO(164) | 2)
> > +#define PINMUX_GPIO164__FUNC_DBG_MON_A24 (MTK_PIN_NO(164) | 7)
> > +
> > +#define PINMUX_GPIO165__FUNC_GPIO165 (MTK_PIN_NO(165) | 0)
> > +#define PINMUX_GPIO165__FUNC_CONN_WF_CTRL3 (MTK_PIN_NO(165) | 1)
> > +#define PINMUX_GPIO165__FUNC_UFS_UNIPRO_SDA (MTK_PIN_NO(165) | 2)
> > +#define PINMUX_GPIO165__FUNC_DBG_MON_A25 (MTK_PIN_NO(165) | 7)
> > +
> > +#define PINMUX_GPIO166__FUNC_GPIO166 (MTK_PIN_NO(166) | 0)
> > +#define PINMUX_GPIO166__FUNC_CONN_WF_CTRL4 (MTK_PIN_NO(166) | 1)
> > +#define PINMUX_GPIO166__FUNC_UFS_UNIPRO_SCL (MTK_PIN_NO(166) | 2)
> > +#define PINMUX_GPIO166__FUNC_DBG_MON_A26 (MTK_PIN_NO(166) | 7)
> > +
> > +#define PINMUX_GPIO167__FUNC_GPIO167 (MTK_PIN_NO(167) | 0)
> > +#define PINMUX_GPIO167__FUNC_MSDC0_CMD (MTK_PIN_NO(167) | 1)
> > +
> > +#define PINMUX_GPIO168__FUNC_GPIO168 (MTK_PIN_NO(168) | 0)
> > +#define PINMUX_GPIO168__FUNC_MSDC0_DAT0 (MTK_PIN_NO(168) | 1)
> > +
> > +#define PINMUX_GPIO169__FUNC_GPIO169 (MTK_PIN_NO(169) | 0)
> > +#define PINMUX_GPIO169__FUNC_MSDC0_DAT2 (MTK_PIN_NO(169) | 1)
> > +
> > +#define PINMUX_GPIO170__FUNC_GPIO170 (MTK_PIN_NO(170) | 0)
> > +#define PINMUX_GPIO170__FUNC_MSDC0_DAT4 (MTK_PIN_NO(170) | 1)
> > +
> > +#define PINMUX_GPIO171__FUNC_GPIO171 (MTK_PIN_NO(171) | 0)
> > +#define PINMUX_GPIO171__FUNC_MSDC0_DAT6 (MTK_PIN_NO(171) | 1)
> > +
> > +#define PINMUX_GPIO172__FUNC_GPIO172 (MTK_PIN_NO(172) | 0)
> > +#define PINMUX_GPIO172__FUNC_MSDC0_DAT1 (MTK_PIN_NO(172) | 1)
> > +
> > +#define PINMUX_GPIO173__FUNC_GPIO173 (MTK_PIN_NO(173) | 0)
> > +#define PINMUX_GPIO173__FUNC_MSDC0_DAT5 (MTK_PIN_NO(173) | 1)
> > +
> > +#define PINMUX_GPIO174__FUNC_GPIO174 (MTK_PIN_NO(174) | 0)
> > +#define PINMUX_GPIO174__FUNC_MSDC0_DAT7 (MTK_PIN_NO(174) | 1)
> > +
> > +#define PINMUX_GPIO175__FUNC_GPIO175 (MTK_PIN_NO(175) | 0)
> > +#define PINMUX_GPIO175__FUNC_MSDC0_DSL (MTK_PIN_NO(175) | 1)
> > +#define PINMUX_GPIO175__FUNC_ANT_SEL9 (MTK_PIN_NO(175) | 2)
> > +
> > +#define PINMUX_GPIO176__FUNC_GPIO176 (MTK_PIN_NO(176) | 0)
> > +#define PINMUX_GPIO176__FUNC_MSDC0_CLK (MTK_PIN_NO(176) | 1)
> > +#define PINMUX_GPIO176__FUNC_ANT_SEL10 (MTK_PIN_NO(176) | 2)
> > +
> > +#define PINMUX_GPIO177__FUNC_GPIO177 (MTK_PIN_NO(177) | 0)
> > +#define PINMUX_GPIO177__FUNC_MSDC0_DAT3 (MTK_PIN_NO(177) | 1)
> > +
> > +#define PINMUX_GPIO178__FUNC_GPIO178 (MTK_PIN_NO(178) | 0)
> > +#define PINMUX_GPIO178__FUNC_MSDC0_RSTB (MTK_PIN_NO(178) | 1)
> > +
> > +#define PINMUX_GPIO179__FUNC_GPIO179 (MTK_PIN_NO(179) | 0)
> > +#define PINMUX_GPIO179__FUNC_RFIC0_BSI_EN (MTK_PIN_NO(179) | 1)
> > +
> > +#define PINMUX_GPIO180__FUNC_GPIO180 (MTK_PIN_NO(180) | 0)
> > +#define PINMUX_GPIO180__FUNC_RFIC0_BSI_CK (MTK_PIN_NO(180) | 1)
> > +
> > +#define PINMUX_GPIO181__FUNC_GPIO181 (MTK_PIN_NO(181) | 0)
> > +#define PINMUX_GPIO181__FUNC_SRCLKENA0 (MTK_PIN_NO(181) | 1)
> > +
> > +#define PINMUX_GPIO182__FUNC_GPIO182 (MTK_PIN_NO(182) | 0)
> > +#define PINMUX_GPIO182__FUNC_SRCLKENA1 (MTK_PIN_NO(182) | 1)
> > +
> > +#define PINMUX_GPIO183__FUNC_GPIO183 (MTK_PIN_NO(183) | 0)
> > +#define PINMUX_GPIO183__FUNC_WATCHDOG (MTK_PIN_NO(183) | 1)
> > +
> > +#define PINMUX_GPIO184__FUNC_GPIO184 (MTK_PIN_NO(184) | 0)
> > +#define PINMUX_GPIO184__FUNC_PWRAP_SPI0_MI (MTK_PIN_NO(184) | 1)
> > +#define PINMUX_GPIO184__FUNC_PWRAP_SPI0_MO (MTK_PIN_NO(184) | 2)
> > +
> > +#define PINMUX_GPIO185__FUNC_GPIO185 (MTK_PIN_NO(185) | 0)
> > +#define PINMUX_GPIO185__FUNC_PWRAP_SPI0_CSN (MTK_PIN_NO(185) | 1)
> > +
> > +#define PINMUX_GPIO186__FUNC_GPIO186 (MTK_PIN_NO(186) | 0)
> > +#define PINMUX_GPIO186__FUNC_PWRAP_SPI0_MO (MTK_PIN_NO(186) | 1)
> > +#define PINMUX_GPIO186__FUNC_PWRAP_SPI0_MI (MTK_PIN_NO(186) | 2)
> > +
> > +#define PINMUX_GPIO187__FUNC_GPIO187 (MTK_PIN_NO(187) | 0)
> > +#define PINMUX_GPIO187__FUNC_PWRAP_SPI0_CK (MTK_PIN_NO(187) | 1)
> > +
> > +#define PINMUX_GPIO188__FUNC_GPIO188 (MTK_PIN_NO(188) | 0)
> > +#define PINMUX_GPIO188__FUNC_RTC32K_CK (MTK_PIN_NO(188) | 1)
> > +
> > +#define PINMUX_GPIO189__FUNC_GPIO189 (MTK_PIN_NO(189) | 0)
> > +#define PINMUX_GPIO189__FUNC_AUD_CLK_MOSI (MTK_PIN_NO(189) | 1)
> > +#define PINMUX_GPIO189__FUNC_I2S1_MCK (MTK_PIN_NO(189) | 3)
> > +#define PINMUX_GPIO189__FUNC_UFS_UNIPRO_SCL (MTK_PIN_NO(189) | 6)
> > +
> > +#define PINMUX_GPIO190__FUNC_GPIO190 (MTK_PIN_NO(190) | 0)
> > +#define PINMUX_GPIO190__FUNC_AUD_SYNC_MOSI (MTK_PIN_NO(190) | 1)
> > +#define PINMUX_GPIO190__FUNC_I2S1_BCK (MTK_PIN_NO(190) | 3)
> > +#define PINMUX_GPIO190__FUNC_DBG_MON_A6 (MTK_PIN_NO(190) | 7)
> > +
> > +#define PINMUX_GPIO191__FUNC_GPIO191 (MTK_PIN_NO(191) | 0)
> > +#define PINMUX_GPIO191__FUNC_AUD_DAT_MOSI0 (MTK_PIN_NO(191) | 1)
> > +#define PINMUX_GPIO191__FUNC_I2S1_LRCK (MTK_PIN_NO(191) | 3)
> > +#define PINMUX_GPIO191__FUNC_DBG_MON_A7 (MTK_PIN_NO(191) | 7)
> > +
> > +#define PINMUX_GPIO192__FUNC_GPIO192 (MTK_PIN_NO(192) | 0)
> > +#define PINMUX_GPIO192__FUNC_AUD_DAT_MOSI1 (MTK_PIN_NO(192) | 1)
> > +#define PINMUX_GPIO192__FUNC_I2S1_DO (MTK_PIN_NO(192) | 3)
> > +#define PINMUX_GPIO192__FUNC_UFS_MPHY_SDA (MTK_PIN_NO(192) | 6)
> > +#define PINMUX_GPIO192__FUNC_DBG_MON_A8 (MTK_PIN_NO(192) | 7)
> > +
> > +#define PINMUX_GPIO193__FUNC_GPIO193 (MTK_PIN_NO(193) | 0)
> > +#define PINMUX_GPIO193__FUNC_AUD_DAT_MISO0 (MTK_PIN_NO(193) | 1)
> > +#define PINMUX_GPIO193__FUNC_VOW_DAT_MISO (MTK_PIN_NO(193) | 2)
> > +#define PINMUX_GPIO193__FUNC_I2S2_LRCK (MTK_PIN_NO(193) | 3)
> > +#define PINMUX_GPIO193__FUNC_UDI_TDI (MTK_PIN_NO(193) | 5)
> > +#define PINMUX_GPIO193__FUNC_DBG_MON_A12 (MTK_PIN_NO(193) | 7)
> > +
> > +#define PINMUX_GPIO194__FUNC_GPIO194 (MTK_PIN_NO(194) | 0)
> > +#define PINMUX_GPIO194__FUNC_AUD_DAT_MISO1 (MTK_PIN_NO(194) | 1)
> > +#define PINMUX_GPIO194__FUNC_VOW_CLK_MISO (MTK_PIN_NO(194) | 2)
> > +#define PINMUX_GPIO194__FUNC_I2S2_DI (MTK_PIN_NO(194) | 3)
> > +#define PINMUX_GPIO194__FUNC_UDI_NTRST (MTK_PIN_NO(194) | 5)
> > +#define PINMUX_GPIO194__FUNC_UFS_MPHY_SCL (MTK_PIN_NO(194) | 6)
> > +#define PINMUX_GPIO194__FUNC_DBG_MON_A13 (MTK_PIN_NO(194) | 7)
> > +
> > +#define PINMUX_GPIO195__FUNC_GPIO195 (MTK_PIN_NO(195) | 0)
> > +#define PINMUX_GPIO195__FUNC_ADSP_JTAG_TCK (MTK_PIN_NO(195) | 3)
> > +#define PINMUX_GPIO195__FUNC_VPU_UDI_TCK (MTK_PIN_NO(195) | 4)
> > +#define PINMUX_GPIO195__FUNC_SPM_JTAG_TCK (MTK_PIN_NO(195) | 5)
> > +#define PINMUX_GPIO195__FUNC_SSPM_JTAG_TCK (MTK_PIN_NO(195) | 6)
> > +
> > +#define PINMUX_GPIO196__FUNC_GPIO196 (MTK_PIN_NO(196) | 0)
> > +#define PINMUX_GPIO196__FUNC_CMMCLK4 (MTK_PIN_NO(196) | 1)
> > +#define PINMUX_GPIO196__FUNC_ADSP_JTAG_TDI (MTK_PIN_NO(196) | 3)
> > +#define PINMUX_GPIO196__FUNC_VPU_UDI_TDI (MTK_PIN_NO(196) | 4)
> > +#define PINMUX_GPIO196__FUNC_SPM_JTAG_TDI (MTK_PIN_NO(196) | 5)
> > +#define PINMUX_GPIO196__FUNC_SSPM_JTAG_TDI (MTK_PIN_NO(196) | 6)
> > +
> > +#define PINMUX_GPIO197__FUNC_GPIO197 (MTK_PIN_NO(197) | 0)
> > +#define PINMUX_GPIO197__FUNC_ADSP_JTAG_TDO (MTK_PIN_NO(197) | 3)
> > +#define PINMUX_GPIO197__FUNC_VPU_UDI_TDO (MTK_PIN_NO(197) | 4)
> > +#define PINMUX_GPIO197__FUNC_SPM_JTAG_TDO (MTK_PIN_NO(197) | 5)
> > +#define PINMUX_GPIO197__FUNC_SSPM_JTAG_TDO (MTK_PIN_NO(197) | 6)
> > +
> > +#define PINMUX_GPIO198__FUNC_GPIO198 (MTK_PIN_NO(198) | 0)
> > +#define PINMUX_GPIO198__FUNC_SCL7 (MTK_PIN_NO(198) | 1)
> > +
> > +#define PINMUX_GPIO199__FUNC_GPIO199 (MTK_PIN_NO(199) | 0)
> > +#define PINMUX_GPIO199__FUNC_SDA7 (MTK_PIN_NO(199) | 1)
> > +
> > +#define PINMUX_GPIO200__FUNC_GPIO200 (MTK_PIN_NO(200) | 0)
> > +#define PINMUX_GPIO200__FUNC_URXD1 (MTK_PIN_NO(200) | 1)
> > +#define PINMUX_GPIO200__FUNC_ADSP_URXD0 (MTK_PIN_NO(200) | 2)
> > +#define PINMUX_GPIO200__FUNC_TP_URXD1_AO (MTK_PIN_NO(200) | 3)
> > +#define PINMUX_GPIO200__FUNC_SSPM_URXD_AO (MTK_PIN_NO(200) | 4)
> > +#define PINMUX_GPIO200__FUNC_TP_URXD2_AO (MTK_PIN_NO(200) | 5)
> > +#define PINMUX_GPIO200__FUNC_MBISTREADEN_TRIGGER (MTK_PIN_NO(200) | 6)
> > +
> > +#define PINMUX_GPIO201__FUNC_GPIO201 (MTK_PIN_NO(201) | 0)
> > +#define PINMUX_GPIO201__FUNC_UTXD1 (MTK_PIN_NO(201) | 1)
> > +#define PINMUX_GPIO201__FUNC_ADSP_UTXD0 (MTK_PIN_NO(201) | 2)
> > +#define PINMUX_GPIO201__FUNC_TP_UTXD1_AO (MTK_PIN_NO(201) | 3)
> > +#define PINMUX_GPIO201__FUNC_SSPM_UTXD_AO (MTK_PIN_NO(201) | 4)
> > +#define PINMUX_GPIO201__FUNC_TP_UTXD2_AO (MTK_PIN_NO(201) | 5)
> > +#define PINMUX_GPIO201__FUNC_MBISTWRITEEN_TRIGGER (MTK_PIN_NO(201) | 6)
> > +
> > +#define PINMUX_GPIO202__FUNC_GPIO202 (MTK_PIN_NO(202) | 0)
> > +#define PINMUX_GPIO202__FUNC_PWM_3 (MTK_PIN_NO(202) | 1)
> > +#define PINMUX_GPIO202__FUNC_CLKM3 (MTK_PIN_NO(202) | 2)
> > +
> > +#define PINMUX_GPIO203__FUNC_GPIO203 (MTK_PIN_NO(203) | 0)
> > +
> > +#define PINMUX_GPIO204__FUNC_GPIO204 (MTK_PIN_NO(204) | 0)
> > +
> > +#define PINMUX_GPIO205__FUNC_GPIO205 (MTK_PIN_NO(205) | 0)
> > +
> > +#define PINMUX_GPIO206__FUNC_GPIO206 (MTK_PIN_NO(206) | 0)
> > +
> > +#define PINMUX_GPIO207__FUNC_GPIO207 (MTK_PIN_NO(207) | 0)
> > +
> > +#define PINMUX_GPIO208__FUNC_GPIO208 (MTK_PIN_NO(208) | 0)
> > +
> > +#define PINMUX_GPIO209__FUNC_GPIO209 (MTK_PIN_NO(209) | 0)
> > +
> > +#endif /* __MT6779-PINFUNC_H */
> > 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
