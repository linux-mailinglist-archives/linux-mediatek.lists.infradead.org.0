Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB62B08E6
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 08:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1agudRofRqQjzlba7MwNzEV/V0LeHx9GMxysEn7uBmY=; b=rNk58BttjKnzTV
	iaJdW0+o91EjSfBFORfZdb9evm0uI2jKy/WnYSwbK1bIB+caiXSzBXKCR0swcuC5i4WznKxatoJlK
	hK00EInJY9r88r2iruuaaaUasuUfXI2YZlp4xag10dcgTA39dR4VcvSoxXKISIdA5xADHsyON9NY/
	6Hr0j5Jk2VFfD4gPuHhXltVLJvXCrh31PmEDrjUDGLUzB6JVeWzzutTEOYHiCosJjShYrcOhOqMsF
	0A3VdBnV4TtGKbuTmIKfAPHU9PaOCqOCVHJTbW6xEe28t16sdCkyBp0KTbJrDEy/CTPpzZSCNmLRO
	vLndrqP+ikzmEi0KEgOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Ii4-0006Ve-PM; Thu, 12 Sep 2019 06:36:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Ihm-0006Gx-NM; Thu, 12 Sep 2019 06:35:49 +0000
X-UUID: bd9173ef494c444a923dc2d542fccc17-20190911
X-UUID: bd9173ef494c444a923dc2d542fccc17-20190911
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 14028072; Wed, 11 Sep 2019 22:35:39 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 23:35:38 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 14:35:35 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Sep 2019 14:35:35 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <sthumma@codeaurora.org>, <jejb@linux.ibm.com>,
 <bvanassche@acm.org>
Subject: [PATCH v2] scsi: allow auto suspend override by low-level driver
Date: Thu, 12 Sep 2019 14:35:32 +0800
Message-ID: <1568270135-32442-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 69DFC312C55A697E8114525BFA6A4A5DF700A0FEEAA883F214F7D392E1776FDE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_233546_766021_920DBF78 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 vivek.gautam@codeaurora.org, matthias.bgg@gmail.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Until now the scsi mid-layer forbids runtime suspend till userspace
enables it. This is mainly to quarantine some disks with broken
runtime power management or have high latencies executing suspend
resume callbacks. If the userspace doesn't enable the runtime suspend
the underlying hardware will be always on even when it is not doing
any useful work and thus wasting power.

Some low-level drivers for the controllers can efficiently use runtime
power management to reduce power consumption and improve battery life.

This patchset allows runtime suspend parameters override within the LLD itself
instead of waiting for userspace to control the power management, and
make UFS as the first user of this capability.

v1 => v2:
- Allow "zero" sdev->rpm_autosuspend_delay (Avri)
- Fix format of some lines (Avri)

Stanley Chu (3):
  scsi: core: allow auto suspend override by low-level driver
  scsi: ufs: override auto suspend tunables for ufs
  scsi: ufs-mediatek: enable auto suspend capability

 drivers/scsi/scsi_scan.c        |  6 ++++++
 drivers/scsi/scsi_sysfs.c       |  3 ++-
 drivers/scsi/sd.c               |  4 ++++
 drivers/scsi/ufs/ufs-mediatek.c |  7 +++++++
 drivers/scsi/ufs/ufshcd.c       |  8 ++++++++
 drivers/scsi/ufs/ufshcd.h       | 10 ++++++++++
 include/scsi/scsi_device.h      |  2 +-
 7 files changed, 38 insertions(+), 2 deletions(-)

-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
