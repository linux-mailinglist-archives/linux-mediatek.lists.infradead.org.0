Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811B5196386
	for <lists+linux-mediatek@lfdr.de>; Sat, 28 Mar 2020 05:16:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mUOXZnD8ybJv7lCZcwMXafQp0mql5abwrgLXdDtqWcw=; b=db4I35utTv4nzb
	/yMzpc1BLhW6Biv7b8J13FL0LMk9GCE4SN6pFBJNBDdGKUnMxNq/s6UGyX75o2ZJV2M6ijkboIYsQ
	StW7CX0z93fKK8TRWPwYq5GaHyDt10HP/tcmgs3dBsVqmgW9RJjZA0WZmQ9Iso/2/1p64CwiSfnrO
	wqwhg87vG4smFnodCvyOV1ewt9EW3RgJHql+wn+zIwn4fHXHg6PJwwCFxnZF8Wroyq0ln3tlI7KfS
	5LTik5rCd1izqVFQOIi4774bTYO0265Wmn3szRkWJNbczFs52tbkAKNUwk+YR6GK0ITwpA4uvF54r
	/Nuta1GgNJneiIU3RKiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI2ta-0003UN-Qs; Sat, 28 Mar 2020 04:16:30 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI2tX-0003Tl-1P
 for linux-mediatek@lists.infradead.org; Sat, 28 Mar 2020 04:16:28 +0000
Received: by mail-pl1-x642.google.com with SMTP id s23so4256413plq.13
 for <linux-mediatek@lists.infradead.org>; Fri, 27 Mar 2020 21:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sVWn43NqLR3tLEZh5Y98iaDMlPEIz/1h2UHcds3kBXg=;
 b=QGbyYModlVyJIfWRsIVy3qc0JDBrMzhVfgj81f2hF+ehgXDrGVkeNWDUnZBgd37qVH
 S88oblXh+y+y19+93qDCbpwLtBT8Dehx2HKaBAcATYNq5Ow9x2lU7HNbvMSE3lVtD0xY
 ht0Q4DUfegGtQ14gGSSQSY2h5MdSStYnJG9q2WHZ9+nFgyBqQ0UoIo05I+LoZvxC/wUS
 CsT/cvY2oXTZLEvHUr1dExCgI2g4IxuIgeudQaNR/eRNO5ahWAhI85B2MuADh2eVaKNN
 D7UEM29ybfc7zv/wlan4FYnXo+18uRlYV6efq/ROk1rXsMJtjVhnm/DNtlGmmtlsz5tA
 IFSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sVWn43NqLR3tLEZh5Y98iaDMlPEIz/1h2UHcds3kBXg=;
 b=hMs+VwDFaM5jlQygJxYDWHsn4dLo6VRosjRQzdEhuBE8K20Ki+3eknayQk95v/RuLi
 cWYu4244mkHI7/nDTqUiR28/SNVbCIwCps+DnDCS3sWsFyZxBtNnZqh1clMRUFFvuWuL
 Pe29on1PheDjvfId6TxvsCaeijiwl8hXiDhr3hnghtLrM1AcckEpGCKGwDpv3AU1PTfH
 KLElsFr5usFOwxOh2aw/++jMM5cwQG3g/4Iu0Q5+ZI+L6KiVvqzFArlzC/YZdLPIx0Rx
 IWN/PF13bCKTuBSWcUqICQ/ST0HGwcXaPCC+ttCKfOLXUMsM5FU5iJj3lOZ2MM+eH60C
 oaAQ==
X-Gm-Message-State: ANhLgQ0QbZAf30aEEI+YUVapYjd8GoSr9NH9i6dnuR9ia9ixsbdETK44
 OVIRrzYwJZLmceqbvN32C+Pd2/vK07s=
X-Google-Smtp-Source: ADFU+vs3Ce1yOll+zcwspdvoRrWuF4MokGCPI9kd7oMAXqYASz45vLAlrXMaw0wcl2frQjxLG/SpOA==
X-Received: by 2002:a17:90a:db02:: with SMTP id
 g2mr2895113pjv.15.1585368985725; 
 Fri, 27 Mar 2020 21:16:25 -0700 (PDT)
Received: from guoguo-omen.lan ([240e:379:97d:e970:8934:6f24:2a5f:6e75])
 by smtp.gmail.com with ESMTPSA id v123sm5174578pfb.85.2020.03.27.21.16.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 21:16:25 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mips@vger.kernel.org
Subject: [PATCH] MIPS: ralink: drop ralink_clk_init for mt7621
Date: Sat, 28 Mar 2020 12:14:57 +0800
Message-Id: <20200328041523.81229-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_211627_106110_290CA1B5 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mediatek@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chuanhong Guo <gch981213@gmail.com>, linux-kernel@vger.kernel.org,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

ralink_clk_init is only called in arch/mips/ralink/clk.c which isn't
compiled for mt7621. And it doesn't export a proper cpu clock.
Drop this unused function.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 arch/mips/ralink/mt7621.c | 43 ---------------------------------------
 1 file changed, 43 deletions(-)

diff --git a/arch/mips/ralink/mt7621.c b/arch/mips/ralink/mt7621.c
index 905460aeeb1f..e309a79b18e4 100644
--- a/arch/mips/ralink/mt7621.c
+++ b/arch/mips/ralink/mt7621.c
@@ -20,11 +20,6 @@
 
 #include "common.h"
 
-#define SYSC_REG_SYSCFG		0x10
-#define SYSC_REG_CPLL_CLKCFG0	0x2c
-#define SYSC_REG_CUR_CLK_STS	0x44
-#define CPU_CLK_SEL		(BIT(30) | BIT(31))
-
 #define MT7621_GPIO_MODE_UART1		1
 #define MT7621_GPIO_MODE_I2C		2
 #define MT7621_GPIO_MODE_UART3_MASK	0x3
@@ -115,44 +110,6 @@ phys_addr_t mips_cpc_default_phys_base(void)
 	panic("Cannot detect cpc address");
 }
 
-void __init ralink_clk_init(void)
-{
-	int cpu_fdiv = 0;
-	int cpu_ffrac = 0;
-	int fbdiv = 0;
-	u32 clk_sts, syscfg;
-	u8 clk_sel = 0, xtal_mode;
-	u32 cpu_clk;
-
-	if ((rt_sysc_r32(SYSC_REG_CPLL_CLKCFG0) & CPU_CLK_SEL) != 0)
-		clk_sel = 1;
-
-	switch (clk_sel) {
-	case 0:
-		clk_sts = rt_sysc_r32(SYSC_REG_CUR_CLK_STS);
-		cpu_fdiv = ((clk_sts >> 8) & 0x1F);
-		cpu_ffrac = (clk_sts & 0x1F);
-		cpu_clk = (500 * cpu_ffrac / cpu_fdiv) * 1000 * 1000;
-		break;
-
-	case 1:
-		fbdiv = ((rt_sysc_r32(0x648) >> 4) & 0x7F) + 1;
-		syscfg = rt_sysc_r32(SYSC_REG_SYSCFG);
-		xtal_mode = (syscfg >> 6) & 0x7;
-		if (xtal_mode >= 6) {
-			/* 25Mhz Xtal */
-			cpu_clk = 25 * fbdiv * 1000 * 1000;
-		} else if (xtal_mode >= 3) {
-			/* 40Mhz Xtal */
-			cpu_clk = 40 * fbdiv * 1000 * 1000;
-		} else {
-			/* 20Mhz Xtal */
-			cpu_clk = 20 * fbdiv * 1000 * 1000;
-		}
-		break;
-	}
-}
-
 void __init ralink_of_remap(void)
 {
 	rt_sysc_membase = plat_of_remap_node("mtk,mt7621-sysc");
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
