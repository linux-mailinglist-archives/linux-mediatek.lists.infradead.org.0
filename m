Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2F1B0A71
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 10:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nDJV95eru7ZBlEtg6o3Cu522Se8saE68i+gjn4npu+o=; b=qu7lwogt1k46xY
	FzIwhXS/tutzXVjKwwJmsoiQis8k/r17FlylrA9r/phms+bxcqMHmIYX0ieqDFhC3zqjFL5Ocf+cn
	4ViMA4GIQ/IzWFUeBoAp0OmceeVegpP8G0Z22B6KI+qSx9d80sf7cMQVBthg2ScVFW3/neRHIOrLy
	TxrPIaUAMRQ3pz37HiH1BfbzKKaTnGm7DcP/3SB3cIqd1on4O3tIt6jRrxSut9kY8vlN+TaqWLEkL
	vFmVUKS8xC3l4xRhR9YXlcY/cXf0rqHkdWjp1zcxAWgEhlhMUIJAMqI0zKChB9aDguYWCNL70o+3w
	0VYLjYaZD+d9NTF56SZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Ka3-000213-Cn; Thu, 12 Sep 2019 08:35:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KZi-0001ko-Gg; Thu, 12 Sep 2019 08:35:35 +0000
X-UUID: 953a155539544b96b93b69d940f77909-20190912
X-UUID: 953a155539544b96b93b69d940f77909-20190912
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 360203211; Thu, 12 Sep 2019 00:35:30 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 01:35:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 16:35:28 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Sep 2019 16:35:28 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <linux-block@vger.kernel.org>,
 <martin.petersen@oracle.com>, <axboe@kernel.dk>, <jejb@linux.ibm.com>,
 <matthias.bgg@gmail.com>
Subject: [PATCH v2] fixup null q->dev checking in both block and scsi layer
Date: Thu, 12 Sep 2019 16:35:26 +0800
Message-ID: <1568277328-4597-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_013534_560801_44D5EED0 
X-CRM114-Status: UNSURE (   5.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Some devices may skip blk_pm_runtime_init() and have null pointer in its request_queue->dev. For example, SCSI devices of UFS Well-Known LUNs.

Currently the null pointer is checked by the user of blk_set_runtime_active(), i.e., scsi_dev_type_resume(). It is better to check it by blk_set_runtime_active() itself instead of by its users.

v1 => v2:
- Change if style in blk_set_runtime_active() (Jens)

Stanley Chu (2):
  block: bypass blk_set_runtime_active for uninitialized q->dev
  scsi: core: remove dummy q->dev check

 block/blk-pm.c         | 12 +++++++-----
 drivers/scsi/scsi_pm.c |  3 +--
 2 files changed, 8 insertions(+), 7 deletions(-)

-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
