Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8486E1D7F50
	for <lists+linux-mediatek@lfdr.de>; Mon, 18 May 2020 18:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HlDF8XrZug7CzNTZ3rJ55PJ/mhhA/OFvyYjahT4OMEY=; b=Z2zv0kkt8SdniK
	kvEMaxhi0LT6Ydx33bWQi1Sj/Hzp5QAQXwEC9uckMVCchzKAV/rLRWZ4LfnqYhQWCl9KybBxuQWbd
	R9lK7TuSIScp87CjatDEXBCfiQeGLBnP2PSZPhGVsyY16LZnMv9/1HWtVNwdM9XAdFrmhRyqJfDkU
	I9WpZfFggyrMTy8YrQps2vePPU5SLi1l5C7GdGbKEC/kI+K5y5yi4SPbUOWroD/y+imvLGoZaRjwP
	W1Rl6dnVHL82lar9vH6I5FXHSu2SGN/bobGEJ7qPTmFbEJ/bJ2KfP10sjSnexIttk4ZvxHohLoFsU
	N+ip0awmUBf0LjRtvSrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaj3Q-00043I-Kc; Mon, 18 May 2020 16:55:52 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaj3A-0003oN-FX; Mon, 18 May 2020 16:55:38 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jaj33-0000jG-Ue; Mon, 18 May 2020 16:55:30 +0000
From: Colin King <colin.king@canonical.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Wolfram Sang <wsa@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH][next] i2c: mediatek: fix integer overflow on an integer
 multiplication
Date: Mon, 18 May 2020 17:55:29 +0100
Message-Id: <20200518165529.57821-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_095536_657594_6915F7E5 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Currently the calculation of sample_ns is using a 32 bit integer
multiplication and can potentially overflow. Fix this by making the
constant a long long to use a 64 bit multiply and hence
avoid an overflow.

Addresses-Coverity: ("Unintentional integer overflow")
Fixes: 5f1ae73d538a ("i2c: mediatek: Add i2c ac-timing adjust support")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/i2c/busses/i2c-mt65xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 702061805925..c93492b997ce 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -551,7 +551,7 @@ static int mtk_i2c_check_ac_timing(struct mtk_i2c *i2c,
 	const struct i2c_spec_values *spec;
 	unsigned int su_sta_cnt, low_cnt, high_cnt, max_step_cnt;
 	unsigned int sda_max, sda_min, clk_ns, max_sta_cnt = 0x3f;
-	long long sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src;
+	long long sample_ns = (1000000000LL * (sample_cnt + 1)) / clk_src;
 
 	if (!i2c->dev_comp->timing_adjust)
 		return 0;
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
