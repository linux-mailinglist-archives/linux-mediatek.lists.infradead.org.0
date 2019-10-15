Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 356A2D6D00
	for <lists+linux-mediatek@lfdr.de>; Tue, 15 Oct 2019 03:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ThZpqIAJUtX+Gb/0HusWMSBesgSonIwPb381bPF55rA=; b=m5K/25eR72uVtR
	BNAg++x35IP0MBmn7Fu0tbXxknT6RmX41tZBRMzbG/pFJXq1gUUj0Iblv4xnhj/pWnmMpc0MWzce2
	gslJQZggyk/cYh9CHPo/hhFPLZ7MV5B5hZx1J93mopYUxHZv4inma7ZVUUp6Nnm95qo9MWHKtAwo9
	yqqlJn9uOQ2A6Ibqszo/Da4uUCBbRDAkEnVgCHG6eApufjXKWD8MearTnBQCjhL9C90LBnUB8O9oW
	7YuoaQAyKglXmk3sGqXgXqCRePfacB/pYFcFU/hIA6k2dIsBeaNqM4QYLjwSb/VF1BFJ33gdPOBxY
	AteMXoBYx1NLJnK3m5EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKBxr-0006aQ-Jo; Tue, 15 Oct 2019 01:49:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKBxo-0006a2-8D
 for linux-mediatek@lists.infradead.org; Tue, 15 Oct 2019 01:49:29 +0000
X-UUID: cac0ec88410c49039af3dd2c962d1fd6-20191014
X-UUID: cac0ec88410c49039af3dd2c962d1fd6-20191014
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1765623791; Mon, 14 Oct 2019 17:49:13 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 18:39:16 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 15 Oct 2019 09:39:06 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 15 Oct 2019 09:39:07 +0800
Message-ID: <1571103548.4416.6.camel@mtksdaap41>
Subject: [GIT PULL] mediatek drm next for 5.5
From: CK Hu <ck.hu@mediatek.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>, 
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Date: Tue, 15 Oct 2019 09:39:08 +0800
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E831F57B568CC3860F45DE659E8D3BDBC446FC706415627AAC7FB50E63A5DD142000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_184928_297210_CC544C3C 
X-CRM114-Status: GOOD (  10.05  )
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
Cc: Jitao Shi <jitao.shi@mediatek.com>,
 Yongqiang Niu <yongqiang.niu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Dave, Daniel:

This include mipi_tx, dsi, and partial crtc for MT8183 SoC.

Regards,
CK

The following changes since commit
54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://github.com/ckhu-mediatek/linux.git-tags.git
tags/mediatek-drm-next-5.5

for you to fetch changes up to 631005b255aab5f846f7ca03606613f898d70207:

  drm/mediatek: add no_clk into ddp private data (2019-10-09 16:58:13
+0800)

----------------------------------------------------------------
Mediatek DRM next for Linux 5.5

----------------------------------------------------------------
CK Hu (1):
      drm/mediatek: add no_clk into ddp private data

Jitao Shi (12):
      dt-bindings: display: mediatek: update dsi supported chips
      drm/mediatek: separate mipi_tx to different file
      drm/mediatek: add mipi_tx driver for mt8183
      drm/mediatek: move mipi_dsi_host_register to probe
      drm/mediatek: fixes CMDQ reg address of mt8173 is different with
mt2701
      drm/mediatek: replace writeb() with mtk_dsi_mask()
      drm/mediatek: add dsi reg commit disable control
      drm/mediatek: add frame size control
      drm/mediatek: add mt8183 dsi driver support
      drm/mediatek: change the dsi phytiming calculate method
      drm/mediatek: adjust dsi and mipi_tx probe sequence
      drm/mediatek: add dphy reset after setting lanes number

Yongqiang Niu (18):
      dt-bindings: mediatek: add ovl_2l description for mt8183 display
      dt-bindings: mediatek: add ccorr description for mt8183 display
      dt-bindings: mediatek: add dither description for mt8183 display
      dt-bindings: mediatek: add mutex description for mt8183 display
      drm/mediatek: add ddp component CCORR
      drm/mediatek: add component DITHER
      drm/mediatek: add component OVL_2L0
      drm/mediatek: add component OVL_2L1
      drm/mediatek: add gmc_bits for ovl private data
      drm/medaitek: add layer_nr for ovl private data
      drm/mediatek: add function to background color input select for
ovl/ovl_2l direct link
      drm/mediatek: add background color input select function for
ovl/ovl_2l
      drm/mediatek: distinguish ovl and ovl_2l by layer_nr
      drm/mediatek: add ovl0/ovl_2l0 usecase
      drm/mediatek: add mutex mod into ddp private data
      drm/mediatek: add mutex mod register offset into ddp private data
      drm/mediatek: add mutex sof into ddp private data
      drm/mediatek: add mutex sof register offset into ddp private data

 .../bindings/display/mediatek/mediatek,disp.txt    |  30 +-
 .../bindings/display/mediatek/mediatek,dsi.txt     |   4 +-
 drivers/gpu/drm/mediatek/Makefile                  |   2 +
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c            |  61 +++-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c            |  37 ++-
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c             | 128 ++++++--
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c        |  67 ++++
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h        |  21 ++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |   3 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c                 | 233 ++++++++++----
 drivers/gpu/drm/mediatek/mtk_mipi_tx.c             | 338
++-------------------
 drivers/gpu/drm/mediatek/mtk_mipi_tx.h             |  49 +++
 drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c      | 288
++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c      | 149 +++++++++
 14 files changed, 974 insertions(+), 436 deletions(-)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mipi_tx.h
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
