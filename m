Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283F718314B
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Mar 2020 14:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=glVxhgQQgUprGYeYLJ+uKKmPVxiHJb+8dyEsq4y/6CQ=; b=jvdqKXKpv4Rsxu
	0kK9p34Jw9gigFoIGPQGO2S0Uawh2wqexM/aSsTPqkR6qoUt+Sa8q4s9OMztUIzZxdsbyohb522qJ
	8HuqzYcC8W0/rCnDYcPzHuLfGyVLk2qtvA6Kjy1HAeAaE0G/0pqWm++HFjkJjQpXejLqZYGPn6Nfi
	ZBfMoKvbilCllzkYdraAQWvpmHAQX23+G0vNCjbN44cFlJZAGkHWErEkls+p9583Y4uQIwFo+NbfA
	e/5XLLUjSVTVLlck+9erTZOr/z9fW8e2wNVktFxGahz+5WyyvsQQC4v4221r9YUtjvY39+OyQbAaT
	QpPwlLdXtRYR6nfUDlnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNqH-0006y8-6f; Thu, 12 Mar 2020 13:25:41 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNoh-0005Dl-3n; Thu, 12 Mar 2020 13:24:04 +0000
X-UUID: cea46f2001394ab5b9e389b96316526c-20200312
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=xm/G1sO3I7PlDO358ySrPxlME2LXeXXiVUP6BCRqWHY=; 
 b=q3LRGMRZNttz4bHsILjWOhiv3NrBp0OFYacdYFpCeKXJw1Ghn+0EFMj6OO0eEHoK9Cq+08f7xig/jaLLU2/xwrnq2hhGoF5i5DcVnjBk3j+qh6cRYwMz8nn1Os2tb0w5JEngKHXP5zKNW66Rv0hdeqm7fAe4bP4VT7CWn8WkjHc=;
X-UUID: cea46f2001394ab5b9e389b96316526c-20200312
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1859598437; Thu, 12 Mar 2020 05:23:54 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 06:24:02 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 21:22:37 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Mar 2020 21:21:02 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v3 0/8] scsi: ufs: some cleanups and make the delay for host
 enabling customizable
Date: Thu, 12 Mar 2020 21:23:42 +0800
Message-ID: <20200312132350.18061-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_062403_191941_85E98580 
X-CRM114-Status: UNSURE (   6.06  )
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

Hi,

This patchset applies some driver cleanups and performance improvement
in ufs host drivers by making the delay for host enabling customizable
according to vendors' requirements.

v2 -> v3
	- Remove /arch/arm64/configs/defconfig chnage because it is for local test only

v1 -> v2
	- Add patch #1 "scsi: ufs: fix uninitialized tx_lanes in ufshcd_disable_tx_lcc"
	- Remove struct ufs_init_prefetch in patch #2
	- Introduce common delay function in patch #4
	- Replace all delay places by common delay function in ufs-mediatek in patch #5
	- Use common delay function instead for host enabling delay in patch #6
	- Add patch #7 "scsi: ufs: make HCE polling more compact to improve initializatoin latency"
	- In patch #8, customize the delay in ufs_mtk_hce_enable_notify callback instead of ufs_mtk_init (Avri)

Stanley Chu (8):
  scsi: ufs: fix uninitialized tx_lanes in ufshcd_disable_tx_lcc()
  scsi: ufs: remove init_prefetch_data in struct ufs_hba
  scsi: ufs: use an enum for host capabilities
  scsi: ufs: introduce common delay function
  scsi: ufs-mediatek: replace all delay places by common delay function
  scsi: ufs: allow customized delay for host enabling
  scsi: ufs: make HCE polling more compact to improve initializatoin
    latency
  scsi: ufs-mediatek: customize the delay for host enabling

 drivers/scsi/ufs/ufs-mediatek.c | 35 ++++++++-------
 drivers/scsi/ufs/ufshcd.c       | 47 +++++++++++---------
 drivers/scsi/ufs/ufshcd.h       | 78 ++++++++++++++++-----------------
 3 files changed, 85 insertions(+), 75 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
