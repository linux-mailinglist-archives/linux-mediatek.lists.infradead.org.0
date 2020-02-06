Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10934153D7D
	for <lists+linux-mediatek@lfdr.de>; Thu,  6 Feb 2020 04:18:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=++wjDjg1KsLYyMmxGEDAhG7lMJQ13oslt7xgdJ/Wqig=; b=bQIoqB8ArZTcxf
	ukbc5vIEfJO2ujp7wYjRj+Ho0HC91g4FBL/uQtajTodFCb8f+EUFtkwWWfTTmgUOLV+gnU7DP556D
	SgIAJoHDv3RPaiyuT59k7n6uxDN1KfsGonbjmhlOk/cZ6hOIyHDFuv+74P0lmci2FKLqrwYu1kmoa
	+ZXLGiGed8QDYJI7IvZ4h7R34+nDAjCffPGS6Bj1DDZuO9e9vy0sX3KhC1sGQwVrkNoHgrzyXTTj+
	pWNL2GsyuOcgAznD7WGLVVdeCZbwutQVj8abd0eFi+xSadh3NIIs9JamltRD1Po/2Fwl8aTRb4yUo
	0ZOfUyZSJNC9PlwfExnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izXgF-0003ko-0N; Thu, 06 Feb 2020 03:18:15 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izXgC-0003kA-JR
 for linux-mediatek@lists.infradead.org; Thu, 06 Feb 2020 03:18:13 +0000
Received: by mail-pl1-x64a.google.com with SMTP id d20so2400336pls.15
 for <linux-mediatek@lists.infradead.org>; Wed, 05 Feb 2020 19:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=uzNslwih52mut38yu2zPYARWSPgX7/Fj9tEkbUQiLCY=;
 b=kQipj1HOw6H9RjfqtABkLQr6XZs45QySHOuXfNbVYLTKTbVR6lJvlWXrJJqmXEvNHv
 7KYy3ZYtw0T7EMWkG267WNwwf4j5dBwiBhQN/aWL6NT+/nrNvt+BqaLm69DMvYP1KeMz
 533QlILj02oeM4k42xqA5qS3IicNO2AP9Y6p0MiBG1SswCLxhpani/zASYBossTXapj7
 xCOIY45RzAA3+a98PuK+kRfWpAFwI10l/MgT8hrB85mslJA+g8whCZVdw4+dXVcmGT90
 G6nhcNyzFXY1D15PmKFR/A1K2wIyT/Vaz5RxYW4oxehV7MFgH2WlXGb26+pAoO8+LBRG
 Lrtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=uzNslwih52mut38yu2zPYARWSPgX7/Fj9tEkbUQiLCY=;
 b=VaYtJXyiaYHZrN5DTATDuAFgrrPfTBXww/gmSeSmrhoYuHWziVT/bLoQnJLhZtButr
 bbNulajoKn/oq52Ul9X6Kcdp8cgu59jKCjyAKrkEmwyUDRohrJc8S2BQuFoJokpPXieq
 eNONS0GJNEr1mRpmW+Nlqn5pDe8/uDXkM8/tgoPdmrmw3kIlKjdJy8zbQZjais3bZi4x
 K3YiFoK0b3AtU0nkn7RpXfQlBy4w7HO7c8DtD8ViEMWzhEpGtZULofjocjXp4BKR/Yqs
 nTm8j+G/g1eBsk5jZFulVpXfsjkvv8CKT1UYtxJamXUzJi2CfgK5lld2AFgZ//YtiGbE
 S4LA==
X-Gm-Message-State: APjAAAXL/+0mNPjalXCNjNLfFr3XOZA8zQ5Z930cE/5wDRoBhG4IK509
 fmpXW9oyqor8XAxiCwJCB4BPBkmZLMjH
X-Google-Smtp-Source: APXvYqxvANnV5oSf4Bvv4neQ0kGoZkwLa+xHXPicON44dm/8skMS0QJiNuOflobRRu27n/GdR45z8/gaqNb5
X-Received: by 2002:a63:2bc3:: with SMTP id r186mr1296081pgr.294.1580959090963; 
 Wed, 05 Feb 2020 19:18:10 -0800 (PST)
Date: Thu,  6 Feb 2020 11:17:49 +0800
Message-Id: <20200206031752.193298-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 0/3] ASoC: mediatek: mt8173-rt5650: HDMI jack reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_191812_669018_F59F4BA2 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alsa-devel@alsa-project.org, cychiang@google.com, tzungbi@google.com,
 dri-devel@lists.freedesktop.org, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The series supports HDMI jack reporting to mt8173-rt5650.

The 1st patch is less related.  It stops running in probe() if failed
to register audio driver.

The 2nd patch supports jack reporting in DRM driver.

The 3rd patch supports jack reporting in mt8173-rt5650 ASoC machine
driver.

Changes from v1:
- refactor the 2nd patch to simplify the code

Tzung-Bi Shih (3):
  drm/mediatek: exit earlier if failed to register audio driver
  drm/mediatek: support HDMI jack status reporting
  ASoC: mediatek: mt8173-rt5650: support HDMI jack reporting

 drivers/gpu/drm/mediatek/mtk_hdmi.c       | 45 ++++++++++++++++++++---
 sound/soc/mediatek/mt8173/mt8173-rt5650.c | 17 ++++++++-
 2 files changed, 55 insertions(+), 7 deletions(-)

-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
