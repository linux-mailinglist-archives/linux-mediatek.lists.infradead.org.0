Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408DC1F9ACA
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 16:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bu9ngvd98ZR0EYBR+KTtZxHNzQ/8eTSXzP32ZTwH7NY=; b=XQrGDKncPJiFcA
	FrEWxhQAoP6G3idQE0FICkR20zZFaNSnpbAVi2KWebG1reyhUW/5ZPzXHlyx9YH+fO16Shzx6MbUQ
	BiZyogUsO8pIu2LNd4X4bfUnj3+eTsHayRLwOqi2He6IBVk5vvj1giauxgwT/U8hhU5EtOhfUtBsO
	19B5+cVw/V/jJrxgmxHVqI/ozXo6WJPl5ELE1i074DQx8c0R1rCsuaxyFKdxVwp/1F1sGi5EzYsgD
	Tf4ENF84coHOKIuTeH8mp72G594C0wLQ7zlYm02GSEiMwycmUnrlpIznQ1pCCai70nXebxrw5k3xj
	iSjWjDLhnHnoxfwol46Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqPh-00055J-0y; Mon, 15 Jun 2020 14:48:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqPK-0004hg-Ak; Mon, 15 Jun 2020 14:48:19 +0000
X-UUID: 4d69cbce582d45aeb796aa3c78dd2357-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=JT5TIMa/y9db8xDofK6AotJvJ9TLioruJwaz49+x9qM=; 
 b=qZ+TumLNeaPS7vMEsVUlf5qn1Mjp62vePzYEaOeqwC1ai314FUCMa0u3x2IebNynmjXMDmVSqodO3/feCOlUvJnVqswlzfwYAgQ53qgim2uujpWpaOY/Dk6iW1o2Ii4H6GxPxFyn6IPbvdHeDwpxI79lo5/OLjgjdz0SE2QdUwE=;
X-UUID: 4d69cbce582d45aeb796aa3c78dd2357-20200615
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1625980849; Mon, 15 Jun 2020 06:48:14 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 07:48:12 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 22:48:03 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 15 Jun 2020 22:48:02 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 0/3] scsi: ufs: Export UFS debugging dump for vendors
Date: Mon, 15 Jun 2020 22:48:02 +0800
Message-ID: <20200615144805.6921-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_074818_391001_FF740985 
X-CRM114-Status: UNSURE (   4.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 chaotian.jing@mediatek.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

This series creates an unified entry function for UFS debugging information dump, and exports it to vendors to help debugging.

In the same time, do a small cleanup in ufshcd_make_hba_operational().

v1 -> v2:
  - Fix incorrect returned value in patch[3]'s ufs_mtk_link_set_hpm()

Stanley Chu (3):
  scsi: ufs: Remove redundant label "out" in
    ufshcd_make_hba_operational()
  scsi: ufs: Manage and export UFS debugging information dump
  scsi: ufs-mediatek: Print host information for failed supsend and
    resume

 drivers/scsi/ufs/ufs-mediatek.c | 16 +++++++----
 drivers/scsi/ufs/ufshcd.c       | 51 +++++++++++++++++++--------------
 drivers/scsi/ufs/ufshcd.h       |  8 ++++++
 3 files changed, 47 insertions(+), 28 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
