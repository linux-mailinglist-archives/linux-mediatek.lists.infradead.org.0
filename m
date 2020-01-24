Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF1F148AFD
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 Jan 2020 16:09:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4zqJxR62hrslpqN9SZ0AEXWqn1pYi3kRcAEO11WY674=; b=biSfEhWrbfBAtg
	ApVVKf5EpeGEpSbBABSmb0XfZ9JFoQbiUUrcQ3/7C6nQcUB3QFqp4LjjF4klyzN51N+D6+G11xR9n
	WlV0ZSqspk92rFtdSFbhzgNjS/MAsTThusfI8ZTiofho9caPG8LF/vV26ZE32ZFDZFye90/TgjTNH
	NFW1xAb+aXnHHNaxOt8+fLrys/PlHSyPEFJTX9WHP8UwRQqyLecev354HfuzbsiFxKv+Okphf8Q2P
	syjDz4fBC2ijSKRyg2f+ggdgIeRPNrAUCkV56DVwHeicV5obAn4XDVZh6M8XkI+VFXBUxnmGABGoJ
	qC4M5IBF3Qzr9tBCaStA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0aF-0005m7-46; Fri, 24 Jan 2020 15:09:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0Yv-0004eb-Sh; Fri, 24 Jan 2020 15:07:59 +0000
X-UUID: 00531f33c5d2450f8260c6eac90104b3-20200124
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=4y9eiBw5IAfEzm5r7ldiQUyvda3M0QLb1AsObdV4hDc=; 
 b=WA7OgJqoT6Jwb40V11zwpJQ1m/EQbeUsNTMezeB4V2TdNzrrK8EDfSnmPmRP6RSiZgN5EeJQSl4Bxx1StKn/V4lgbGZpxyRzHdGR1bA0Ygvh7niisq3bzomofbwi28cATOgi2XGPFlXXWwNO1AFsZC7tyTWcQXL4kJzMEhhQqCI=;
X-UUID: 00531f33c5d2450f8260c6eac90104b3-20200124
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1164873769; Fri, 24 Jan 2020 07:07:53 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 Jan 2020 07:07:51 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 Jan 2020 23:06:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 24 Jan 2020 23:07:15 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v2 0/5] MediaTek UFS vendor implemenation part III and
 Auto-Hibern8 fix
Date: Fri, 24 Jan 2020 23:07:38 +0800
Message-ID: <20200124150743.15110-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_070757_940633_BF4EE642 
X-CRM114-Status: UNSURE (   5.99  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This series provides MediaTek vendor implementations and some general fixes.

- General fixes
	- Fix Auto-Hibern8 error detection

- MediaTek vendor implementations
	- Ensure UniPro is powered on before every link startup
	- Support linkoff state during suspend
	- Gate reference clock for Auto-Hibern8 case

v1 -> v2
	- Fix and refine commit messages.

Stanley Chu (5):
  scsi: ufs-mediatek: ensure UniPro is not powered down before linkup
  scsi: ufs-mediatek: support linkoff state during suspend
  scsi: ufs: add ufshcd_is_auto_hibern8_enabled facility
  scsi: ufs: fix auto-hibern8 error detection
  scsi: ufs-mediatek: gate ref-clk during Auto-Hibern8

 drivers/scsi/ufs/ufs-mediatek.c | 65 +++++++++++++++++++++------------
 drivers/scsi/ufs/ufs-mediatek.h | 12 ++++++
 drivers/scsi/ufs/ufshcd.c       |  3 +-
 drivers/scsi/ufs/ufshcd.h       |  6 +++
 4 files changed, 62 insertions(+), 24 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
