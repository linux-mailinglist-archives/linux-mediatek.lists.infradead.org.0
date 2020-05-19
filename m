Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FB71D937C
	for <lists+linux-mediatek@lfdr.de>; Tue, 19 May 2020 11:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S22EuEZ/GaOv9bTJPBc3zNUj1qS0GHipoyYSVCq2YKg=; b=uUHspZVRyBmg2A
	U8Vo6/c7QIIaKREalyvwg5YByjbSps562hthpbcC9DkUOLn38vJHWLvNBqsQ/SNruVqOMpeAwpqe4
	nHosmR1gHBaKKOb+KGamIORlos4/Pv9vxOxOZ4sbKgMCVln1U3JO8tlF2s4TSLrn77vcQKlth918V
	uJGNOFkfx0baZDx26OwN96yF7p65NmZxbVtjTDnoSSF62nAaYy/sLslT12qQ/kp8SlE5D7yK5j/qW
	a6yYwxuXP1EvBUE6dd5t19Zzitcoe7whHswKgmslli4Xn0mK7z6Ykg+ygvY/1Xh8fY6X8Ojut6z6H
	EgY3MRq+GJXoQHlJf2ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaykE-0004KE-K1; Tue, 19 May 2020 09:41:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayk4-0004Au-7m; Tue, 19 May 2020 09:40:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id C65332A03BE
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm/mediatek: mtk_mt8173_hdmi_phy: Remove unnused const
 variables
Date: Tue, 19 May 2020 11:40:45 +0200
Message-Id: <20200519094045.2447940-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_024056_406687_9AC8C852 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

There are some `static const u8` variables that are not used, this
triggers a warning building with `make W=1`, it is safe to remove them,
so do it and make the compiler more happy.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 .../gpu/drm/mediatek/mtk_mt8173_hdmi_phy.c    | 48 -------------------
 1 file changed, 48 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_mt8173_hdmi_phy.c b/drivers/gpu/drm/mediatek/mtk_mt8173_hdmi_phy.c
index 1c3575372230..827b93786fac 100644
--- a/drivers/gpu/drm/mediatek/mtk_mt8173_hdmi_phy.c
+++ b/drivers/gpu/drm/mediatek/mtk_mt8173_hdmi_phy.c
@@ -107,54 +107,6 @@
 #define RGS_HDMITX_5T1_EDG		(0xf << 4)
 #define RGS_HDMITX_PLUG_TST		BIT(0)
 
-static const u8 PREDIV[3][4] = {
-	{0x0, 0x0, 0x0, 0x0},	/* 27Mhz */
-	{0x1, 0x1, 0x1, 0x1},	/* 74Mhz */
-	{0x1, 0x1, 0x1, 0x1}	/* 148Mhz */
-};
-
-static const u8 TXDIV[3][4] = {
-	{0x3, 0x3, 0x3, 0x2},	/* 27Mhz */
-	{0x2, 0x1, 0x1, 0x1},	/* 74Mhz */
-	{0x1, 0x0, 0x0, 0x0}	/* 148Mhz */
-};
-
-static const u8 FBKSEL[3][4] = {
-	{0x1, 0x1, 0x1, 0x1},	/* 27Mhz */
-	{0x1, 0x0, 0x1, 0x1},	/* 74Mhz */
-	{0x1, 0x0, 0x1, 0x1}	/* 148Mhz */
-};
-
-static const u8 FBKDIV[3][4] = {
-	{19, 24, 29, 19},	/* 27Mhz */
-	{19, 24, 14, 19},	/* 74Mhz */
-	{19, 24, 14, 19}	/* 148Mhz */
-};
-
-static const u8 DIVEN[3][4] = {
-	{0x2, 0x1, 0x1, 0x2},	/* 27Mhz */
-	{0x2, 0x2, 0x2, 0x2},	/* 74Mhz */
-	{0x2, 0x2, 0x2, 0x2}	/* 148Mhz */
-};
-
-static const u8 HTPLLBP[3][4] = {
-	{0xc, 0xc, 0x8, 0xc},	/* 27Mhz */
-	{0xc, 0xf, 0xf, 0xc},	/* 74Mhz */
-	{0xc, 0xf, 0xf, 0xc}	/* 148Mhz */
-};
-
-static const u8 HTPLLBC[3][4] = {
-	{0x2, 0x3, 0x3, 0x2},	/* 27Mhz */
-	{0x2, 0x3, 0x3, 0x2},	/* 74Mhz */
-	{0x2, 0x3, 0x3, 0x2}	/* 148Mhz */
-};
-
-static const u8 HTPLLBR[3][4] = {
-	{0x1, 0x1, 0x0, 0x1},	/* 27Mhz */
-	{0x1, 0x2, 0x2, 0x1},	/* 74Mhz */
-	{0x1, 0x2, 0x2, 0x1}	/* 148Mhz */
-};
-
 static int mtk_hdmi_pll_prepare(struct clk_hw *hw)
 {
 	struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);
-- 
2.26.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
