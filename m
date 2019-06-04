Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36CF34356
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 11:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BqNI/qBqQS8tUlRGfmbURoL5yZgh7k32jD6U/IFmMaY=; b=qoDStUPs/13/K3
	pjM0BLxj9QdbARGD+NaUzvIPlQD2Q9Tgy+lsPbNBD7AAX2FmUkAGAzuo/zSi/UNbNZXH+/rjHWROI
	BdwiaslHOYdBM+YUu+P6g3tipbh8qZ+AVESSV/a32w7PN4VYB3by1FGwKdyQeRBxRe1P0l3FOSbA4
	fEHayb8P+8X+ru4Q4qtsTV6EdMOIhbI4PILYG9IS8oGCzbH2GEGqrJ9MDNOvLvSTljcHoawuZ6yD2
	kJwwW5o+cuUs7rba80cwZc9g0OKf6FwKA+vF/jzLSbeIhtF/k4WOOetLwyXWr+zh1QsG0oBSpXzBb
	LP+1282t4gDX27eEwfxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5tG-0000sT-5g; Tue, 04 Jun 2019 09:37:58 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5tB-0000mu-2D
 for linux-mediatek@lists.infradead.org; Tue, 04 Jun 2019 09:37:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id h2so6785529pgg.1
 for <linux-mediatek@lists.infradead.org>; Tue, 04 Jun 2019 02:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7TVSYqt0AsB7YJ3Xxm3mitaiZCuCIy+XhLVxFHTQpdU=;
 b=TtcFDUOJBTX4fU2GOjsgZOopz/xtxGVoz+Nwp22m4PeQyBKJ/joM9EAJNiIaRtoJ7H
 oKJ7hUmAgn59md500Nmzbpi8IoyMiB2Iq0+TXblIz4ZaTZKDAJSWjm7DG1PdYmhTUcj/
 j0dio82Tr0LUwlE4i2DbfXKQLb0EWq1oljcJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7TVSYqt0AsB7YJ3Xxm3mitaiZCuCIy+XhLVxFHTQpdU=;
 b=Hg5849j752AhSVbTrTdkGH5kjE7PRHgwpXN4/lNELR4Hirsl3Rsa8+hGcTsxKLbPIf
 U28GJ/iv3hIsRXYwxgNbhgFkSXlhwnPIHK3xPTNWtX6M5ChBGtoNH54XymPsmKhyNehd
 sIKDDvyJ3o5WIa7vQJHhiM6uxxEL5Tv1fHCCVoIXJVb5J6kfs25vJGq4I36LHzn+BXus
 bbhlcMSW/jHMaR0CQFw3MFcioS1njgbGZKfiuH0rOErPgkeGp5Dlst8eg8iWub1zdTnP
 CjJcbzcVfRus73Jt0hvID1+134QaQQ+wVpWkVHUlE4eAtq4E5CKmw+ujSnUN4IMq/4+y
 jqKg==
X-Gm-Message-State: APjAAAVqVApP8hpNpg5/bxppC7RmStZhdg3VD92AWqScYAXeb34YWbqu
 hKric+FmET2jE16b/knNVAyBAg==
X-Google-Smtp-Source: APXvYqygJscPGYv83kU8NoDlzGvEBMrfVK4hfkmv7ZiRjnzxo6G3Ih+KPMJupDZ/zyViHMve6I+sDg==
X-Received: by 2002:a17:90a:dd42:: with SMTP id
 u2mr35787654pjv.118.1559641072459; 
 Tue, 04 Jun 2019 02:37:52 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id j7sm17431588pfa.184.2019.06.04.02.37.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 02:37:51 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: [PATCH 0/5] media: mtk-vcodec: cleanups and fixes
Date: Tue,  4 Jun 2019 18:37:32 +0900
Message-Id: <20190604093737.172599-1-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_023753_735361_0FB2FDF2 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This series extracts the cleanup patches from the RFC of MT8183 support [1] as
these patches can already be merged. MT8183 support will be sent separately.

[1] https://patchwork.kernel.org/cover/10963769/

Changes since RFC:

- Replaced all GPLv2 headers with SPDX

- Replaced EXPORT_SYMBOL with EXPORT_SYMBOL_GPL

Alexandre Courbot (4):
  media: mtk-vcodec: replace GPLv2 with SPDX
  media: mtk-vcodec: avoid unneeded pointer-to-long conversions
  media: mtk-vcodec: remove unneeded proxy functions
  media: mtk-vcodec: constify formats

Yunfei Dong (1):
  media: mtk-vcodec: support single-buffer frames

 .../platform/mtk-vcodec/mtk_vcodec_dec.c      | 45 ++++++++-----------
 .../platform/mtk-vcodec/mtk_vcodec_dec.h      | 15 +------
 .../platform/mtk-vcodec/mtk_vcodec_dec_drv.c  | 15 +------
 .../platform/mtk-vcodec/mtk_vcodec_dec_pm.c   | 14 +-----
 .../platform/mtk-vcodec/mtk_vcodec_dec_pm.h   | 14 +-----
 .../platform/mtk-vcodec/mtk_vcodec_drv.h      | 19 ++------
 .../platform/mtk-vcodec/mtk_vcodec_enc.c      | 34 +++++---------
 .../platform/mtk-vcodec/mtk_vcodec_enc.h      | 15 +------
 .../platform/mtk-vcodec/mtk_vcodec_enc_drv.c  | 15 +------
 .../platform/mtk-vcodec/mtk_vcodec_enc_pm.c   | 14 +-----
 .../platform/mtk-vcodec/mtk_vcodec_enc_pm.h   | 14 +-----
 .../platform/mtk-vcodec/mtk_vcodec_intr.c     | 14 +-----
 .../platform/mtk-vcodec/mtk_vcodec_intr.h     | 14 +-----
 .../platform/mtk-vcodec/mtk_vcodec_util.c     | 15 +------
 .../platform/mtk-vcodec/mtk_vcodec_util.h     | 15 +------
 .../platform/mtk-vcodec/vdec/vdec_h264_if.c   | 35 ++++-----------
 .../platform/mtk-vcodec/vdec/vdec_vp8_if.c    | 36 ++++-----------
 .../platform/mtk-vcodec/vdec/vdec_vp9_if.c    | 37 ++++-----------
 .../media/platform/mtk-vcodec/vdec_drv_base.h | 22 +++------
 .../media/platform/mtk-vcodec/vdec_drv_if.c   | 29 ++++--------
 .../media/platform/mtk-vcodec/vdec_drv_if.h   | 15 +------
 .../media/platform/mtk-vcodec/vdec_ipi_msg.h  | 15 +------
 .../media/platform/mtk-vcodec/vdec_vpu_if.c   | 14 +-----
 .../media/platform/mtk-vcodec/vdec_vpu_if.h   | 14 +-----
 .../platform/mtk-vcodec/venc/venc_h264_if.c   | 36 +++------------
 .../platform/mtk-vcodec/venc/venc_vp8_if.c    | 35 +++------------
 .../media/platform/mtk-vcodec/venc_drv_base.h | 25 +++--------
 .../media/platform/mtk-vcodec/venc_drv_if.c   | 27 +++--------
 .../media/platform/mtk-vcodec/venc_drv_if.h   | 17 +------
 .../media/platform/mtk-vcodec/venc_ipi_msg.h  | 17 +------
 .../media/platform/mtk-vcodec/venc_vpu_if.c   | 15 +------
 .../media/platform/mtk-vcodec/venc_vpu_if.h   | 15 +------
 32 files changed, 114 insertions(+), 562 deletions(-)

-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
