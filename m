Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B521DAD4A
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 10:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ikVZMDAL5gBxkOGNjzR1o37/UsYBOjLUJ3RIF9J/TDY=; b=H0fif6IjUFlB+K
	/sN5VA3maxCT7Wumcc8VC0otSJFFKbx28i/+pXk55MuFT21SeQW1RHlap71US3muDpo3El6NPxhgw
	PrRUIsW2K2qVT76ktjJViZYko2Exq8/b0SNrL/5A9rHqNJe2SjnnpwPIAFvouS4jfdq409OR979Vm
	mCygH/bblHbW0Larj8XfLGK76CMCboAHiVCB8Q8ULjpv/jd75AgnOTTTnLM58Gt3oRdjbyhkhYTXR
	grY7Kczs90e2E25Mr617o1JFDbJyE+zauZVCEYfgqyLpIxcT/bbECDWgNTEiblg/cG9ARaOiMT2qn
	tl6bn3HGdtTxJCykJhjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbK4q-0002JS-7R; Wed, 20 May 2020 08:27:48 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbK4m-0002IS-BI
 for linux-mediatek@lists.infradead.org; Wed, 20 May 2020 08:27:45 +0000
Received: by mail-pj1-x1034.google.com with SMTP id q24so916183pjd.1
 for <linux-mediatek@lists.infradead.org>; Wed, 20 May 2020 01:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W2TWoJ++yCYlqy8IovrEqTMl5U//d+cGmQ0zGQQyDsY=;
 b=TJbE5e7IxHnNUAvEVy2/RQIeUCM4MNlNOXUaTmuJYTmjEpUVqMfOAYJYRSgpSKNSoW
 TkZC1UZ3hEr4bePFqABOBKLFsMiKT2D3lp2fQ3aVG/ruYaWCMnveW+d/F4hL5a7E1htw
 9JP89xPealRW2AuM10T0r5XIx6ymvmsifSmxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W2TWoJ++yCYlqy8IovrEqTMl5U//d+cGmQ0zGQQyDsY=;
 b=HyH5/N3W0yXiYgsa2cVPP8jMtBMcN3L1g4DDpiUfSSsy+HWH8Q+YvTbCpCLotDmm2A
 T6JPJRQaowmvwFD6kSEK9828EssA2t8P6lrT5hw/Q1Cnd6yrzMLuHV147TgEQ7HhRmPp
 gv/rsQDOYtMavm5HqpP/sq9YDudkz2oZy7UMnzKZlrcV+tjN1FWYKpDV69LAwneCziBm
 cZ/9RohYLpXrXyNSAEn9dRl5gt4mtZxAgOhMlj25c6/RJdrgpDEuVo/4GE//hRcJ62I4
 xnArcNT2M7BVklqNmCpjLgcTguBI5An1jvFJgZm0aUxgnUyd5goIzPynbKC9yNSR641L
 hLXw==
X-Gm-Message-State: AOAM530CsG5DEYHJZiTLPL85bRknGxEoxsLGPq/LBG2q/YliNpcDZo8l
 ta4uEtUqeyYz9DMkDJu6SYuu9w==
X-Google-Smtp-Source: ABdhPJzkPFl6N48LcAsZjEnXY2hRPodn8awaoLgxgwKuQhYsJD9GptcjVbLdJYnmBFtDqE2ZvKBcRQ==
X-Received: by 2002:a17:90a:3563:: with SMTP id
 q90mr4254436pjb.0.1589963262833; 
 Wed, 20 May 2020 01:27:42 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:8f:203:93d9:de4d:e834:3086])
 by smtp.gmail.com with ESMTPSA id gg8sm1447775pjb.39.2020.05.20.01.27.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 01:27:42 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Rui Wang <gtk_ruiwang@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>, Pi-Hsun Shih <pihsun@chromium.org>,
 Maoguang Meng <maoguang.meng@mediatek.com>
Subject: [PATCH 00/10] media: mtk-vcodec: venc: support for MT8183
Date: Wed, 20 May 2020 17:27:13 +0900
Message-Id: <20200520082723.96136-1-acourbot@chromium.org>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_012744_401631_4030AC0F 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1034 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexandre Courbot <acourbot@chromium.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This series adds support for the encoder present on MT8183. It is very similar
to the one in MT8173, but with different capabilities and using a new firmware
interface (SCP, while MT8173 talked to the VPU).

So this series starts with some preparatory work by putting the firmware
interface behind a small abstraction layer instead of directly talking to the
VPU, and by adding support for the SCP firmware. Next platform data is completed
with features that differ between the chips, like supported formats and bitrate,
before support for MT8183 is added.

Alexandre Courbot (6):
  media: mtk-vcodec: venc: handle firmware version field
  media: mtk-vcodec: venc: specify bitrate range per-chip
  media: mtk-vcodec: venc: specify supported formats per-chip
  media: mtk-vcodec: venc: remove redundant code
  media: dt-bindings: mtk-vcodec: specify SCP node
  media: dt-bindings: mtk-vcodec: document mediatek,mt8183-vcodec-enc

Yunfei Dong (4):
  media: mtk-vcodec: abstract firmware interface
  media: mtk-vcodec: add SCP firmware ops
  media: mtk-vcodec: venc: support SCP firmware
  media: mtk-vcodec: add support for MT8183 encoder

 .../bindings/media/mediatek-vcodec.txt        |   9 +-
 drivers/media/platform/Kconfig                |   2 +
 drivers/media/platform/mtk-vcodec/Makefile    |   4 +-
 .../platform/mtk-vcodec/mtk_vcodec_dec_drv.c  |  53 ++--
 .../platform/mtk-vcodec/mtk_vcodec_dec_pm.c   |   1 -
 .../platform/mtk-vcodec/mtk_vcodec_drv.h      |  38 ++-
 .../platform/mtk-vcodec/mtk_vcodec_enc.c      | 141 ++++-------
 .../platform/mtk-vcodec/mtk_vcodec_enc_drv.c  | 149 ++++++++----
 .../platform/mtk-vcodec/mtk_vcodec_enc_pm.c   |   2 -
 .../media/platform/mtk-vcodec/mtk_vcodec_fw.c | 228 ++++++++++++++++++
 .../media/platform/mtk-vcodec/mtk_vcodec_fw.h |  38 +++
 .../platform/mtk-vcodec/mtk_vcodec_util.c     |   1 -
 .../platform/mtk-vcodec/vdec/vdec_h264_if.c   |   1 -
 .../platform/mtk-vcodec/vdec/vdec_vp8_if.c    |   1 -
 .../platform/mtk-vcodec/vdec/vdec_vp9_if.c    |   1 -
 .../media/platform/mtk-vcodec/vdec_drv_base.h |   2 -
 .../media/platform/mtk-vcodec/vdec_drv_if.c   |   1 -
 .../media/platform/mtk-vcodec/vdec_vpu_if.c   |  12 +-
 .../media/platform/mtk-vcodec/vdec_vpu_if.h   |  11 +-
 .../platform/mtk-vcodec/venc/venc_h264_if.c   |  80 ++++--
 .../platform/mtk-vcodec/venc/venc_vp8_if.c    |  11 +-
 .../media/platform/mtk-vcodec/venc_drv_if.c   |   1 -
 .../media/platform/mtk-vcodec/venc_drv_if.h   |   6 +
 .../media/platform/mtk-vcodec/venc_ipi_msg.h  |  24 +-
 .../media/platform/mtk-vcodec/venc_vpu_if.c   | 141 ++++++++---
 .../media/platform/mtk-vcodec/venc_vpu_if.h   |   8 +-
 26 files changed, 711 insertions(+), 255 deletions(-)
 create mode 100644 drivers/media/platform/mtk-vcodec/mtk_vcodec_fw.c
 create mode 100644 drivers/media/platform/mtk-vcodec/mtk_vcodec_fw.h

--
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
