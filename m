Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6372D22A0D
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 May 2019 04:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOZUmSQnxACezYWvkUZTJHG18MXPBogIPjglLMV/LNg=; b=GpDYEySW00x+P0
	tsTCKfC0L1IVUi3qu1hx6x8yuWOSJ6buPCXsu6oJW11WoqFhDW2VxlwRUW68J5rl3LGqrd01uFNmb
	foVNf4bDuxMQmb74yM67aUxhcDU+1GcHYLqiWZC+B8vt98NCGXdwTRNaU7PQJR+b55kOtuA+AG3Sg
	luZdQ0zfEazloACXECoXV8rMfVjCCegH1dNtuZuokmBJ3ZkCloh/ugz3xZi+Y8tzScVMEaF7Uz9eJ
	3H7RLwiqeeH6pkXGAPsedYcJiQkMJM9NjRwy6iQU5SMsGzLb4/iVasfDy/w0EmhffcJ+ZdBWF1BM0
	nJcKbAnXW94bXBtBzM6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSYLz-0002DS-CJ; Mon, 20 May 2019 02:48:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSYLp-00026v-2I; Mon, 20 May 2019 02:48:35 +0000
X-UUID: ced84a1b23c54dcf85c7cecce83d45c3-20190519
X-UUID: ced84a1b23c54dcf85c7cecce83d45c3-20190519
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1072104395; Sun, 19 May 2019 18:48:27 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 19:48:25 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS33N1.mediatek.inc (172.27.4.75) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 10:48:22 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 10:48:22 +0800
Message-ID: <1558320502.19121.2.camel@mtksdaap41>
Subject: Re: [v3 2/3] drm/mediatek: separate mipi_tx to different file
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Mon, 20 May 2019 10:48:22 +0800
In-Reply-To: <20190518082227.14507-3-jitao.shi@mediatek.com>
References: <20190518082227.14507-1-jitao.shi@mediatek.com>
 <20190518082227.14507-3-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_194833_126034_F88DACE4 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com, Ajay
 Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul
 Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Kumar Gala <galak@codeaurora.org>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Jitao:

On Sat, 2019-05-18 at 16:22 +0800, Jitao Shi wrote:
> Different IC has different mipi_tx setting of dsi.
> This patch separates the mipi_tx hardware relate part for mt8173.

This patch looks good to me except the last blank line, I'll remove it
before I apply this patch.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/Makefile             |   1 +
>  drivers/gpu/drm/mediatek/mtk_mipi_tx.c        | 342 ++----------------
>  drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |  49 +++
>  drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c | 289 +++++++++++++++
>  4 files changed, 362 insertions(+), 319 deletions(-)
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_mipi_tx.h
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c
> 
> diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
> index 82ae49c64221..2c8de1f5a5ee 100644
> --- a/drivers/gpu/drm/mediatek/Makefile
> +++ b/drivers/gpu/drm/mediatek/Makefile
> @@ -12,6 +12,7 @@ mediatek-drm-y := mtk_disp_color.o \
>  		  mtk_drm_plane.o \
>  		  mtk_dsi.o \
>  		  mtk_mipi_tx.o \
> +		  mtk_mt8173_mipi_tx.o \
>  		  mtk_dpi.o
>  
>  obj-$(CONFIG_DRM_MEDIATEK) += mediatek-drm.o
> diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
> index 90e913108950..46bc02cfe85c 100644
> --- a/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
> +++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
> @@ -11,292 +11,39 @@
>   * GNU General Public License for more details.
>   */
>  
> -#include <linux/clk.h>
> -#include <linux/clk-provider.h>
> -#include <linux/delay.h>
> -#include <linux/io.h>
> -#include <linux/module.h>
> -#include <linux/of_device.h>
> -#include <linux/platform_device.h>
> -#include <linux/phy/phy.h>
> -
> -#define MIPITX_DSI_CON		0x00
> -#define RG_DSI_LDOCORE_EN		BIT(0)
> -#define RG_DSI_CKG_LDOOUT_EN		BIT(1)
> -#define RG_DSI_BCLK_SEL			(3 << 2)
> -#define RG_DSI_LD_IDX_SEL		(7 << 4)
> -#define RG_DSI_PHYCLK_SEL		(2 << 8)
> -#define RG_DSI_DSICLK_FREQ_SEL		BIT(10)
> -#define RG_DSI_LPTX_CLMP_EN		BIT(11)
> -
> -#define MIPITX_DSI_CLOCK_LANE	0x04
> -#define MIPITX_DSI_DATA_LANE0	0x08
> -#define MIPITX_DSI_DATA_LANE1	0x0c
> -#define MIPITX_DSI_DATA_LANE2	0x10
> -#define MIPITX_DSI_DATA_LANE3	0x14
> -#define RG_DSI_LNTx_LDOOUT_EN		BIT(0)
> -#define RG_DSI_LNTx_CKLANE_EN		BIT(1)
> -#define RG_DSI_LNTx_LPTX_IPLUS1		BIT(2)
> -#define RG_DSI_LNTx_LPTX_IPLUS2		BIT(3)
> -#define RG_DSI_LNTx_LPTX_IMINUS		BIT(4)
> -#define RG_DSI_LNTx_LPCD_IPLUS		BIT(5)
> -#define RG_DSI_LNTx_LPCD_IMINUS		BIT(6)
> -#define RG_DSI_LNTx_RT_CODE		(0xf << 8)
> -
> -#define MIPITX_DSI_TOP_CON	0x40
> -#define RG_DSI_LNT_INTR_EN		BIT(0)
> -#define RG_DSI_LNT_HS_BIAS_EN		BIT(1)
> -#define RG_DSI_LNT_IMP_CAL_EN		BIT(2)
> -#define RG_DSI_LNT_TESTMODE_EN		BIT(3)
> -#define RG_DSI_LNT_IMP_CAL_CODE		(0xf << 4)
> -#define RG_DSI_LNT_AIO_SEL		(7 << 8)
> -#define RG_DSI_PAD_TIE_LOW_EN		BIT(11)
> -#define RG_DSI_DEBUG_INPUT_EN		BIT(12)
> -#define RG_DSI_PRESERVE			(7 << 13)
> -
> -#define MIPITX_DSI_BG_CON	0x44
> -#define RG_DSI_BG_CORE_EN		BIT(0)
> -#define RG_DSI_BG_CKEN			BIT(1)
> -#define RG_DSI_BG_DIV			(0x3 << 2)
> -#define RG_DSI_BG_FAST_CHARGE		BIT(4)
> -#define RG_DSI_VOUT_MSK			(0x3ffff << 5)
> -#define RG_DSI_V12_SEL			(7 << 5)
> -#define RG_DSI_V10_SEL			(7 << 8)
> -#define RG_DSI_V072_SEL			(7 << 11)
> -#define RG_DSI_V04_SEL			(7 << 14)
> -#define RG_DSI_V032_SEL			(7 << 17)
> -#define RG_DSI_V02_SEL			(7 << 20)
> -#define RG_DSI_BG_R1_TRIM		(0xf << 24)
> -#define RG_DSI_BG_R2_TRIM		(0xf << 28)
> -
> -#define MIPITX_DSI_PLL_CON0	0x50
> -#define RG_DSI_MPPLL_PLL_EN		BIT(0)
> -#define RG_DSI_MPPLL_DIV_MSK		(0x1ff << 1)
> -#define RG_DSI_MPPLL_PREDIV		(3 << 1)
> -#define RG_DSI_MPPLL_TXDIV0		(3 << 3)
> -#define RG_DSI_MPPLL_TXDIV1		(3 << 5)
> -#define RG_DSI_MPPLL_POSDIV		(7 << 7)
> -#define RG_DSI_MPPLL_MONVC_EN		BIT(10)
> -#define RG_DSI_MPPLL_MONREF_EN		BIT(11)
> -#define RG_DSI_MPPLL_VOD_EN		BIT(12)
> -
> -#define MIPITX_DSI_PLL_CON1	0x54
> -#define RG_DSI_MPPLL_SDM_FRA_EN		BIT(0)
> -#define RG_DSI_MPPLL_SDM_SSC_PH_INIT	BIT(1)
> -#define RG_DSI_MPPLL_SDM_SSC_EN		BIT(2)
> -#define RG_DSI_MPPLL_SDM_SSC_PRD	(0xffff << 16)
> -
> -#define MIPITX_DSI_PLL_CON2	0x58
> -
> -#define MIPITX_DSI_PLL_TOP	0x64
> -#define RG_DSI_MPPLL_PRESERVE		(0xff << 8)
> -
> -#define MIPITX_DSI_PLL_PWR	0x68
> -#define RG_DSI_MPPLL_SDM_PWR_ON		BIT(0)
> -#define RG_DSI_MPPLL_SDM_ISO_EN		BIT(1)
> -#define RG_DSI_MPPLL_SDM_PWR_ACK	BIT(8)
> -
> -#define MIPITX_DSI_SW_CTRL	0x80
> -#define SW_CTRL_EN			BIT(0)
> -
> -#define MIPITX_DSI_SW_CTRL_CON0	0x84
> -#define SW_LNTC_LPTX_PRE_OE		BIT(0)
> -#define SW_LNTC_LPTX_OE			BIT(1)
> -#define SW_LNTC_LPTX_P			BIT(2)
> -#define SW_LNTC_LPTX_N			BIT(3)
> -#define SW_LNTC_HSTX_PRE_OE		BIT(4)
> -#define SW_LNTC_HSTX_OE			BIT(5)
> -#define SW_LNTC_HSTX_ZEROCLK		BIT(6)
> -#define SW_LNT0_LPTX_PRE_OE		BIT(7)
> -#define SW_LNT0_LPTX_OE			BIT(8)
> -#define SW_LNT0_LPTX_P			BIT(9)
> -#define SW_LNT0_LPTX_N			BIT(10)
> -#define SW_LNT0_HSTX_PRE_OE		BIT(11)
> -#define SW_LNT0_HSTX_OE			BIT(12)
> -#define SW_LNT0_LPRX_EN			BIT(13)
> -#define SW_LNT1_LPTX_PRE_OE		BIT(14)
> -#define SW_LNT1_LPTX_OE			BIT(15)
> -#define SW_LNT1_LPTX_P			BIT(16)
> -#define SW_LNT1_LPTX_N			BIT(17)
> -#define SW_LNT1_HSTX_PRE_OE		BIT(18)
> -#define SW_LNT1_HSTX_OE			BIT(19)
> -#define SW_LNT2_LPTX_PRE_OE		BIT(20)
> -#define SW_LNT2_LPTX_OE			BIT(21)
> -#define SW_LNT2_LPTX_P			BIT(22)
> -#define SW_LNT2_LPTX_N			BIT(23)
> -#define SW_LNT2_HSTX_PRE_OE		BIT(24)
> -#define SW_LNT2_HSTX_OE			BIT(25)
> -
> -struct mtk_mipitx_data {
> -	const u32 mppll_preserve;
> -};
> -
> -struct mtk_mipi_tx {
> -	struct device *dev;
> -	void __iomem *regs;
> -	u32 data_rate;
> -	const struct mtk_mipitx_data *driver_data;
> -	struct clk_hw pll_hw;
> -	struct clk *pll;
> -};
> +#include "mtk_mipi_tx.h"
>  
> -static inline struct mtk_mipi_tx *mtk_mipi_tx_from_clk_hw(struct clk_hw *hw)
> +inline struct mtk_mipi_tx *mtk_mipi_tx_from_clk_hw(struct clk_hw *hw)
>  {
>  	return container_of(hw, struct mtk_mipi_tx, pll_hw);
>  }
>  
> -static void mtk_mipi_tx_clear_bits(struct mtk_mipi_tx *mipi_tx, u32 offset,
> -				   u32 bits)
> +void mtk_mipi_tx_clear_bits(struct mtk_mipi_tx *mipi_tx, u32 offset,
> +			    u32 bits)
>  {
>  	u32 temp = readl(mipi_tx->regs + offset);
>  
>  	writel(temp & ~bits, mipi_tx->regs + offset);
>  }
>  
> -static void mtk_mipi_tx_set_bits(struct mtk_mipi_tx *mipi_tx, u32 offset,
> -				 u32 bits)
> +void mtk_mipi_tx_set_bits(struct mtk_mipi_tx *mipi_tx, u32 offset,
> +			  u32 bits)
>  {
>  	u32 temp = readl(mipi_tx->regs + offset);
>  
>  	writel(temp | bits, mipi_tx->regs + offset);
>  }
>  
> -static void mtk_mipi_tx_update_bits(struct mtk_mipi_tx *mipi_tx, u32 offset,
> -				    u32 mask, u32 data)
> +void mtk_mipi_tx_update_bits(struct mtk_mipi_tx *mipi_tx, u32 offset,
> +			     u32 mask, u32 data)
>  {
>  	u32 temp = readl(mipi_tx->regs + offset);
>  
>  	writel((temp & ~mask) | (data & mask), mipi_tx->regs + offset);
>  }
>  
> -static int mtk_mipi_tx_pll_prepare(struct clk_hw *hw)
> -{
> -	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> -	u8 txdiv, txdiv0, txdiv1;
> -	u64 pcw;
> -
> -	dev_dbg(mipi_tx->dev, "prepare: %u Hz\n", mipi_tx->data_rate);
> -
> -	if (mipi_tx->data_rate >= 500000000) {
> -		txdiv = 1;
> -		txdiv0 = 0;
> -		txdiv1 = 0;
> -	} else if (mipi_tx->data_rate >= 250000000) {
> -		txdiv = 2;
> -		txdiv0 = 1;
> -		txdiv1 = 0;
> -	} else if (mipi_tx->data_rate >= 125000000) {
> -		txdiv = 4;
> -		txdiv0 = 2;
> -		txdiv1 = 0;
> -	} else if (mipi_tx->data_rate > 62000000) {
> -		txdiv = 8;
> -		txdiv0 = 2;
> -		txdiv1 = 1;
> -	} else if (mipi_tx->data_rate >= 50000000) {
> -		txdiv = 16;
> -		txdiv0 = 2;
> -		txdiv1 = 2;
> -	} else {
> -		return -EINVAL;
> -	}
> -
> -	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_BG_CON,
> -				RG_DSI_VOUT_MSK |
> -				RG_DSI_BG_CKEN | RG_DSI_BG_CORE_EN,
> -				(4 << 20) | (4 << 17) | (4 << 14) |
> -				(4 << 11) | (4 << 8) | (4 << 5) |
> -				RG_DSI_BG_CKEN | RG_DSI_BG_CORE_EN);
> -
> -	usleep_range(30, 100);
> -
> -	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_TOP_CON,
> -				RG_DSI_LNT_IMP_CAL_CODE | RG_DSI_LNT_HS_BIAS_EN,
> -				(8 << 4) | RG_DSI_LNT_HS_BIAS_EN);
> -
> -	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_DSI_CON,
> -			     RG_DSI_CKG_LDOOUT_EN | RG_DSI_LDOCORE_EN);
> -
> -	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_PWR,
> -				RG_DSI_MPPLL_SDM_PWR_ON |
> -				RG_DSI_MPPLL_SDM_ISO_EN,
> -				RG_DSI_MPPLL_SDM_PWR_ON);
> -
> -	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_PLL_CON0,
> -			       RG_DSI_MPPLL_PLL_EN);
> -
> -	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_CON0,
> -				RG_DSI_MPPLL_TXDIV0 | RG_DSI_MPPLL_TXDIV1 |
> -				RG_DSI_MPPLL_PREDIV,
> -				(txdiv0 << 3) | (txdiv1 << 5));
> -
> -	/*
> -	 * PLL PCW config
> -	 * PCW bit 24~30 = integer part of pcw
> -	 * PCW bit 0~23 = fractional part of pcw
> -	 * pcw = data_Rate*4*txdiv/(Ref_clk*2);
> -	 * Post DIV =4, so need data_Rate*4
> -	 * Ref_clk is 26MHz
> -	 */
> -	pcw = div_u64(((u64)mipi_tx->data_rate * 2 * txdiv) << 24,
> -		      26000000);
> -	writel(pcw, mipi_tx->regs + MIPITX_DSI_PLL_CON2);
> -
> -	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_DSI_PLL_CON1,
> -			     RG_DSI_MPPLL_SDM_FRA_EN);
> -
> -	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_DSI_PLL_CON0, RG_DSI_MPPLL_PLL_EN);
> -
> -	usleep_range(20, 100);
> -
> -	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_PLL_CON1,
> -			       RG_DSI_MPPLL_SDM_SSC_EN);
> -
> -	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_TOP,
> -				RG_DSI_MPPLL_PRESERVE,
> -				mipi_tx->driver_data->mppll_preserve);
> -
> -	return 0;
> -}
> -
> -static void mtk_mipi_tx_pll_unprepare(struct clk_hw *hw)
> -{
> -	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> -
> -	dev_dbg(mipi_tx->dev, "unprepare\n");
> -
> -	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_PLL_CON0,
> -			       RG_DSI_MPPLL_PLL_EN);
> -
> -	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_TOP,
> -				RG_DSI_MPPLL_PRESERVE, 0);
> -
> -	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_PWR,
> -				RG_DSI_MPPLL_SDM_ISO_EN |
> -				RG_DSI_MPPLL_SDM_PWR_ON,
> -				RG_DSI_MPPLL_SDM_ISO_EN);
> -
> -	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_TOP_CON,
> -			       RG_DSI_LNT_HS_BIAS_EN);
> -
> -	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_CON,
> -			       RG_DSI_CKG_LDOOUT_EN | RG_DSI_LDOCORE_EN);
> -
> -	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_BG_CON,
> -			       RG_DSI_BG_CKEN | RG_DSI_BG_CORE_EN);
> -
> -	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_PLL_CON0,
> -			       RG_DSI_MPPLL_DIV_MSK);
> -}
> -
> -static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
> -				       unsigned long *prate)
> -{
> -	return clamp_val(rate, 50000000, 1250000000);
> -}
> -
> -static int mtk_mipi_tx_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> -				    unsigned long parent_rate)
> +int mtk_mipi_tx_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> +			     unsigned long parent_rate)
>  {
>  	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
>  
> @@ -307,37 +54,14 @@ static int mtk_mipi_tx_pll_set_rate(struct clk_hw *hw, unsigned long rate,
>  	return 0;
>  }
>  
> -static unsigned long mtk_mipi_tx_pll_recalc_rate(struct clk_hw *hw,
> -						 unsigned long parent_rate)
> +unsigned long mtk_mipi_tx_pll_recalc_rate(struct clk_hw *hw,
> +					  unsigned long parent_rate)
>  {
>  	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
>  
>  	return mipi_tx->data_rate;
>  }
>  
> -static const struct clk_ops mtk_mipi_tx_pll_ops = {
> -	.prepare = mtk_mipi_tx_pll_prepare,
> -	.unprepare = mtk_mipi_tx_pll_unprepare,
> -	.round_rate = mtk_mipi_tx_pll_round_rate,
> -	.set_rate = mtk_mipi_tx_pll_set_rate,
> -	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
> -};
> -
> -static int mtk_mipi_tx_power_on_signal(struct phy *phy)
> -{
> -	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
> -	u32 reg;
> -
> -	for (reg = MIPITX_DSI_CLOCK_LANE;
> -	     reg <= MIPITX_DSI_DATA_LANE3; reg += 4)
> -		mtk_mipi_tx_set_bits(mipi_tx, reg, RG_DSI_LNTx_LDOOUT_EN);
> -
> -	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_TOP_CON,
> -			       RG_DSI_PAD_TIE_LOW_EN);
> -
> -	return 0;
> -}
> -
>  static int mtk_mipi_tx_power_on(struct phy *phy)
>  {
>  	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
> @@ -349,30 +73,16 @@ static int mtk_mipi_tx_power_on(struct phy *phy)
>  		return ret;
>  
>  	/* Enable DSI Lane LDO outputs, disable pad tie low */
> -	mtk_mipi_tx_power_on_signal(phy);
> -
> +	mipi_tx->driver_data->mipi_tx_enable_signal(phy);
>  	return 0;
>  }
>  
> -static void mtk_mipi_tx_power_off_signal(struct phy *phy)
> -{
> -	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
> -	u32 reg;
> -
> -	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_DSI_TOP_CON,
> -			     RG_DSI_PAD_TIE_LOW_EN);
> -
> -	for (reg = MIPITX_DSI_CLOCK_LANE;
> -	     reg <= MIPITX_DSI_DATA_LANE3; reg += 4)
> -		mtk_mipi_tx_clear_bits(mipi_tx, reg, RG_DSI_LNTx_LDOOUT_EN);
> -}
> -
>  static int mtk_mipi_tx_power_off(struct phy *phy)
>  {
>  	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
>  
>  	/* Enable pad tie low, disable DSI Lane LDO outputs */
> -	mtk_mipi_tx_power_off_signal(phy);
> +	mipi_tx->driver_data->mipi_tx_disable_signal(phy);
>  
>  	/* Disable PLL and power down core */
>  	clk_disable_unprepare(mipi_tx->pll);
> @@ -391,10 +101,8 @@ static int mtk_mipi_tx_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct mtk_mipi_tx *mipi_tx;
>  	struct resource *mem;
> -	struct clk *ref_clk;
>  	const char *ref_clk_name;
>  	struct clk_init_data clk_init = {
> -		.ops = &mtk_mipi_tx_pll_ops,
>  		.num_parents = 1,
>  		.parent_names = (const char * const *)&ref_clk_name,
>  		.flags = CLK_SET_RATE_GATE,
> @@ -408,6 +116,7 @@ static int mtk_mipi_tx_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	mipi_tx->driver_data = of_device_get_match_data(dev);
> +
>  	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	mipi_tx->regs = devm_ioremap_resource(dev, mem);
>  	if (IS_ERR(mipi_tx->regs)) {
> @@ -416,13 +125,14 @@ static int mtk_mipi_tx_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	ref_clk = devm_clk_get(dev, NULL);
> -	if (IS_ERR(ref_clk)) {
> -		ret = PTR_ERR(ref_clk);
> +	mipi_tx->ref_clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(mipi_tx->ref_clk)) {
> +		ret = PTR_ERR(mipi_tx->ref_clk);
>  		dev_err(dev, "Failed to get reference clock: %d\n", ret);
>  		return ret;
>  	}
> -	ref_clk_name = __clk_get_name(ref_clk);
> +
> +	ref_clk_name = __clk_get_name(mipi_tx->ref_clk);
>  
>  	ret = of_property_read_string(dev->of_node, "clock-output-names",
>  				      &clk_init.name);
> @@ -431,6 +141,8 @@ static int mtk_mipi_tx_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	clk_init.ops = mipi_tx->driver_data->mipi_tx_clk_ops;
> +
>  	mipi_tx->pll_hw.init = &clk_init;
>  	mipi_tx->pll = devm_clk_register(dev, &mipi_tx->pll_hw);
>  	if (IS_ERR(mipi_tx->pll)) {
> @@ -465,20 +177,12 @@ static int mtk_mipi_tx_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -static const struct mtk_mipitx_data mt2701_mipitx_data = {
> -	.mppll_preserve = (3 << 8)
> -};
> -
> -static const struct mtk_mipitx_data mt8173_mipitx_data = {
> -	.mppll_preserve = (0 << 8)
> -};
> -
>  static const struct of_device_id mtk_mipi_tx_match[] = {
>  	{ .compatible = "mediatek,mt2701-mipi-tx",
>  	  .data = &mt2701_mipitx_data },
>  	{ .compatible = "mediatek,mt8173-mipi-tx",
>  	  .data = &mt8173_mipitx_data },
> -	{},
> +	{ },
>  };
>  
>  struct platform_driver mtk_mipi_tx_driver = {
> diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
> new file mode 100644
> index 000000000000..660726924992
> --- /dev/null
> +++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
> @@ -0,0 +1,49 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + * Author: Jitao Shi <jitao.shi@mediatek.com>
> + */
> +
> +#ifndef _MTK_MIPI_TX_H
> +#define _MTK_MIPI_TX_H
> +
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/phy/phy.h>
> +
> +struct mtk_mipitx_data {
> +	const u32 mppll_preserve;
> +	const struct clk_ops *mipi_tx_clk_ops;
> +	void (*mipi_tx_enable_signal)(struct phy *phy);
> +	void (*mipi_tx_disable_signal)(struct phy *phy);
> +};
> +
> +struct mtk_mipi_tx {
> +	struct device *dev;
> +	void __iomem *regs;
> +	u32 data_rate;
> +	struct clk *ref_clk;
> +	const struct mtk_mipitx_data *driver_data;
> +	struct clk_hw pll_hw;
> +	struct clk *pll;
> +};
> +
> +struct mtk_mipi_tx *mtk_mipi_tx_from_clk_hw(struct clk_hw *hw);
> +void mtk_mipi_tx_clear_bits(struct mtk_mipi_tx *mipi_tx, u32 offset, u32 bits);
> +void mtk_mipi_tx_set_bits(struct mtk_mipi_tx *mipi_tx, u32 offset, u32 bits);
> +void mtk_mipi_tx_update_bits(struct mtk_mipi_tx *mipi_tx, u32 offset, u32 mask,
> +			     u32 data);
> +int mtk_mipi_tx_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> +			     unsigned long parent_rate);
> +unsigned long mtk_mipi_tx_pll_recalc_rate(struct clk_hw *hw,
> +					  unsigned long parent_rate);
> +
> +extern const struct mtk_mipitx_data mt2701_mipitx_data;
> +extern const struct mtk_mipitx_data mt8173_mipitx_data;
> +
> +#endif
> diff --git a/drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c
> new file mode 100644
> index 000000000000..95ef0c5252b9
> --- /dev/null
> +++ b/drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c
> @@ -0,0 +1,289 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + * Author: jitao.shi <jitao.shi@mediatek.com>
> + */
> +
> +#include "mtk_mipi_tx.h"
> +
> +#define MIPITX_DSI_CON		0x00
> +#define RG_DSI_LDOCORE_EN		BIT(0)
> +#define RG_DSI_CKG_LDOOUT_EN		BIT(1)
> +#define RG_DSI_BCLK_SEL			(3 << 2)
> +#define RG_DSI_LD_IDX_SEL		(7 << 4)
> +#define RG_DSI_PHYCLK_SEL		(2 << 8)
> +#define RG_DSI_DSICLK_FREQ_SEL		BIT(10)
> +#define RG_DSI_LPTX_CLMP_EN		BIT(11)
> +
> +#define MIPITX_DSI_CLOCK_LANE	0x04
> +#define MIPITX_DSI_DATA_LANE0	0x08
> +#define MIPITX_DSI_DATA_LANE1	0x0c
> +#define MIPITX_DSI_DATA_LANE2	0x10
> +#define MIPITX_DSI_DATA_LANE3	0x14
> +#define RG_DSI_LNTx_LDOOUT_EN		BIT(0)
> +#define RG_DSI_LNTx_CKLANE_EN		BIT(1)
> +#define RG_DSI_LNTx_LPTX_IPLUS1		BIT(2)
> +#define RG_DSI_LNTx_LPTX_IPLUS2		BIT(3)
> +#define RG_DSI_LNTx_LPTX_IMINUS		BIT(4)
> +#define RG_DSI_LNTx_LPCD_IPLUS		BIT(5)
> +#define RG_DSI_LNTx_LPCD_IMINUS		BIT(6)
> +#define RG_DSI_LNTx_RT_CODE		(0xf << 8)
> +
> +#define MIPITX_DSI_TOP_CON	0x40
> +#define RG_DSI_LNT_INTR_EN		BIT(0)
> +#define RG_DSI_LNT_HS_BIAS_EN		BIT(1)
> +#define RG_DSI_LNT_IMP_CAL_EN		BIT(2)
> +#define RG_DSI_LNT_TESTMODE_EN		BIT(3)
> +#define RG_DSI_LNT_IMP_CAL_CODE		(0xf << 4)
> +#define RG_DSI_LNT_AIO_SEL		(7 << 8)
> +#define RG_DSI_PAD_TIE_LOW_EN		BIT(11)
> +#define RG_DSI_DEBUG_INPUT_EN		BIT(12)
> +#define RG_DSI_PRESERVE			(7 << 13)
> +
> +#define MIPITX_DSI_BG_CON	0x44
> +#define RG_DSI_BG_CORE_EN		BIT(0)
> +#define RG_DSI_BG_CKEN			BIT(1)
> +#define RG_DSI_BG_DIV			(0x3 << 2)
> +#define RG_DSI_BG_FAST_CHARGE		BIT(4)
> +#define RG_DSI_VOUT_MSK			(0x3ffff << 5)
> +#define RG_DSI_V12_SEL			(7 << 5)
> +#define RG_DSI_V10_SEL			(7 << 8)
> +#define RG_DSI_V072_SEL			(7 << 11)
> +#define RG_DSI_V04_SEL			(7 << 14)
> +#define RG_DSI_V032_SEL			(7 << 17)
> +#define RG_DSI_V02_SEL			(7 << 20)
> +#define RG_DSI_BG_R1_TRIM		(0xf << 24)
> +#define RG_DSI_BG_R2_TRIM		(0xf << 28)
> +
> +#define MIPITX_DSI_PLL_CON0	0x50
> +#define RG_DSI_MPPLL_PLL_EN		BIT(0)
> +#define RG_DSI_MPPLL_DIV_MSK		(0x1ff << 1)
> +#define RG_DSI_MPPLL_PREDIV		(3 << 1)
> +#define RG_DSI_MPPLL_TXDIV0		(3 << 3)
> +#define RG_DSI_MPPLL_TXDIV1		(3 << 5)
> +#define RG_DSI_MPPLL_POSDIV		(7 << 7)
> +#define RG_DSI_MPPLL_MONVC_EN		BIT(10)
> +#define RG_DSI_MPPLL_MONREF_EN		BIT(11)
> +#define RG_DSI_MPPLL_VOD_EN		BIT(12)
> +
> +#define MIPITX_DSI_PLL_CON1	0x54
> +#define RG_DSI_MPPLL_SDM_FRA_EN		BIT(0)
> +#define RG_DSI_MPPLL_SDM_SSC_PH_INIT	BIT(1)
> +#define RG_DSI_MPPLL_SDM_SSC_EN		BIT(2)
> +#define RG_DSI_MPPLL_SDM_SSC_PRD	(0xffff << 16)
> +
> +#define MIPITX_DSI_PLL_CON2	0x58
> +
> +#define MIPITX_DSI_PLL_TOP	0x64
> +#define RG_DSI_MPPLL_PRESERVE		(0xff << 8)
> +
> +#define MIPITX_DSI_PLL_PWR	0x68
> +#define RG_DSI_MPPLL_SDM_PWR_ON		BIT(0)
> +#define RG_DSI_MPPLL_SDM_ISO_EN		BIT(1)
> +#define RG_DSI_MPPLL_SDM_PWR_ACK	BIT(8)
> +
> +#define MIPITX_DSI_SW_CTRL	0x80
> +#define SW_CTRL_EN			BIT(0)
> +
> +#define MIPITX_DSI_SW_CTRL_CON0	0x84
> +#define SW_LNTC_LPTX_PRE_OE		BIT(0)
> +#define SW_LNTC_LPTX_OE			BIT(1)
> +#define SW_LNTC_LPTX_P			BIT(2)
> +#define SW_LNTC_LPTX_N			BIT(3)
> +#define SW_LNTC_HSTX_PRE_OE		BIT(4)
> +#define SW_LNTC_HSTX_OE			BIT(5)
> +#define SW_LNTC_HSTX_ZEROCLK		BIT(6)
> +#define SW_LNT0_LPTX_PRE_OE		BIT(7)
> +#define SW_LNT0_LPTX_OE			BIT(8)
> +#define SW_LNT0_LPTX_P			BIT(9)
> +#define SW_LNT0_LPTX_N			BIT(10)
> +#define SW_LNT0_HSTX_PRE_OE		BIT(11)
> +#define SW_LNT0_HSTX_OE			BIT(12)
> +#define SW_LNT0_LPRX_EN			BIT(13)
> +#define SW_LNT1_LPTX_PRE_OE		BIT(14)
> +#define SW_LNT1_LPTX_OE			BIT(15)
> +#define SW_LNT1_LPTX_P			BIT(16)
> +#define SW_LNT1_LPTX_N			BIT(17)
> +#define SW_LNT1_HSTX_PRE_OE		BIT(18)
> +#define SW_LNT1_HSTX_OE			BIT(19)
> +#define SW_LNT2_LPTX_PRE_OE		BIT(20)
> +#define SW_LNT2_LPTX_OE			BIT(21)
> +#define SW_LNT2_LPTX_P			BIT(22)
> +#define SW_LNT2_LPTX_N			BIT(23)
> +#define SW_LNT2_HSTX_PRE_OE		BIT(24)
> +#define SW_LNT2_HSTX_OE			BIT(25)
> +
> +static int mtk_mipi_tx_pll_prepare(struct clk_hw *hw)
> +{
> +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> +	u8 txdiv, txdiv0, txdiv1;
> +	u64 pcw;
> +
> +	dev_dbg(mipi_tx->dev, "prepare: %u Hz\n", mipi_tx->data_rate);
> +
> +	if (mipi_tx->data_rate >= 500000000) {
> +		txdiv = 1;
> +		txdiv0 = 0;
> +		txdiv1 = 0;
> +	} else if (mipi_tx->data_rate >= 250000000) {
> +		txdiv = 2;
> +		txdiv0 = 1;
> +		txdiv1 = 0;
> +	} else if (mipi_tx->data_rate >= 125000000) {
> +		txdiv = 4;
> +		txdiv0 = 2;
> +		txdiv1 = 0;
> +	} else if (mipi_tx->data_rate > 62000000) {
> +		txdiv = 8;
> +		txdiv0 = 2;
> +		txdiv1 = 1;
> +	} else if (mipi_tx->data_rate >= 50000000) {
> +		txdiv = 16;
> +		txdiv0 = 2;
> +		txdiv1 = 2;
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_BG_CON,
> +				RG_DSI_VOUT_MSK |
> +				RG_DSI_BG_CKEN | RG_DSI_BG_CORE_EN,
> +				(4 << 20) | (4 << 17) | (4 << 14) |
> +				(4 << 11) | (4 << 8) | (4 << 5) |
> +				RG_DSI_BG_CKEN | RG_DSI_BG_CORE_EN);
> +
> +	usleep_range(30, 100);
> +
> +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_TOP_CON,
> +				RG_DSI_LNT_IMP_CAL_CODE | RG_DSI_LNT_HS_BIAS_EN,
> +				(8 << 4) | RG_DSI_LNT_HS_BIAS_EN);
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_DSI_CON,
> +			     RG_DSI_CKG_LDOOUT_EN | RG_DSI_LDOCORE_EN);
> +
> +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_PWR,
> +				RG_DSI_MPPLL_SDM_PWR_ON |
> +				RG_DSI_MPPLL_SDM_ISO_EN,
> +				RG_DSI_MPPLL_SDM_PWR_ON);
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_PLL_CON0,
> +			       RG_DSI_MPPLL_PLL_EN);
> +
> +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_CON0,
> +				RG_DSI_MPPLL_TXDIV0 | RG_DSI_MPPLL_TXDIV1 |
> +				RG_DSI_MPPLL_PREDIV,
> +				(txdiv0 << 3) | (txdiv1 << 5));
> +
> +	/*
> +	 * PLL PCW config
> +	 * PCW bit 24~30 = integer part of pcw
> +	 * PCW bit 0~23 = fractional part of pcw
> +	 * pcw = data_Rate*4*txdiv/(Ref_clk*2);
> +	 * Post DIV =4, so need data_Rate*4
> +	 * Ref_clk is 26MHz
> +	 */
> +	pcw = div_u64(((u64)mipi_tx->data_rate * 2 * txdiv) << 24,
> +		      26000000);
> +	writel(pcw, mipi_tx->regs + MIPITX_DSI_PLL_CON2);
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_DSI_PLL_CON1,
> +			     RG_DSI_MPPLL_SDM_FRA_EN);
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_DSI_PLL_CON0, RG_DSI_MPPLL_PLL_EN);
> +
> +	usleep_range(20, 100);
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_PLL_CON1,
> +			       RG_DSI_MPPLL_SDM_SSC_EN);
> +
> +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_TOP,
> +				RG_DSI_MPPLL_PRESERVE,
> +				mipi_tx->driver_data->mppll_preserve);
> +
> +	return 0;
> +}
> +
> +static void mtk_mipi_tx_pll_unprepare(struct clk_hw *hw)
> +{
> +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> +
> +	dev_dbg(mipi_tx->dev, "unprepare\n");
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_PLL_CON0,
> +			       RG_DSI_MPPLL_PLL_EN);
> +
> +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_TOP,
> +				RG_DSI_MPPLL_PRESERVE, 0);
> +
> +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_DSI_PLL_PWR,
> +				RG_DSI_MPPLL_SDM_ISO_EN |
> +				RG_DSI_MPPLL_SDM_PWR_ON,
> +				RG_DSI_MPPLL_SDM_ISO_EN);
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_TOP_CON,
> +			       RG_DSI_LNT_HS_BIAS_EN);
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_CON,
> +			       RG_DSI_CKG_LDOOUT_EN | RG_DSI_LDOCORE_EN);
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_BG_CON,
> +			       RG_DSI_BG_CKEN | RG_DSI_BG_CORE_EN);
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_PLL_CON0,
> +			       RG_DSI_MPPLL_DIV_MSK);
> +}
> +
> +static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
> +				       unsigned long *prate)
> +{
> +	return clamp_val(rate, 50000000, 1250000000);
> +}
> +
> +static const struct clk_ops mtk_mipi_tx_pll_ops = {
> +	.prepare = mtk_mipi_tx_pll_prepare,
> +	.unprepare = mtk_mipi_tx_pll_unprepare,
> +	.round_rate = mtk_mipi_tx_pll_round_rate,
> +	.set_rate = mtk_mipi_tx_pll_set_rate,
> +	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
> +};
> +
> +static void mtk_mipi_tx_power_on_signal(struct phy *phy)
> +{
> +	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
> +	u32 reg;
> +
> +	for (reg = MIPITX_DSI_CLOCK_LANE;
> +	     reg <= MIPITX_DSI_DATA_LANE3; reg += 4)
> +		mtk_mipi_tx_set_bits(mipi_tx, reg, RG_DSI_LNTx_LDOOUT_EN);
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_DSI_TOP_CON,
> +			       RG_DSI_PAD_TIE_LOW_EN);
> +}
> +
> +static void mtk_mipi_tx_power_off_signal(struct phy *phy)
> +{
> +	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
> +	u32 reg;
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_DSI_TOP_CON,
> +			     RG_DSI_PAD_TIE_LOW_EN);
> +
> +	for (reg = MIPITX_DSI_CLOCK_LANE;
> +	     reg <= MIPITX_DSI_DATA_LANE3; reg += 4)
> +		mtk_mipi_tx_clear_bits(mipi_tx, reg, RG_DSI_LNTx_LDOOUT_EN);
> +}
> +
> +const struct mtk_mipitx_data mt2701_mipitx_data = {
> +	.mppll_preserve = (3 << 8),
> +	.mipi_tx_clk_ops = &mtk_mipi_tx_pll_ops,
> +	.mipi_tx_enable_signal = mtk_mipi_tx_power_on_signal,
> +	.mipi_tx_disable_signal = mtk_mipi_tx_power_off_signal,
> +};
> +
> +const struct mtk_mipitx_data mt8173_mipitx_data = {
> +	.mppll_preserve = (0 << 8),
> +	.mipi_tx_clk_ops = &mtk_mipi_tx_pll_ops,
> +	.mipi_tx_enable_signal = mtk_mipi_tx_power_on_signal,
> +	.mipi_tx_disable_signal = mtk_mipi_tx_power_off_signal,
> +};
> +



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
