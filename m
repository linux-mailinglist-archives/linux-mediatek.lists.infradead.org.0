Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB931E5B88
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 11:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrByWsiUsfQOst0a3iI4w79rJD/EdNk2FeDKNmzwJw8=; b=GcuV2L7eRNVl3d
	g73T/XW4CqXaHNJsaZIoTzzpNv4idhOlr1H2RMcraVX8kBjU3kotk0Q2h8geIj25Yh6oQ4ZsSGEwJ
	EHtG/YgaqBMvx5UjNRjRwXFw1UfXB2kB7YHYOYRK/OMh1iSbSoGZkQadU8IDtYB+peSyXN0gJ/HI9
	+nSPZR7XVPxpAdkW0O43FuBvEO7FBSGMzvXfN9+bu80/KkZCQu2tXEKUgKu7IoBb/locxHnarQ5ol
	+MSTUyVeGwjG9Lu6NCJUI4jZfKO60gaFuujZ25zViK5fXMvAhLShwWj4jKk08D/ltnRF/q3denF/R
	C4N+raj7SsXD2Fv/y99Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEak-0002XW-Fo; Thu, 28 May 2020 09:12:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeEaA-0001vu-62; Thu, 28 May 2020 09:12:11 +0000
X-UUID: b038b0f8c4204a8a818614fdf0ddfb7d-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=nnpcRKVMg+Ds8Jsd86q+Mu9psGr5IX3/2sTy8A93vwo=; 
 b=W/GeP87wHCwmfHqHYbShQPDTFrW8o0tywUnT+tQfcc6tP3x8u/1KzAz8IahIAL5t1+d0dJm5jCV4pF96BVqtIxqvOzpTN4/TTERknRiaisvj9crHRL5pxT8l5kDYU1bNcXn9+Z2X4NGC7kunNcexD0OUmD0fpDx4ia1IWBvpe7U=;
X-UUID: b038b0f8c4204a8a818614fdf0ddfb7d-20200528
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1281432591; Thu, 28 May 2020 01:12:08 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 02:03:52 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 17:03:50 +0800
Received: from localhost.localdomain (10.15.43.140) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 28 May 2020 17:03:49 +0800
From: Fengping Yu <fengping.yu@mediatek.com>
To: Yingjoe Chen <yingjoe.chen@mediatek.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Marco Felsch <m.felsch@pengutronix.de>
Subject: [RESEND PATCH v11 3/3] configs: defconfig: Add
 CONFIG_KEYBOARD_MTK_KPD=m
Date: Thu, 28 May 2020 17:01:49 +0800
Message-ID: <20200528090144.54033-4-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200528090144.54033-1-fengping.yu@mediatek.com>
References: <20200528090144.54033-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_021210_231763_7F53C31A 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "fengping.yu" <fengping.yu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "fengping.yu" <fengping.yu@mediatek.com>

Add Mediatek matrix keypad support in defconfig.

Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 24e534d85045..112ced090b21 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -349,6 +349,7 @@ CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_SNVS_PWRKEY=m
 CONFIG_KEYBOARD_IMX_SC_KEY=m
 CONFIG_KEYBOARD_CROS_EC=y
+CONFIG_KEYBOARD_MTK_KPD=m
 CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ATMEL_MXT=m
 CONFIG_INPUT_MISC=y
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
