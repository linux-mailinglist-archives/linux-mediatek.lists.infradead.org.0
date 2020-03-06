Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C19017B4E9
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Mar 2020 04:34:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IJpc/TIgO6PKndCLxPoic0d4icmXhphwcW5N0shFMrA=; b=ZREgY2P17QafeG
	9NRDg5TkHY5TQwAM8xPXjzh4UP1Zm69vCuL2kx+aWCIspc86CyR23yHBYiOnvNGimHeEZZbFeJ79v
	rkFY32zIgvY64y+Ag+FgbFLAU/Nn4dkUPrabKMPB9l3PKBXN1COgRuDiPodFIBsOWtVhUi8nIFW3j
	Bv+cssN5712JSKNHH0LlO553aVHWQw7FgqDyonZYrIRaAzMuJ0CRwOkUdHudKEoz8FPKQFYSnKnc+
	OMvqRlUdTvBke3S6xqYRbwQ6iN/wY3WfvQ9t9e036KiwmlmBNfegXl/zVUaG0EL7Ku77hGaDEBD56
	6m1W60oD5Q5SyNuLqGow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA3kS-0000bV-UU; Fri, 06 Mar 2020 03:34:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA3kP-0000aW-FL
 for linux-mediatek@lists.infradead.org; Fri, 06 Mar 2020 03:34:02 +0000
X-UUID: 55f69aff1bf54caf87350212d67188bb-20200305
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=itlYgQ45be2Ssn2Nzi2Lg0iTSRTOtSvZl1uOUtpZGFQ=; 
 b=to2V9PU8Ie1oJRyCv/CXkuG0op/0lQp9T6MXTLPZsW/Ds+40Glvq9zHlwcXd9slUyHq6/aEwa8G/qF2+iR47I1xzioLYjZ1nMo6J22L9DktjuWbza2O5MoLFDGQ/jwhR098DbOxPktOpxee4H6DWGXNWs+aSKTFOHco59dr4l2M=;
X-UUID: 55f69aff1bf54caf87350212d67188bb-20200305
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <eason.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1062394690; Thu, 05 Mar 2020 19:33:57 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Mar 2020 19:33:55 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Mar 2020 11:33:01 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 6 Mar 2020 11:33:55 +0800
From: Eason Yen <eason.yen@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 0/2] Add mediatek codec mt6359 driver
Date: Fri, 6 Mar 2020 11:33:40 +0800
Message-ID: <1583465622-16628-1-git-send-email-eason.yen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_193401_524937_BAE0BE1B 
X-CRM114-Status: UNSURE (   6.42  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, jiaxin.yu@mediatek.com,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add mediatek codec (MT6359) driver

MT6359 support playback, capture and vow feature.

On downlink path, it includes three DACs for handset, headset,
and lineout path. On unlink path, it includeds three ADCs for
main mic, second mic, 3rd mic, and headset mic.

By scenario, select *_MUX widget to create damp path.
And by select mic_type_mux to choose DMIC/AMIC/....

For example, select these MUX widget to create headset path
(1) DAC In Mux --> "Normal Path"
(2) HPL Mux --> "Audio Playback"
(3) HPR Mux --> "Audio Playback"


Eason Yen (2):
  ASoC: mediatek: mt6359: add codec document
  ASoC: codec: mediatek: add mt6359 codec driver

 Documentation/devicetree/bindings/sound/mt6359.txt |   16 +
 sound/soc/codecs/Kconfig                           |    9 +
 sound/soc/codecs/Makefile                          |    2 +
 sound/soc/codecs/mt6359.c                          | 4217 ++++++++++++++++++++
 sound/soc/codecs/mt6359.h                          | 3212 +++++++++++++++
 5 files changed, 7456 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/mt6359.txt
 create mode 100644 sound/soc/codecs/mt6359.c
 create mode 100644 sound/soc/codecs/mt6359.h

-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
