Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AC11D6355
	for <lists+linux-mediatek@lfdr.de>; Sat, 16 May 2020 19:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QaGlriLTpdqJelosAzgaZvMNdcZhJI1hGa2F+L4LW4I=; b=rnuUMfZPsW/3t4
	nhT7zx0CpOctPgna5RKAw7MB0BzaZFx+ahkjgBgMJJulvNOJ73EabJ4M/GPSWautPoOzzcETvaArz
	vapCFi4MNMkJJHZ4Pl35qQXo3dt+iskIptNzEp9QdbsduzRVJU6s3Q3TK70PnysfSZz1HuABXAiDg
	tKuqFkfTbEOE+4tIzOHkZ3DkoKL3zMXZiQ8aYcsb+S9uihMBJrj8bML9TTQJwpKmilN37CoZyYSVz
	vi3qq1MNcLzhMJ4/ciM4Ju1gxpEuvcfR5AMs+PKWCKFYSf2R68fTlTUk0ar9q2VYfxL5Lwt40iUmd
	U2d5VwSsJOnM6ybgwRcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja13n-0005A2-UC; Sat, 16 May 2020 17:57:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja132-0004Si-U4; Sat, 16 May 2020 17:56:34 +0000
X-UUID: 1d3e2eeabbe64fe781d8b3a5a31e55ab-20200516
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=smxDr4bDqkE0WeFbg5czyt0T5/ZlATJAURAS2eLOh2c=; 
 b=JGZBlk/L4DzWpESEXgjO/WytXBz+AnfEYA5JcWagqa9pnKHruznaANIpIjeQM3M5ahkItJicvVlDY5o/NzgA68DSzriIwt9QHKodoosmCfSNL8+MZcpLzIPqQryuJGSwISMCD9k+ILsSjDbYYeyr/wfwDJC4uiF8QEWc3e9OILI=;
X-UUID: 1d3e2eeabbe64fe781d8b3a5a31e55ab-20200516
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 429328705; Sat, 16 May 2020 09:56:35 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 16 May 2020 10:46:21 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 17 May 2020 01:46:13 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sun, 17 May 2020 01:46:13 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v3 0/5] scsi: ufs: Fix WriteBooster and cleanup UFS driver
Date: Sun, 17 May 2020 01:46:10 +0800
Message-ID: <20200516174615.15445-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: D1FFA3E32EA32E77CA68C80B76F405815EBCEA9C03532CCC767E5BDCDA7D90CF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_105632_978761_AB0282A4 
X-CRM114-Status: UNSURE (   6.12  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

This patch set fixes some WriteBooster issues and do small cleanup in UFS driver

v2 -> v3
  - Introduce patch [5] to fix possible VCC power drain during runtime suspend (Asutosh)

v1 -> v2
  - Remove dummy new line in patch [4] (Asutosh)
  - Add more limitation to allow WriteBooster flush during Hibern8 in runtime-suspend. Now the device power mode is kept as Active power mode only if link is put in Hibern8 or Auto-Hibern8 is enabled during runtime-suspend (Asutosh)

Stanley Chu (5):
  scsi: ufs: Remove unnecessary memset for dev_info
  scsi: ufs: Allow WriteBooster on UFS 2.2 devices
  scsi: ufs: Fix index of attributes query for WriteBooster feature
  scsi: ufs: Fix WriteBooster flush during runtime suspend
  scsi: ufs: Fix possible VCC power drain during runtime suspend

 drivers/scsi/ufs/ufs-sysfs.c | 13 ++++-
 drivers/scsi/ufs/ufs.h       |  2 +-
 drivers/scsi/ufs/ufshcd.c    | 99 +++++++++++++++++++++++++-----------
 drivers/scsi/ufs/ufshcd.h    |  3 +-
 4 files changed, 82 insertions(+), 35 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
