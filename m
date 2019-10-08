Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D25A1CF9DB
	for <lists+linux-mediatek@lfdr.de>; Tue,  8 Oct 2019 14:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edr1YzkeC1t3cgrfORoqkrHDw6kbeWIYpuulawZe9IY=; b=CpAWfpwHqev4Iw
	nPDudySR3FVCpEMYgC0GGGEY0Dve8JZR25cSx8rYnCxb8WiXFYJIqNAZZ3Q8m+WQqMDq1iU6HDiKI
	cVPMTN8t+CvqPGtknUMPWOL5N5Oawch43bGnLRs2eZSGIS8rnCLisl/8S8kmsx29pEbHc2CcSp8my
	8jrWBWNXPlwCnRfqK7VVWY1zlhdPUhpU6PSMQgFaNSddqAewfanV+Cc8ErFKfb5OjbXEABd4uBoZL
	qnBbIjJyp/oH0GEN8b7XtgDcrCiyKi6tbCKkZEd64DL8EA2zfqEDxNr8IGpS6/UAtFrS4N1iMkt4X
	sWTFqXD3fyv5OwSji8vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoga-0007bP-Ty; Tue, 08 Oct 2019 12:33:52 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHogX-0007Zw-W4
 for linux-mediatek@lists.infradead.org; Tue, 08 Oct 2019 12:33:51 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iHogT-0000vg-An; Tue, 08 Oct 2019 13:33:45 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iHogS-0000Py-Jd; Tue, 08 Oct 2019 13:33:44 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infraread.org
Subject: [PATCH 05/11] arm: mediatek: force type of mtk_smp_base
Date: Tue,  8 Oct 2019 13:33:35 +0100
Message-Id: <20191008123341.1551-5-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191008123341.1551-1-ben.dooks@codethink.co.uk>
References: <20191008123341.1551-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053350_179845_ECC6F7DD 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In __mtk_smp_prepare_cpus force the return of phys_to_virt()
to have __iomem on it to avoid the following sparse warning:

arch/arm/mach-mediatek/platsmp.c:105:30: warning: incorrect type in assignment (different address spaces)
arch/arm/mach-mediatek/platsmp.c:105:30:    expected void [noderef] <asn:2> *static [toplevel] mtk_smp_base
arch/arm/mach-mediatek/platsmp.c:105:30:    got void *

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org
---
 arch/arm/mach-mediatek/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-mediatek/platsmp.c b/arch/arm/mach-mediatek/platsmp.c
index 16a4ee6c9590..3717b960618d 100644
--- a/arch/arm/mach-mediatek/platsmp.c
+++ b/arch/arm/mach-mediatek/platsmp.c
@@ -102,7 +102,7 @@ static void __init __mtk_smp_prepare_cpus(unsigned int max_cpus, int trustzone)
 
 	if (trustzone) {
 		/* smp_base(trustzone-bootinfo) is reserved by device tree */
-		mtk_smp_base = phys_to_virt(mtk_smp_info->smp_base);
+		mtk_smp_base = (void __force __iomem *)phys_to_virt(mtk_smp_info->smp_base);
 	} else {
 		mtk_smp_base = ioremap(mtk_smp_info->smp_base, MTK_SMP_REG_SIZE);
 		if (!mtk_smp_base) {
-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
