Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9632202EC
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 11:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9aArGvW/SKwgRTNBdYGqcEXYDpKow2hBu82ogsFB2k=; b=sYw2hshlu20uji
	6x3ApvjDMNHopEXu+eNxzbsI7krsEktE2spWacZxWB6LXl9Bbv63UAhoV8lQ+J1DGKxgGW+0giz0Y
	5rOtBTJlT3hTIBkvenyK5OIu/fgcq1aBVgXzY+vGaXLvNGxZxpUCUvhMdUIUpOBwugX9tburTyVaQ
	plcOegEYpcnZuaa5D7GA7x//WFNeYOSMGkjg+vyjFsycu0CVczlmF0eslHywdOXb2IWKkNiNOX4NT
	59wb6G+qSAHvqiicq7Bw7HadV7MH3dRjFZXLwL8yGqy8iK0f5x7HFhABq25iMpYO6F7VfuwJyfTe9
	3zDY6AE+5jh+gt+qYTuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRD6C-0005EH-0q; Thu, 16 May 2019 09:54:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRD68-0005Be-2E
 for linux-mediatek@lists.infradead.org; Thu, 16 May 2019 09:54:49 +0000
X-UUID: 5a1fa9d93b8546c2876dc1870d7bcf5f-20190516
X-UUID: 5a1fa9d93b8546c2876dc1870d7bcf5f-20190516
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <shunli.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 443198698; Thu, 16 May 2019 01:54:44 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 02:54:43 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 17:54:41 +0800
Received: from mtkslt301.mediatek.inc (10.21.14.114) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 17:54:41 +0800
From: Shunli Wang <shunli.wang@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH 2/2] ASoC: Mediatek: MT8183: set data align
Date: Thu, 16 May 2019 17:54:38 +0800
Message-ID: <20190516095438.15759-3-shunli.wang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190516095438.15759-1-shunli.wang@mediatek.com>
References: <20190516095438.15759-1-shunli.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 11A8A87934E7C3E10636C30DCB1C79EBC7390FEB32D6BA32F6D0052A6D1C937F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_025448_111226_A8209F84 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, srv_heupstream@mediatek.com,
 garlic.tseng@mediatek.com, jiaxin.yu@mediatek.com, tzungbi@google.com,
 linux-mediatek@lists.infradead.org, shunli.wang@mediatek.com,
 kaichieh.chuang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch sets register and bit information about
data align for every memory interface.

Signed-off-by: Shunli Wang <shunli.wang@mediatek.com>
---
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index 1bc0fafe5e29..ab2bce1d9b3d 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -437,7 +437,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = DL1_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = DL1_HD_SFT,
+		.hd_align_mshift = DL1_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -456,7 +458,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = DL2_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = DL2_HD_SFT,
+		.hd_align_mshift = DL2_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -475,7 +479,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = DL3_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = DL3_HD_SFT,
+		.hd_align_mshift = DL3_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -494,7 +500,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = VUL2_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = VUL2_HD_SFT,
+		.hd_align_mshift = VUL2_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -513,7 +521,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = AWB_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = AWB_HD_SFT,
+		.hd_align_mshift = AWB_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -532,7 +542,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = AWB2_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = AWB2_HD_SFT,
+		.hd_align_mshift = AWB2_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -551,7 +563,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = VUL12_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = VUL12_HD_SFT,
+		.hd_align_mshift = VUL12_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -570,7 +584,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = MOD_DAI_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = MOD_DAI_HD_SFT,
+		.hd_align_mshift = MOD_DAI_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -589,7 +605,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = -1,	/* control in tdm for sync start */
 		.enable_shift = -1,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = HDMI_HD_SFT,
+		.hd_align_mshift = HDMI_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
