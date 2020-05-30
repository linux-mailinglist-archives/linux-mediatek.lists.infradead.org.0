Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509A21E91F2
	for <lists+linux-mediatek@lfdr.de>; Sat, 30 May 2020 16:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HyKGiwDxnsperjzpe8Brf+giH90cgWaI9AStQc9Lhd8=; b=cwv6gffokmQIyZ
	dse0A1GZnrS86VfmsDQrdV7Fv2Z5+gRvDcU+9bOZKCIlxkZsqo2d8kAS5QCxLJfkX+m6Yb/ZdQAU8
	QbVNK1Qlh7euqaX6u6iUij/f9h7st6kZwatBdjOYzX9JwavuE1yt8loE+fr2RbQ5dGuE3Tmy1iL/C
	M7yhPESaQ4fSyWdYnN4jGk5IHx4Z8LtMLjZdIMe4fbKSZnL03RWZZsO6ONdAOhNTgiPfZ0g6b4fh9
	MH1JBbDfRsRy+h3IfZug8eZdFMyT6hdPu8srZE7QFof3OsURhrlIL8DxdMSUvMTfm+3XgQD8Yzyzd
	Ic8neMA+kOqT/Tr8+qZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf2E6-0003XF-If; Sat, 30 May 2020 14:12:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf2Dv-0003QL-RF; Sat, 30 May 2020 14:12:33 +0000
X-UUID: 6b55e71014a74994ad7654d1795b052c-20200530
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=TRzfygmbM6NOVfxuTVlVW0qLZCaDk7UZJHKfhhCZMfw=; 
 b=ex6dMNgxPYq09qpGuR9BDb8y2mJoJFeWUB/6CmSgFdp3HOknvoRzVUG0rVnzp89T+0B2rXks8f0nbLqY1d9+r6BmmlLDsnDH5sTlpC6SiIY3fIMFWjJSyF7ipLeRmEWkMrHdvNUbC35vyyxGu/kxORGvMzz3Zg3WO6vXP4NPT7M=;
X-UUID: 6b55e71014a74994ad7654d1795b052c-20200530
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 139371756; Sat, 30 May 2020 06:11:57 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 07:12:19 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 22:12:03 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 30 May 2020 22:12:02 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH] scsi: ufs: Remove redundant urgent_bkop_lvl initialization
Date: Sat, 30 May 2020 22:12:00 +0800
Message-ID: <20200530141200.4616-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: A7F479A583566983861BC99DC4B0FA8CC3DA554407449841405341448573BA832000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_071231_884306_EE85E7EB 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, cc.chou@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In ufshcd_probe_hba(), all BKOP SW tracking variables can be reset
together in ufshcd_force_reset_auto_bkops(), thus urgent_bkop_lvl
initialization in the beginning of ufshcd_probe_hba() can be merged
into ufshcd_force_reset_auto_bkops().

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 5db18f444ea9..f11be69e50e9 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5076,6 +5076,7 @@ static void ufshcd_force_reset_auto_bkops(struct ufs_hba *hba)
 		hba->ee_ctrl_mask &= ~MASK_EE_URGENT_BKOPS;
 		ufshcd_disable_auto_bkops(hba);
 	}
+	hba->urgent_bkops_lvl = BKOPS_STATUS_PERF_IMPACT;
 	hba->is_urgent_bkops_lvl_checked = false;
 }
 
@@ -7373,10 +7374,6 @@ static int ufshcd_probe_hba(struct ufs_hba *hba, bool async)
 	if (ret)
 		goto out;
 
-	/* set the default level for urgent bkops */
-	hba->urgent_bkops_lvl = BKOPS_STATUS_PERF_IMPACT;
-	hba->is_urgent_bkops_lvl_checked = false;
-
 	/* Debug counters initialization */
 	ufshcd_clear_dbg_ufs_stats(hba);
 
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
