Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B2D1F8F62
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 09:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pKDV0ZOBRqxbkaPIIAD3V2XHtH7FmvEMI0Ky9FW9a1Q=; b=sEXSzLVNE3sEXU
	mHR3BKel4tbZHmcxa7p2VbETw0k9z60t9Z9tRUNzGBLUXclvxstdHz+IP7dQLA+hUG9ibBPa5gO2q
	p03ukxxJCmLskZ4HyBnAY2CZ8pMsYINTyUKlqiuEhL/D10Me3voz1/PGhxb6Uxu3QF1kD1E054/pp
	PWstmAJI3O95IBZHwIr6ACNUj0mkW0W8rH9UvUOXblmJQVs+ayrRqPUBWTH5ZVyssVJLpJNL/vyjY
	qfPX1tJUsg3K2JiyUcSvbOsu7A6IomRTV9uPxTExgIvI1pNCUE3hXUtdWnh5MAnUPoO1QecgBWl7t
	nvzxL2pxsyP+niQ59kWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjSi-0004gs-IH; Mon, 15 Jun 2020 07:23:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjSA-0004Bp-Gz; Mon, 15 Jun 2020 07:22:48 +0000
X-UUID: d3d9dfe459304e8e8706fa962a846846-20200614
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=KsPHsP0hYhfA7edmMoOs0ziWrUu4La3/8ekhuF/RrAI=; 
 b=HTg6bLLhj1mM1icr2cokZE8n6tUa/5PACZhwfvKJbhqmGIuQ4MjVA1h6lF49SBKeTSRttbM40hHLymr4eJYozETOSE9gVoZWQzkDMlzR9XtVsMP6IFf609JWU6haGNthcGak+yBnOl8e5iHWYyGo2GRS3vzvvTWggj6oABOF0Ss=;
X-UUID: d3d9dfe459304e8e8706fa962a846846-20200614
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1241169606; Sun, 14 Jun 2020 23:22:38 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 00:22:35 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 15:22:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 15 Jun 2020 15:22:36 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v3 0/2] scsi: ufs: Add trace event for UIC commands and
 cleanup UIC struct
Date: Mon, 15 Jun 2020 15:22:33 +0800
Message-ID: <20200615072235.23042-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_002246_567686_BE32896F 
X-CRM114-Status: UNSURE (   5.80  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
This series adds trace event for UIC commands and do a small cleanup in struct uic_command.

v2 -> v3:
  - Refactor "complete" event hooks in ufshcd_uic_cmd_compl() (Avri Altman)

v1 -> v2:
  - Rename "uic_send" to "send" and "uic_complete" to "complete"
  - Move "send" trace before UIC command is sent otherwise "send" trace may log incorrect arguments
  - Move "complete" trace to UIC interrupt handler to make logging time precise

Stanley Chu (2):
  scsi: ufs: Remove unused field in struct uic_command
  scsi: ufs: Add trace event for UIC commands

 drivers/scsi/ufs/ufshcd.c  | 26 ++++++++++++++++++++++++++
 drivers/scsi/ufs/ufshcd.h  |  4 ----
 include/trace/events/ufs.h | 31 +++++++++++++++++++++++++++++++
 3 files changed, 57 insertions(+), 4 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
