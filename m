Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3211F1813FD
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Mar 2020 10:06:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ujH9LBZZL642IhWIrLnPdkFqzVrM+yRkyxIUbh7qMKA=; b=IV5
	LlSy5kqoQ7OF48hubKeAeyda9cBf/LJ/x1wIjcdZSFgVdJe37uLzkZATzeUCpNYf+QIbAulT7G6YG
	Wj2kjJSAx9pMfqarZnNgpqw1h8zBepfT2jEGU0HPLLqMve0p2Ore+wyk28JZVKLpL7xCt4kCnlPgC
	1VtQ6fIS2SwZshfelgJnUlQK8z8I1mEhLB/d8Tp/3nOi0M9ycBPxT+zmQR1nfBxaTR+R3AfEdYkgh
	ceQB/LJtmnHI+jgB372DMmrzmvYfbdmdY5D7QMvk01uklQjIRY6BJjncRKES7uCB9nNn2oQIHJADz
	l21j7aL6O32jBDaGg8oVKZEvJYWtGdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxKD-0004fa-OY; Wed, 11 Mar 2020 09:06:49 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxKA-0004f0-Bd
 for linux-mediatek@lists.infradead.org; Wed, 11 Mar 2020 09:06:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1C44AAF5B;
 Wed, 11 Mar 2020 09:06:45 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Sean Wang <sean.wang@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] pinctrl: mediatek: Use scnprintf() for avoiding potential
 buffer overflow
Date: Wed, 11 Mar 2020 10:06:44 +0100
Message-Id: <20200311090644.20287-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020646_537330_5C5E8284 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/pinctrl/mediatek/pinctrl-paris.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
index 3ee8086f5e55..3853ec3a2a8e 100644
--- a/drivers/pinctrl/mediatek/pinctrl-paris.c
+++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
@@ -611,7 +611,7 @@ ssize_t mtk_pctrl_show_one_pin(struct mtk_pinctrl *hw,
 	} else if (pullen != MTK_DISABLE && pullen != MTK_ENABLE) {
 		pullen = 0;
 	}
-	len += snprintf(buf + len, bufLen - len,
+	len += scnprintf(buf + len, bufLen - len,
 			"%03d: %1d%1d%1d%1d%02d%1d%1d%1d%1d",
 			gpio,
 			pinmux,
@@ -625,10 +625,10 @@ ssize_t mtk_pctrl_show_one_pin(struct mtk_pinctrl *hw,
 			pullup);
 
 	if (r1 != -1) {
-		len += snprintf(buf + len, bufLen - len, " (%1d %1d)\n",
+		len += scnprintf(buf + len, bufLen - len, " (%1d %1d)\n",
 			r1, r0);
 	} else {
-		len += snprintf(buf + len, bufLen - len, "\n");
+		len += scnprintf(buf + len, bufLen - len, "\n");
 	}
 
 	return len;
-- 
2.16.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
