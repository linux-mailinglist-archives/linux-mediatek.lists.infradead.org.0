Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6357115C3C
	for <lists+linux-mediatek@lfdr.de>; Sat,  7 Dec 2019 13:33:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1lvHReRD0HEwF3Hjp9hjdoTM4oKxTo6KcCuOO+y9uh0=; b=LfhCMFP3+vrrjp
	0sJ16wSgwUI3yeJahoRGHutlrGhKbHenK+Aph+xCFuPHF4nGq5hLOSMzbHituaauGXZA05Kr2vypn
	zMucsAIMv/F0UO2+CxhtGAgvgfkMrDLfW261CRBJolOJg8pB+QLVdbUjZhYoj1GoI9cNZXFHy9zaU
	HFp0mhmOrmoc/kSidGzcKS8FcYaadRdQOaWCI+21E/NiDKdwX9pYXiYPtaBGwtdrgD02w5VbKkLqN
	jYTeDzhPfp3AxaaDIOZUholDBmIEVbtsjHQ7AMBXxVCeJPZJ8M0/2sj/hnEfimZQRFlIjFpQ2RQXn
	mMBu5vewk8ZCtpwuzo2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idZGk-0007ML-ST; Sat, 07 Dec 2019 12:33:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idZGE-0006pE-2M; Sat, 07 Dec 2019 12:32:35 +0000
X-UUID: a838075d8176472cb27ea2586e75da47-20191207
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=K3/4d8dMyg2wXRwQFcJk/UGgrlNk/bp2Ig4rf75mjwY=; 
 b=jcjtTcYreCCa7qvYkNxwiogWhSRZakJ2Ofzmcw4ltFgZQtAs5uT3BAn7s2frPFyDpcixZ2AOZo2xFVGUAEEsDUvq4pKitpOAaWw1UNo30C9TdzOi4C0z2j/5tJsw13+ANCVilq8mbRDy11wKLZit6n+/HCsIe/++r539c063t5Q=;
X-UUID: a838075d8176472cb27ea2586e75da47-20191207
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 755702007; Sat, 07 Dec 2019 04:32:28 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 7 Dec 2019 04:23:04 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 7 Dec 2019 20:21:46 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 7 Dec 2019 20:21:55 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>
Subject: [PATCH v1 0/2] scsi: ufs: fixup active period of ufshcd interrupt
Date: Sat, 7 Dec 2019 20:21:59 +0800
Message-ID: <1575721321-8071-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_043234_134563_8D0D8067 
X-CRM114-Status: UNSURE (   3.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patchset fixes up active duration of ufshcd interrupt to avoid potential system hang issues.

Stanley Chu (2):
  scsi: ufs: disable irq before disabling clocks
  scsi: ufs: disable interrupt during clock-gating

 drivers/scsi/ufs/ufshcd.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
