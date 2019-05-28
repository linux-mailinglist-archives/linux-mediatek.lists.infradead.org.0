Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6C32BEC3
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 07:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yMsUZqXnXxf4KYnG9piiI7V6/BXwz5f0MGipH9s6YG4=; b=My5V0MLShnzYdi
	VOkhBr1nE6W9tABLANBG3D9zy0crQxZdo+BF8xZfPepJaix/92m+CPK3iZ27H1FNsEG5h//ufx1Qr
	noYYpS2O8/vXs2V72YgRIJ98py/b74dVKJnVr53elY0MdB79/USPe6z9/XYQGp7DLzQIeAD2kdR3c
	S8eHS3vdLmaZajsUAuT8e/+iEqOGgQLn4CW9SAwHYfdHwflRi4OBmxZDkwopJrNB1tVlyt5FLarSi
	pGlO5EwW+kQgqXf4NRzoPfR4pXAg5TTIQKQ88WB09I7uXR71BzKxRx9ycvj7dSyGx4hbjehyvY9lR
	n+qmo1Xk+rqdj5IKnbWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVV6q-0002BQ-Ay; Tue, 28 May 2019 05:57:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVV6m-0002Al-Hc
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 05:57:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id s11so10764424pfm.12
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 22:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DM2roW1uDasR/ZhwHW+lf0A3UJpao3MjC7jIgvQYwWs=;
 b=lON1htqnT51A/TgqWDNbasbuMR3FlrSuB4q9IdzD9gunXLPoXv6HIWiRzcGkEZ/FSW
 iazvgJJzI1AYNDHg5Tas2VKcqI4dR3V38lwXzk1me/GpbxuvFrZXEsS+27DjSuHiNE1g
 Ws9YGKoMjcyGzzqymF6/QeLwG3ppJqVEiaaBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DM2roW1uDasR/ZhwHW+lf0A3UJpao3MjC7jIgvQYwWs=;
 b=a+PJj2AR2azDoHmIC+1Uw5ufhLP3vAslq9UZRcalQsur8W743cCjgf8pGjDKmcNwVP
 SPLOjbb+0iA57h/uqnIwutBGp35XArCcXuw3MWDZ8YetvV3DW8h5Lz2C9YOA5zLmWzTy
 GBSNetv33p/NQcrsctyGXic/uvODPYrbcfBO5J2n4K7jJ/PmpFCA5G4noZ5Rg7N2aoDR
 bGs8UdCfIwRBJQJxeIpN7PNXhGJNHUNDO3Slh9V0OUrhkG4/Yle49xmQpRjj2QUx4otB
 wQ7k7r69ixaj/3dITXSvbTxmKEWySo8jjGbrSTjF/H+hiVGmYu6D/BMHNUE/88QfzSeC
 PTYA==
X-Gm-Message-State: APjAAAVrhaW5HAGSsFrklW7KlPHZpOh+geXuBLZM66acyuuwXvs7des9
 MlWeUIxhaR90wWXXAwDM4tI+Gg==
X-Google-Smtp-Source: APXvYqzllEC5p/Z7QS0hLnM3/Kb5OyKB96SW7huDFH2YYaMAl4Rsg2svryHrforUkjGoMCld1uerGQ==
X-Received: by 2002:a17:90a:cf83:: with SMTP id
 i3mr3379555pju.71.1559023030501; 
 Mon, 27 May 2019 22:57:10 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id w1sm13950551pfg.51.2019.05.27.22.57.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 22:57:09 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFCv1 00/12] media: mtk-vcodec: support for MT8183 decoder
Date: Tue, 28 May 2019 14:56:23 +0900
Message-Id: <20190528055635.12109-1-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_225712_609622_994DA148 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexandre Courbot <acourbot@chromium.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This series is a refactoring/split of the initial patch for MT8183 codec support
that was posted for Chrome OS [1] in order to make it upstreamable.

The line count has been significantly reduced compared to the initial patch,
although support for the MT8183 encoder is not here yet to limit the amount of
code to review.

Although the series applies on top of today's media tree, it will not compile
until support for the SCP is merged, hence the RFC status. Note also that the
H.264 structures used and implementation of the stateless codec API may not be
completely up-to-date. So the goal of this publication is to review the general
idea (especially split unto stateful and stateless ops), and maybe merge the
first 5 patches.

Patches 1-5 are cleanup/small fixes that came while working on this series. They
should be harmless and can be merged.

Patches 6 adds a layer of abstraction to some of the decoder operations.
Currently mtk-vcodec and MT8173 use the stateful codec API, but MT8183 is based
on a stateless model. So patch 6 isolates the ops specific to the stateful codec
so MT8173 and MT8183 can share a big part of the code.

Patch 7 abstracts the firmware interface, as MT8173 and MT8183 are controlled
by different interfaces (VPU or SCP). Patch 8 adds the firmware ops for MT8183.

Patch 9 and 10 add support for stateless decoders in the driver, and support for
stateless H.264 decoding respectively.

Patch 11 takes care of adding the media device for stateless codecs, and
patch 12 allows the MT8183 decoder to probe.

I am mostly expecting comments about the general direction, but of course more
in-depth reviews are also welcome.

[1] https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1377757/

Alexandre Courbot (3):
  media: mtk-vcodec: avoid unneeded pointer-to-long conversions
  media: mtk-vcodec: remove unneeded proxy functions
  media: mtk-vcodec: constify formats

Yunfei Dong (9):
  media: mtk-vcodec: fix copyright indent
  media: mtk-vcodec: support single-buffer frames
  media: mtk-vcodec: move stateful ops into their own file
  media: mtk-vcodec: abstract firmware interface
  media: mtk-vcodec: add SCP firmware ops
  media: mtk-vcodec: vdec: support stateless API
  media: mtk-vcodec: vdec: support stateless H.264 decoding
  media: mtk-vcodec: vdec: add media device if using stateless api
  media: mtk-vcodec: enable MT8183 decoder

 drivers/media/platform/Kconfig                |   1 +
 drivers/media/platform/mtk-vcodec/Makefile    |   7 +-
 .../platform/mtk-vcodec/mtk_vcodec_dec.c      | 751 +++---------------
 .../platform/mtk-vcodec/mtk_vcodec_dec.h      |  30 +-
 .../platform/mtk-vcodec/mtk_vcodec_dec_drv.c  | 103 ++-
 .../platform/mtk-vcodec/mtk_vcodec_dec_pm.c   |   1 -
 .../mtk-vcodec/mtk_vcodec_dec_stateful.c      | 629 +++++++++++++++
 .../mtk-vcodec/mtk_vcodec_dec_stateless.c     | 493 ++++++++++++
 .../platform/mtk-vcodec/mtk_vcodec_drv.h      |  81 +-
 .../platform/mtk-vcodec/mtk_vcodec_enc.c      |  45 +-
 .../platform/mtk-vcodec/mtk_vcodec_enc_drv.c  |  49 +-
 .../platform/mtk-vcodec/mtk_vcodec_enc_pm.c   |  26 +-
 .../media/platform/mtk-vcodec/mtk_vcodec_fw.c | 208 +++++
 .../media/platform/mtk-vcodec/mtk_vcodec_fw.h |  38 +
 .../platform/mtk-vcodec/mtk_vcodec_util.c     |   1 -
 .../platform/mtk-vcodec/vdec/vdec_h264_if.c   |  22 +-
 .../mtk-vcodec/vdec/vdec_h264_req_if.c        | 533 +++++++++++++
 .../platform/mtk-vcodec/vdec/vdec_vp8_if.c    |  22 +-
 .../platform/mtk-vcodec/vdec/vdec_vp9_if.c    |  22 +-
 .../media/platform/mtk-vcodec/vdec_drv_base.h |  10 +-
 .../media/platform/mtk-vcodec/vdec_drv_if.c   |  19 +-
 .../media/platform/mtk-vcodec/vdec_vpu_if.c   |  10 +-
 .../media/platform/mtk-vcodec/vdec_vpu_if.h   |  11 +-
 .../platform/mtk-vcodec/venc/venc_h264_if.c   |  34 +-
 .../platform/mtk-vcodec/venc/venc_vp8_if.c    |  27 +-
 .../media/platform/mtk-vcodec/venc_drv_base.h |   8 +-
 .../media/platform/mtk-vcodec/venc_drv_if.c   |  11 +-
 .../media/platform/mtk-vcodec/venc_vpu_if.c   |  15 +-
 .../media/platform/mtk-vcodec/venc_vpu_if.h   |   5 +-
 29 files changed, 2328 insertions(+), 884 deletions(-)
 create mode 100644 drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c
 create mode 100644 drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c
 create mode 100644 drivers/media/platform/mtk-vcodec/mtk_vcodec_fw.c
 create mode 100644 drivers/media/platform/mtk-vcodec/mtk_vcodec_fw.h
 create mode 100644 drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c

-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
