Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39F86409A
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 07:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UpqMQ0DF/FGnebTwmm2vJOqLT4CB6B403YOUdbdiBAw=; b=ax0PBhWfLfedbP
	1L2RHG/4GIP/huRHv3B7qdvHHlbnt4KU9y0nBiq1wn+yPIiSuBjOiY0KFhn1Me9ZUGSXbBVWUDyI+
	OfTjKzTMS4qfI+DL+xXhVE5sI18GlJUOOV8hkN7zz/niaiABL+C47NnwEl8VVHv40bu3D0brkDLRQ
	eEJ7VWb2ZfrcNXAEE8SxcfZboyD30WBuUILh7Stau1R3ZGPqD39ghdxa3daXDnxBKrGLzbfhAGLcn
	BRurUbBmnM0xQ8EvSiSzs5TgD768R/vDzQePYxwVI+SJLSmCBkiuZYjWHlDevVVHerTqkWrerJFl3
	Xl4oE7DgPDtDSIQV27mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl53a-0008I3-Uv; Wed, 10 Jul 2019 05:22:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl51y-0006zM-0E; Wed, 10 Jul 2019 05:20:40 +0000
X-UUID: 77e5222acb56488a9d6cfcc4c12e119e-20190709
X-UUID: 77e5222acb56488a9d6cfcc4c12e119e-20190709
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1154605883; Tue, 09 Jul 2019 21:20:21 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 22:20:20 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 13:20:18 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 10 Jul 2019 13:20:18 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v2 0/4] scsi: ufs: Provide fatal and auto-hibern8 error history
Date: Wed, 10 Jul 2019 13:20:13 +0800
Message-ID: <1562736017-29461-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_222038_065150_5C7FB6C4 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

I would like to post v2 to add one more patch "scsi: ufs: Add history of fatal events"
to add history for "non-interrupt-based" errors as well, for example,

- Link startup fail
- Suspend fail
- Resume fail
- Task or request abort event

Changes in v2:
- Add new patch "scsi: ufs: Add history of fatal events".

Stanley Chu (4):
  scsi: ufs: Change names related to error history
  scsi: ufs: Add fatal and auto-hibern8 error history
  scsi: ufs: Do not reset error history during host reset
  scsi: ufs: Add history of fatal events

 drivers/scsi/ufs/ufshcd.c | 87 +++++++++++++++++++++++----------------
 drivers/scsi/ufs/ufshcd.h | 38 ++++++++++++-----
 2 files changed, 80 insertions(+), 45 deletions(-)

-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
