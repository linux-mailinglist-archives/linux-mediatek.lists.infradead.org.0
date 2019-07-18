Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36A06CA93
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 10:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wObCxSasFd8mTqul4NwwCvMv95Avwg9Ccc5dZaFX4UM=; b=GCaXy9OEKmyv1i
	l9JUewkSKMOHv9gf/eTt15IB6wxP6HfLiJ5bHrGFrKfgMx/Tup9UFN2CWiWVOEp2q/5ghfFmPpG3s
	Qp1KybKq7IHINp2M3Pdy95nkPaf2Hf1XVyuOC8E7B2RFTcxgs/mAp9agngyd3fImiU5PSLauIMRZG
	xapdFlUySiIhablXIawAltYjwqY3oE0PoXjtStnLDNlJDbyi8IJOwB31Ju1/dNlpaJsnk3H0hj6rb
	qOONC/m2CgZxw3SOCIfRTae4v/1A1IMfNPpAgKOgI/sCNbR0ynDwwwkYii1chB/4ZdniW6doi61AW
	J37TCoVZRGdgbo54hD9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho1My-0001X0-41; Thu, 18 Jul 2019 08:02:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1MV-0001Bi-SM; Thu, 18 Jul 2019 08:02:01 +0000
X-UUID: cdc9013166ae418b8e45c091fc82a43c-20190718
X-UUID: cdc9013166ae418b8e45c091fc82a43c-20190718
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <zhiyong.tao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1960186096; Thu, 18 Jul 2019 00:01:33 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 01:01:32 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 16:01:23 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 18 Jul 2019 16:01:22 +0800
From: Zhiyong Tao <zhiyong.tao@mediatek.com>
To: <robh+dt@kernel.org>, <jic23@kernel.org>, <knaack.h@gmx.de>,
 <lars@metafoo.de>, <pmeerw@pmeerw.net>
Subject: [PATCH v1 0/2] AUXADC: support efuse calibration on MT818 
Date: Thu, 18 Jul 2019 16:01:17 +0800
Message-ID: <20190718080119.30707-1-zhiyong.tao@mediatek.com>
X-Mailer: git-send-email 2.12.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 655C57B55616B30867184C87976E81790A029DB57092B498944C9C7194938B5F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_010159_969148_E6AFEE38 
X-CRM114-Status: UNSURE (   5.05  )
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
Cc: devicetree@vger.kernel.org, sean.wang@mediatek.com,
 srv_heupstream@mediatek.com, linux-iio@vger.kernel.org, erin.lo@mediatek.com,
 hui.liu@mediatek.com, linux-kernel@vger.kernel.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, eddie.huang@mediatek.com,
 matthias.bgg@gmail.com, yingjoe.chen@mediatek.com, jg_poxu@mediatek.com,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This series includes two patches:
1.Add mt8183 auxadc efuse information in device tree.
1.Add mt8183 efuse calibration function in auxadc driver.

Zhiyong Tao (2):
  arm64: dts: mt8183: auxadc: add efuse information in device tree
  auxadc: mediatek: support efuse calibration in auxadc driver

 arch/arm64/boot/dts/mediatek/mt8183.dtsi |  5 +++
 drivers/iio/adc/mt6577_auxadc.c          | 71 ++++++++++++++++++++++++++++++++
 2 files changed, 76 insertions(+)

--
2.12.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
