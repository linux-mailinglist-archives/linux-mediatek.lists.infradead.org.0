Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E5C130AE5
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 Jan 2020 01:28:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C3AxOrxuHzOjI/DwonA17snp2zxzrqyrTM1Z5/TXV5U=; b=EF/Wg/7yyWsPqE
	L46XNoTDS3NhL5D2TTz9uauzTzmJyNH+5AjjZkVHaoZ2PmVtpXPfeLwKQ61Di6PQopkqBgOW7Z/yL
	9rKbp03WRc2DaV7VyH+oHM6hDMC5Z6EFostFoqi4KKS3iGtaPNR4Aa2IIkMzhGbx+18AYuubXIA9U
	ghsEhGQzKKNo49MikCy+z2RLQXU3bU84/Td6kTsDpYktkJ6D31HBqaC6me5JL2vwFjkgZZWE8CtnW
	ds8bhSED9c7411MR4ARl2y7KZaBb296h5yb0dSeZcykAMkIQSab5FEmkBFNRv3AlmI7jqu/QmbK8F
	xtazHaF+33CfnC4uJCzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioGFg-0002bQ-Jv; Mon, 06 Jan 2020 00:28:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioGEx-00019r-Fu; Mon, 06 Jan 2020 00:27:28 +0000
X-UUID: 3f1c99d1daa845c5a030e53fc56b22ac-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=BChbSWNPdk9iWGY62Qcm0udX+0tXxxNQxkKwDMKsxZs=; 
 b=b/FLD0TKlRh5z11twC8qrNtjvpgdfHR2AESWtSmp1GjHn77xSdMVNPcCz0ipQh/0ZQf3MHBivop9OMzD7EDTS5SxaJaGEagoi1+7PFgjKuD8rcvSRP8pvjT8klmi70ffE/jXQIP7cXsOWAXWe/89T0EzAW7Oe//m8jMAcdWQ7CY=;
X-UUID: 3f1c99d1daa845c5a030e53fc56b22ac-20200105
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1854472251; Sun, 05 Jan 2020 16:27:24 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 16:27:24 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 6 Jan 2020 08:26:24 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 6 Jan 2020 08:25:44 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v2 0/2] scsi: ufs: pass device information to apply_dev_quirks
Date: Mon, 6 Jan 2020 08:27:09 +0800
Message-ID: <1578270431-9873-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 921AF85E031FEF8476343866F4AB45402C53C5A259024CC59C3CBB30148697C82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_162727_561780_2DF32293 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Currently UFS driver has "global" device quirk scheme to allow driver applying
special handling for certain UFS devive models.

However some special device handlings are required for specific UFS hosts only
so it is better to make it happen in vendor's callbacks only to not "pollute"
common driver and common device quirks.

We already have apply_dev_quirks variant callback for vendors but lack of device
information for handling specific UFS device models. This series provides such
information to apply_dev_quirks callbacks, and applies related modifications.

Stanley Chu (2):
  scsi: ufs: pass device information to apply_dev_quirks
  scsi: ufs-mediatek: add apply_dev_quirks variant operation

 drivers/scsi/ufs/ufs-mediatek.c | 11 +++++++++++
 drivers/scsi/ufs/ufs-qcom.c     |  3 ++-
 drivers/scsi/ufs/ufshcd.c       |  5 +++--
 drivers/scsi/ufs/ufshcd.h       |  7 ++++---
 4 files changed, 20 insertions(+), 6 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
