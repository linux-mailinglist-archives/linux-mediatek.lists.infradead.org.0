Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F3C19F2BA
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 Apr 2020 11:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezuEXXE4pNjCpZmK5TrBwqE0R9YB4epD46qEMJ8eJhQ=; b=XzjSFz0JflP5Px
	xd7AJVbZ3lXlxb0V9qxN+hyQR5lkK658iAHBhiOXigW4m1NoeFu9r8r+uE1tuDlFt6QlvC5CyiY++
	4k/q742eLlQoYIy/Erl/roHNFB5WilFZjrFeD94BvPjyIQI5qI3JToz0FH5/1xxv4OEpiMb5McL8i
	aDEo+CER3LfGL43T/Sdr8ayuuwq7gR6z7cNJHCcsxIhx4zfZxpygjyWIe7XuAQubVrNkHFLic8hq+
	OS47Y6YDslyLDuQeM410A8tvX1lU58djhzStjT+EaJx2L2bKkZlZ5Qm16bpi8o6pg55ampaFFx02l
	Zyz0gleN5wCy01bobdkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLODL-0000Dd-Jx; Mon, 06 Apr 2020 09:38:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLOCq-0008BL-Lz; Mon, 06 Apr 2020 09:38:15 +0000
X-UUID: 1f97dbfe1f86481fb30d55b58f288500-20200406
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=srrLwmXWOsczNhYEI0r57sCOdKX0qiPArgR8S/J7H+U=; 
 b=W+L+/C5PkGRf7uZRsoTQC/+4qJtHYBe79MofbuvBNEqVEeYycNDvs8EIlUiareaKUvWQSdSi/fdoZuYwsZ4FWTA1fdCc4MZhVcYa7D6ogi5rN1N5tbHCpUmShOkUHkBMS3dD1vFL6nXLvPCaPxfR9opqJVwmE4vIUVnsvv0dB0k=;
X-UUID: 1f97dbfe1f86481fb30d55b58f288500-20200406
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 650944091; Mon, 06 Apr 2020 01:38:10 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 02:28:05 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 17:28:02 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 6 Apr 2020 17:28:01 +0800
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: <mirq-linux@rere.qmqm.pl>, Jonathan Hunter <jonathanh@nvidia.com>, "Al
 Cooper" <alcooperx@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 <bcm-kernel-feedback-list@broadcom.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Michal Simek
 <michal.simek@xilinx.com>, Thierry Reding <thierry.reding@gmail.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>, "Linus
 Walleij" <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>, Kate
 Stewart <kstewart@linuxfoundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Pan Bian <bianpan2016@163.com>, "Thomas
 Gleixner" <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "Mathieu Malaterre" <malat@debian.org>, Stanley Chu
 <stanley.chu@mediatek.com>, "Kuohong Wang" <kuohong.wang@mediatek.com>
Subject: [PATCH 1/5] [1/5] mmc: core: Extend mmc_of_parse() to parse CQE
 bindings
Date: Mon, 6 Apr 2020 17:27:57 +0800
Message-ID: <1586165281-11888-2-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1586165281-11888-1-git-send-email-chun-hung.wu@mediatek.com>
References: <1586165281-11888-1-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 31970E197ED6CDA124A0AA6672FCC67F20B8B96C7BEB98C749FB250F256067A82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_023812_719606_12E5411A 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-arm-msm@vger.kernel.org, Chun-Hung Wu <chun-hung.wu@mediatek.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Parse CQE bindings "supports-cqe" and "disable-cqe-dcmd"
in mmc_of_parse().

Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
---
 drivers/mmc/core/host.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
index c876872..47521c6 100644
--- a/drivers/mmc/core/host.c
+++ b/drivers/mmc/core/host.c
@@ -302,6 +302,11 @@ int mmc_of_parse(struct mmc_host *host)
 		host->caps2 |= MMC_CAP2_NO_SD;
 	if (device_property_read_bool(dev, "no-mmc"))
 		host->caps2 |= MMC_CAP2_NO_MMC;
+	if (device_property_read_bool(dev, "supports-cqe"))
+		host->caps2 |= MMC_CAP2_CQE;
+	if (!device_property_read_bool(dev, "disable-cqe-dcmd")) {
+		host->caps2 |= MMC_CAP2_CQE_DCMD;
+	}
 
 	/* Must be after "non-removable" check */
 	if (device_property_read_u32(dev, "fixed-emmc-driver-type", &drv_type) == 0) {
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
