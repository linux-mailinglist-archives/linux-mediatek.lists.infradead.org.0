Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DAD183150
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Mar 2020 14:26:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNPIuYEfgT3Hk5x3tZE8OVAl1UoTYG5OllQePpXg2Zc=; b=fKjd0xogRKXUq4
	TJquX+cblI0xF299+ugbpVNmI/toxslsEKUConO0c9t1jVvxLaUosGdn8I8fT/ZBUXM8x3RCDbUm8
	NI4VjK+gW+YO9sqMQlIzowmcEhHX9dy/dan+xiNBbU23TKpVw0731fzNEkti+EaUaauQMzymrQNXP
	Is4eHv63aHTk+U8GPz4K7dSGq+Lio5uBBv7SS+CrTpj+JNrvkdFK1ekFzNuOLpM6tFDgKLjEnTTaZ
	+LI84gsII9zEt+qKjEyHvkdzcY26fjDakVgOQkFocOl9OqejW0iLVPEGAciW9R0Eux5vnX7kbTiTq
	dvqS1cczOrt/svNO6XHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNqt-0000Rb-9W; Thu, 12 Mar 2020 13:26:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNoi-0005HA-UG; Thu, 12 Mar 2020 13:24:06 +0000
X-UUID: df6e1840b5a3400eb4ea4d2f4c150a61-20200312
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ssIHMZ3gzFIIN/d3N49O20oiYNm4fTdpyf9DffWHFP8=; 
 b=pcyN5pRH9SMaygnOI0ScQL2RvaG7HQtev4QnamSBZTxAboeamzEP8Z1zob2uWdn2jU+Y7i59LFYARh29FNBh4mfW6BJ1p+chgsioYrEGvI9PmvXSmTmEnbnoXxftKRoqeC4amKRTojMsYHJsZqhHPRWs8g3D0z7qCea7Df57PSg=;
X-UUID: df6e1840b5a3400eb4ea4d2f4c150a61-20200312
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 657788709; Thu, 12 Mar 2020 05:24:00 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 06:23:59 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 21:21:41 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Mar 2020 21:21:03 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v3 7/8] scsi: ufs: make HCE polling more compact to improve
 initializatoin latency
Date: Thu, 12 Mar 2020 21:23:49 +0800
Message-ID: <20200312132350.18061-8-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200312132350.18061-1-stanley.chu@mediatek.com>
References: <20200312132350.18061-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_062405_060013_BCE64E3B 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Reduce the waiting period between each HCE (Host Controller Enable)
polling from 5 ms to 1 ms. In the same time, increase the maximum polling
times to make "total polling time" unchanged approximately.

This change could make HCE initializatoin faster to improve latency of
ufshcd initialization, error recovery, and resume behaviors.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index dcbf45d547d8..cd33d07c56cf 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -4301,7 +4301,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
 	ufshcd_wait_us(hba->hba_enable_delay_us, 100, true);
 
 	/* wait for the host controller to complete initialization */
-	retry = 10;
+	retry = 50;
 	while (ufshcd_is_hba_active(hba)) {
 		if (retry) {
 			retry--;
@@ -4310,7 +4310,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
 				"Controller enable failed\n");
 			return -EIO;
 		}
-		ufshcd_wait_us(5000, 100, true);
+		ufshcd_wait_us(1000, 100, true);
 	}
 
 	/* enable UIC related interrupts */
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
