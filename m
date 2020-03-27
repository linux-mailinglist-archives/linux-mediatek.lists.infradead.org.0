Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244F819547B
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Mar 2020 10:54:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJPv5sZpyKjzSfJz3DmocI3du7NI2WRgpAmgZObtMmM=; b=f06jD2i7wTT+Au
	k20mu079yx6NIWmD2CWUuv8eoif3tFyBVd0YlbEqfMjItMVzSE0OFT74FWJDuYp6ugQkMqg9JGQZR
	FWOMHrWpl+4FBWcC8SgSYmRqfsYkEYXtqJwMlRcrZBREYyM639v7/fbmWFuKO+gthYNySV33C+xsk
	1RiDSTesWKXiS+zF3JacmnOTfPU26x6bRLHkUEANBrp52pi1rqaA/KEd2kjfwxFF6VoYbWiHiiLVk
	W3t4KR4Q2vm2IiJMUK5p5d3MW8WA618Xaujuxms1lyaVOvjMedOX8vJPWoMLwsu0n5Ltl0qfkjsJj
	e2MY+1vsgoEUQVC2IQgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHlgY-0004ZD-6m; Fri, 27 Mar 2020 09:53:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHlgJ-0004QJ-Gr; Fri, 27 Mar 2020 09:53:40 +0000
X-UUID: d5b6591ac9dc4c14a79d2c84661893d5-20200327
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=w7oxstLD2GuzbIKhk9bnNyPTXe7NJEzoA3j++6T3ySo=; 
 b=QBzBkwQXBm+f4vWbHIUUJNPHiM0p45Rf3xbEmIWcq/q5qROZnBPQEEW6wwhI2OtSln95CMXADkIoMFuKW/0LE+enzWxMPDZ7Y44H9V2jjECgPsaMmFPKtxBwqmhACoVc9ryqQ9WWl9+QjmFp0g+H+RUlYP217Ui31S/fGgTfEfY=;
X-UUID: d5b6591ac9dc4c14a79d2c84661893d5-20200327
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 411029741; Fri, 27 Mar 2020 01:53:35 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Mar 2020 02:53:33 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Mar 2020 17:53:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 27 Mar 2020 17:53:30 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v3 1/2] scsi: ufs: export ufshcd_link_recovery for vendor's
 error recovery
Date: Fri, 27 Mar 2020 17:53:28 +0800
Message-ID: <20200327095329.10083-2-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200327095329.10083-1-stanley.chu@mediatek.com>
References: <20200327095329.10083-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E08D348CC037095C24DB8AD27AA26EF5FAEBA49D95044037708CACD30FC09F102000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_025339_566128_18069EDD 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

export ufshcd_link_recovery to allow vendors to recover failed link
in vendor's callbacks.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufshcd.c | 3 ++-
 drivers/scsi/ufs/ufshcd.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index b4294b2c6f4a..227660a1a446 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -3756,7 +3756,7 @@ static int ufshcd_uic_change_pwr_mode(struct ufs_hba *hba, u8 mode)
 	return ret;
 }
 
-static int ufshcd_link_recovery(struct ufs_hba *hba)
+int ufshcd_link_recovery(struct ufs_hba *hba)
 {
 	int ret;
 	unsigned long flags;
@@ -3783,6 +3783,7 @@ static int ufshcd_link_recovery(struct ufs_hba *hba)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(ufshcd_link_recovery);
 
 static int __ufshcd_uic_hibern8_enter(struct ufs_hba *hba)
 {
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 9f1576bbfc50..b7bd81795c24 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -795,6 +795,7 @@ int ufshcd_alloc_host(struct device *, struct ufs_hba **);
 void ufshcd_dealloc_host(struct ufs_hba *);
 int ufshcd_hba_enable(struct ufs_hba *hba);
 int ufshcd_init(struct ufs_hba * , void __iomem * , unsigned int);
+int ufshcd_link_recovery(struct ufs_hba *hba);
 int ufshcd_make_hba_operational(struct ufs_hba *hba);
 void ufshcd_remove(struct ufs_hba *);
 int ufshcd_uic_hibern8_exit(struct ufs_hba *hba);
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
