Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD3219375F
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Mar 2020 05:49:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Message-ID:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6unLsrPvEKhGgJHJJAz+1PagzLtkJOORf3f2bm3YAkY=; b=MiNxBZTrNRfyVQ
	YShHK/FOsf5DAMMe7/pr8pcSQ/tsl1iVlcfauC9zJyzy+Dyr/eqko0EhmCyBa7DGB7YTwHklP4cc5
	rSeQRWIDq+6vVFEjbvvzBhgsKa3vUbp9rP4qJhGfPwFXEsGb23SUrABYM4D15ngu0tcHrhDtD/GVb
	VbfHQHWUyxPRA50HEXwhGdzFfkzdebWwcYFB3HHEubZFbV1+cw7Xw3bUOA4rraxtP9gp0JzANX6a2
	+vrnZyhfX39JzX2senvCsn+2AS7lpnoT+EGPgXysxL/op13YP8tzatuBJDGAkrGl1DaMBpSa0QI4V
	AX/4Bj+N7er/EdpnlOxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHKSZ-0002Yu-8I; Thu, 26 Mar 2020 04:49:39 +0000
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHKSV-0002Xe-PA
 for linux-mediatek@lists.infradead.org; Thu, 26 Mar 2020 04:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585198133; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=l2PNpR2Rc6LMbAWYXl8TckJ3AJ68KwDurPM44WgWOeQ=;
 b=JktAJCvfbErbaXFiovxaNBK1nkVnA/v8QmlERPL5f4nE/J0LBVIusx9+rYAecu7W
 mMZlfGsaO1mhB3nedStqoCwWyHD3gVrLomDwltPx09oTwa6Jjo6OAsc1nDQpo8zIraV
 wyR9z3b36PLOpiQOwSUG2uW92Sp0oZcL19WxDjiY=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1585198130690885.1881599862174;
 Thu, 26 Mar 2020 12:48:50 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200326044804.382981-1-jiaxun.yang@flygoat.com>
Subject: [PATCH 1/2] MIPS: Kill MIPS_GIC_IRQ_BASE
Date: Thu, 26 Mar 2020 12:48:03 +0800
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_214936_295941_74BA2BC2 
X-CRM114-Status: UNSURE (   3.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [124.251.121.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mediatek@lists.infradead.org, tsbogend@alpha.franken.de,
 gch981213@gmail.com, Jiaxun Yang <jiaxun.yang@flygoat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

It never got used by any driver.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/include/asm/mach-generic/irq.h   | 6 ------
 arch/mips/include/asm/mach-ralink/mt7621.h | 2 --
 2 files changed, 8 deletions(-)

diff --git a/arch/mips/include/asm/mach-generic/irq.h b/arch/mips/include/asm/mach-generic/irq.h
index be546a0f65fa..72ac2c202c55 100644
--- a/arch/mips/include/asm/mach-generic/irq.h
+++ b/arch/mips/include/asm/mach-generic/irq.h
@@ -36,10 +36,4 @@
 
 #endif /* CONFIG_IRQ_MIPS_CPU */
 
-#ifdef CONFIG_MIPS_GIC
-#ifndef MIPS_GIC_IRQ_BASE
-#define MIPS_GIC_IRQ_BASE (MIPS_CPU_IRQ_BASE + 8)
-#endif
-#endif /* CONFIG_MIPS_GIC */
-
 #endif /* __ASM_MACH_GENERIC_IRQ_H */
diff --git a/arch/mips/include/asm/mach-ralink/mt7621.h b/arch/mips/include/asm/mach-ralink/mt7621.h
index 65483a4681ab..e1af1ba50bd8 100644
--- a/arch/mips/include/asm/mach-ralink/mt7621.h
+++ b/arch/mips/include/asm/mach-ralink/mt7621.h
@@ -31,6 +31,4 @@
 #define MT7621_CHIP_NAME0		0x3637544D
 #define MT7621_CHIP_NAME1		0x20203132
 
-#define MIPS_GIC_IRQ_BASE           (MIPS_CPU_IRQ_BASE + 8)
-
 #endif
-- 
2.26.0.rc2



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
