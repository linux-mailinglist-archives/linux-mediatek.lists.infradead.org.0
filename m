Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450EEAF5DC
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Sep 2019 08:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AULNHGrnLTeISGU3y9bgRpWx+kjh/i0m17n3zdV8EAc=; b=kftrR/2yeCXNi+
	j0SzLZBIqh4PrZ7ZOs92h7zJX2wycsYjBU7yaV4clySQS8Vm9aU6EwF4l8Nz28zAJLuVLjx2zBW5s
	jESbFcv8Sg7OPLTnuGcCUQqYj5HOnqbgBJPk5FIlfWF/WZoTJACxBnoPm2PJk8khvFZeIdN+tO2Sb
	VFuodrYAaRrvdyLjW+NPccnRNfNroKHUXZuxqWCTbE4OlIeTU0PhSD9xXcELWu/bD5J/9FzlEen0h
	q9FAyJLM7BHurdD64UF4lY2ksDXAIy+aEO09K0UGM/+XvmYCekcpT+eIMjs+ROOv1r81lzyI6m3ym
	oUr0YhR0wnVbkJQiVaGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wC6-00079o-Vd; Wed, 11 Sep 2019 06:33:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wBV-0006gg-Np; Wed, 11 Sep 2019 06:32:59 +0000
X-UUID: 10817411352a45c983144532ab019628-20190910
X-UUID: 10817411352a45c983144532ab019628-20190910
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 337924590; Tue, 10 Sep 2019 22:32:49 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 23:32:49 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 14:32:46 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 11 Sep 2019 14:32:46 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <linux-block@vger.kernel.org>,
 <martin.petersen@oracle.com>, <axboe@kernel.dk>, <jejb@linux.ibm.com>,
 <matthias.bgg@gmail.com>
Subject: [PATCH v1] fixup null q->dev checking in both block and scsi layer
Date: Wed, 11 Sep 2019 14:32:40 +0800
Message-ID: <1568183562-18241-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 132F359E13791AB27648D710E93C0462C44FA0D70584A38ED65C1DB61DF7ABA02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_233257_778259_4E71D98E 
X-CRM114-Status: UNSURE (   5.76  )
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Some devices may skip blk_pm_runtime_init() and have null pointer
in its request_queue->dev. For example, SCSI devices of UFS Well-Known
LUNs.

Currently the null pointer is checked by the user of
blk_set_runtime_active(), i.e., scsi_dev_type_resume(). It is better to
check it by blk_set_runtime_active() itself instead of by its users.

Stanley Chu (2):
  block: bypass blk_set_runtime_active for uninitialized q->dev
  scsi: core: remove dummy q->dev check

 block/blk-pm.c         | 3 +++
 drivers/scsi/scsi_pm.c | 3 +--
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
