Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5801F957F
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 13:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAfz2BJ0UOtyzgcmobq1SoVVaFNsZ35HhyldCKagUIk=; b=toP9bFBXG7B/YD
	y7KChD0NQTw17rUXxuVT7Q+8gD3mNTBhQKLfGK98AOIslkLOubcF2H3GEREkzpjFMq009EskyrwHX
	IWqn5iehufdGYrq1WVMSne2JMKNUA8ydlM0kW3y97PeJiTjtmKRpoTNLOSCy4alr4DrFE0HuG+k9V
	KO4WzpR381NX0vUjBecqGo+4WOwuh2RwAvtTSN4TWOBcUs6qdxl8y+bl0RiX/GLI6jzw6aljDc/4d
	XI5Xahf8LsAdC6ZzvgezVIKu77NbCpsYTJ6wtAob6Z7uyoNJbc5gS0v5XfvJ3ggobx4g4XZnw3Ixd
	IlIcuCdkgeSrVPyLF/5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknWf-0004Lr-5s; Mon, 15 Jun 2020 11:43:41 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknWL-00047p-O4; Mon, 15 Jun 2020 11:43:23 +0000
X-UUID: 600c00dd2e0049eebe4c82fcf05987cb-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=znH2E8bGTbS4+6vbaXESmPNdJdxZOMqY2MQhn5YI+Q4=; 
 b=DUW32VBiiK/d9seXXGCSm3hZsiYkH8KcV7r34ml30Iau4Y1hOQDaqlb1L0imdQK3OLNTWl/AHvDcnUAyjT5UOxWTvriWY28je7v4/MRyvpnqfIgKOVS+dBDaNWKt5knAoWvVF08IpoEczCVkpMYWJn1HIPJGMpFMASh83psGHxs=;
X-UUID: 600c00dd2e0049eebe4c82fcf05987cb-20200615
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1136029768; Mon, 15 Jun 2020 03:43:13 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 04:43:11 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 19:43:08 +0800
Received: from localhost.localdomain (10.15.43.140) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 15 Jun 2020 19:43:09 +0800
From: Fengping Yu <fengping.yu@mediatek.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, "Yingjoe
 Chen" <yingjoe.chen@mediatek.com>, Pavel Machek <pavel@ucw.cz>, "Jacek
 Anaszewski" <jacek.anaszewski@gmail.com>
Subject: [PATCH v1 3/3] defconfig: Add CONFIG_INPUT_REGULATOR_VIBRATOR=m
Date: Mon, 15 Jun 2020 19:42:06 +0800
Message-ID: <20200615114203.116656-4-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200615114203.116656-1-fengping.yu@mediatek.com>
References: <20200615114203.116656-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: FF31AF7028C23BE7A71000FABB20668CB9473A8C2628AA50E1D8C159ADB2B02D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_044321_836741_E39BA89F 
X-CRM114-Status: UNSURE (   7.15  )
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
Cc: "fengping.yu" <fengping.yu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "fengping.yu" <fengping.yu@mediatek.com>

Add Mediatek regulator vibrator support in defconfig.

Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 112ced090b21..e89ad298dae5 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -356,6 +356,7 @@ CONFIG_INPUT_MISC=y
 CONFIG_INPUT_PM8941_PWRKEY=y
 CONFIG_INPUT_PM8XXX_VIBRATOR=m
 CONFIG_INPUT_HISI_POWERKEY=y
+CONFIG_INPUT_REGULATOR_VIBRATOR=m
 # CONFIG_SERIO_SERPORT is not set
 CONFIG_SERIO_AMBAKMI=y
 CONFIG_LEGACY_PTY_COUNT=16
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
