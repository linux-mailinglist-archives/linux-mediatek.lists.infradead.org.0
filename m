Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0DC64727
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 15:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LyEEBw//P9BAhETrlJlcMR307r8RLkrswrYZCt8ouWA=; b=sqCK/1Ao9qBM0B
	KbKSCHQXySL3bpJ0wMLopbrklynyeX3MJF/4q+ljVsbr1nmsFQ5+lWJZkSfeRQ6ZxeZRso62PjFsv
	RAaZKNhwyybq7iaC6cH7Hcw9YFvDQIlffIf6HfY4D384A9jzWzzeWtwf416aMNMOe/Ql/ULcJTpXO
	YQdNtMIlWqs9TaTV4/LCtUanNZQ8Ho8SMRTIgPuJPsEa/ILz4VE9Lmi5snd51/C4tnD045o2V+jyG
	qyBr3wDmyJiHU8AfaeWifxq2FQltFrLa4KAXfn8+HWDMb+Ykqb1IZkWj8vZfcf5OjqihGaRzjQf+N
	c3WdnX6rde8QzHjgMKIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlCox-00073x-01; Wed, 10 Jul 2019 13:39:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCno-0006ZP-5m; Wed, 10 Jul 2019 13:38:36 +0000
X-UUID: 79ac469ee18b4a8c828688fefa92dd7d-20190710
X-UUID: 79ac469ee18b4a8c828688fefa92dd7d-20190710
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1487566981; Wed, 10 Jul 2019 05:38:26 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 06:38:25 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 21:38:23 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 10 Jul 2019 21:38:23 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v3 0/4] scsi: ufs: Provide fatal and auto-hibern8 error history
Date: Wed, 10 Jul 2019 21:38:17 +0800
Message-ID: <1562765901-18328-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_063832_326402_B242C1C5 
X-CRM114-Status: UNSURE (   4.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sthumma@codeaurora.org, marc.w.gonzalez@free.fr, andy.teng@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com, peter.wang@mediatek.com,
 evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, ygardi@codeaurora.org,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patchset provides more information of fatal errros and auto-hibern8 errors
to improve debugging by keeping their error history as completed as possible.

Thanks Avri so much for prompt reviewing patchset v1.

I would like to post new version to add one more patch "scsi: ufs: Add history of fatal events"
to provide history for "non-interrupt-based" errors and abnormal events as well.

Example of fatal errors,
- Link startup error
- Suspend error
- Resume error

Example of abnormal events,
- Task or request abort
- Device reset (now equals to Logical Unit Reset)
- Host reset

Changes in v3:
- Fix one missing place to track link startup error (Avri Altman)
- Add history of device reset events (Avri Altman)
- Add history of host reset events

Changes in v2:
- Add new patch "scsi: ufs: Add history of fatal events"

Stanley Chu (4):
  scsi: ufs: Change names related to error history
  scsi: ufs: Add fatal and auto-hibern8 error history
  scsi: ufs: Do not reset error history during host reset
  scsi: ufs: Add history of fatal events

 drivers/scsi/ufs/ufshcd.c | 94 ++++++++++++++++++++++++---------------
 drivers/scsi/ufs/ufshcd.h | 42 ++++++++++++-----
 2 files changed, 90 insertions(+), 46 deletions(-)

-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
