Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756BC1552B1
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Feb 2020 08:04:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LkaUKaSbx6uUEWBi+ayJ/NptxUzfWBRrk2NrE/J3RUs=; b=K79Cn+NH6SFh2e
	9apTMeyh7cqHX/C3h/+V12iuUzLpfez+nAHkW28C/48wKQcPt92Pm3kaQ8nwi2tL0QxY5MPPJkucW
	GHGFg0mGR41aJh7CMwRUB2XtAXdm5TI+77xIekpxcjCismFBFchTPldj4v+kswuVsVL+zB4mh0w7F
	pHTSWXRDo1M1j0ETTn2/ywjBet6qS3p2JpKnvXuEnUd0EHode1Pk43SRdnNe0BvmJNkztxTo1D3FZ
	D4ZlDk0XFoBEYpe0pAhyGo4GbyF7HgyFXf66zzi/njORKuDrt4IiIZLUttOv+pzlSCnHJ/lmrVMKW
	oN/eY9915llIZwk98Rsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izxgl-0005fz-U4; Fri, 07 Feb 2020 07:04:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izxgL-0005I5-Uu; Fri, 07 Feb 2020 07:04:07 +0000
X-UUID: 920174616619456287e8a0f5e5f248eb-20200206
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=0FyZvLAm8VgVJ2/OueWbRbVIynhvPgRH9QI8GSdUKEk=; 
 b=Slbo06+6Dug2P4nauEaQ8uC6OaDKspaRoYF5u9uelez2nmeF48sXZtotYg64U68V89s1g21EfoU4p+FKlfZhPZ9g0SArr2KH2191MlWbAAjDWldgOfYWbOgm6GaC93f2XF0KKFVZqwHBXIkO5T6dqB4+UDvFiJBkbVWgbRpktks=;
X-UUID: 920174616619456287e8a0f5e5f248eb-20200206
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 296289995; Thu, 06 Feb 2020 23:04:01 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Feb 2020 23:04:41 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 7 Feb 2020 15:02:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 7 Feb 2020 15:04:27 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <beanhuo@micron.com>
Subject: [PATCH v1 0/2] scsi: ufs: introduce common function to disable host
 TX LCC
Date: Fri, 7 Feb 2020 15:03:55 +0800
Message-ID: <20200207070357.17169-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_230406_002807_34D8E563 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

This patchset introduces a common function to disable host TX LCC for all vendors and fixes a TX LCC issue in MediaTek UFS driver.

Stanley Chu (2):
  scsi: ufs: ufs-mediatek: fix TX LCC disabling timing
  scsi: ufs: introduce common function to disable host TX LCC

 drivers/scsi/ufs/cdns-pltfrm.c  |  2 +-
 drivers/scsi/ufs/ufs-hisi.c     |  2 +-
 drivers/scsi/ufs/ufs-mediatek.c | 12 +++++++++---
 drivers/scsi/ufs/ufs-qcom.c     |  4 +---
 drivers/scsi/ufs/ufshcd-pci.c   |  2 +-
 drivers/scsi/ufs/ufshcd.h       |  5 +++++
 6 files changed, 18 insertions(+), 9 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
