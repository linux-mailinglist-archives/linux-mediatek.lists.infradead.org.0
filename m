Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EC812776D
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Dec 2019 09:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XzHMbFCkj0x1uBjDnoJru1/upXxKH66Ine+asmD0gTM=; b=Dbssujhr7eBF9Z
	B/oZfdghXFCaDio9WylYnHlng/POTTCMeVhm6tSrOX3ngm3whyLuyV+jcLpJKXjUT1z/6pZsXfI+E
	jlWSNKG7gyPu9DcXCqmu8j/gZKILie0vALfdHjAyrxkuM3785+xY7o6LWbIcDhVuMopW5X0AXW4g1
	TBVME56aT3Vg+YA9pJS6MdgO5Q2jDaNTY34Anj+UYqlggx6+SMFP4HHvzJSFs0itfAQLvA5uWL9PJ
	EE/PORj/0aVg0rz1BWEoUiSDqekxB5TXdr3Jbz/t2vVCKfYYQyuMDN0vYLYgRCjCKiJXTC2GXlaqQ
	mK/D+TXu8pMlk3woYsGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDvj-0004Ua-Mi; Fri, 20 Dec 2019 08:46:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDvg-0004TV-HE; Fri, 20 Dec 2019 08:46:38 +0000
X-UUID: 5a12a856ea4649c190c3995b427e0cf8-20191220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=PcM+2dB1UiAkEVeuTQbNEDOE+dDrKTu+Lu5fS74BXMM=; 
 b=NQBu2fJrkKWQxj3JWs5vapCwN/tGr7uLEYjWeneA3+MFkVY4SpbstJ18VrLrIIDL2sYN7bc8BhE202finWVPP/uJGEtCuI/9bDiecBy2Sg9hYUjceKaGsr9Zk1WlOxJHeQCO3tZlRZfResU752wuXwhk752vPJtG29gGxj27oa4=;
X-UUID: 5a12a856ea4649c190c3995b427e0cf8-20191220
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 793379809; Fri, 20 Dec 2019 00:46:35 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 00:36:55 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 16:35:57 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 20 Dec 2019 16:35:38 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <f.fainelli@gmail.com>
Subject: [PATCH v1 0/6] scsi: ufs: add MediaTek vendor implementations
Date: Fri, 20 Dec 2019 16:36:22 +0800
Message-ID: <1576830988-22435-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_004636_802691_D6969FF2 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: leon.chen@mediatek.com, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

Because the series "scsi: ufs-mediatek: provide power management" depends on series "scsi: ufs-mediatek: add device reset implementation", I would like to provide a new combined series of both patch sets.
Also this new series is rebased to the latest Martin's "queue" branch.

    scsi: ufs-mediatek: add device reset implementation
    scsi: ufs-mediatek: provide power management

This series provides MediaTek vendor implementations as below,

    1. Device reset
    1. Reference clock control
    2. Auto-hibernate enabling with customized timer value
    3. Clk-gating enabling with customized delayed timer value

Stanley Chu (6):
  soc: mediatek: add header for SiP service interface
  scsi: ufs-mediatek: add device reset implementation
  scsi: ufs-mediatek: introduce reference clock control
  scsi: ufs: export ufshcd_auto_hibern8_update for vendor usage
  scsi: ufs-mediatek: configure customized auto-hibern8 timer
  scsi: ufs-mediatek: configure and enable clk-gating

 drivers/scsi/ufs/ufs-mediatek.c          | 121 ++++++++++++++++++++++-
 drivers/scsi/ufs/ufs-mediatek.h          |  23 +++++
 drivers/scsi/ufs/ufs-sysfs.c             |  20 ----
 drivers/scsi/ufs/ufshcd.c                |  18 ++++
 drivers/scsi/ufs/ufshcd.h                |   1 +
 include/linux/soc/mediatek/mtk_sip_svc.h |  29 ++++++
 6 files changed, 188 insertions(+), 24 deletions(-)
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
