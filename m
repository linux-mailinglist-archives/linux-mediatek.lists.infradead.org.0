Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289FE17B4EB
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Mar 2020 04:34:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZAjlbKb0faWm/vkn/7AzARf0yMRFaLRcYVfinG5GuI=; b=El+CS2ghTMMJ/w
	NIU4FUb1zHAr0UldvcwpQuZCbYjER4pcANH29XQh6Ru8UXE0xt5SFob3EeNk71ztyRA3d77kjHnCO
	eVpaX4I9rdycjihpev/TrJS2xkTF+8M6g9gsZhThO8Gz6Mr1y1+MetEejWv3XNJqSGWbcS4rxoXcN
	49KSZJ2iGQIrQvVeUBWBmUTvKTebDateGnW0l5uzLrY4XlyloTGpSJ/cLfZ0l51TzEwXRWRB9/Prl
	/m02qzsDbDaHBnw2ogLCImHT0HyTlcmjebpGxBntrSB9VA2rVUW1cb3EbDSUyh0MKkPGLjNrmuYfQ
	d5y+QxCCO+Gkw801O0nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA3kZ-0000fa-4B; Fri, 06 Mar 2020 03:34:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA3kV-0000d9-ND
 for linux-mediatek@lists.infradead.org; Fri, 06 Mar 2020 03:34:08 +0000
X-UUID: 605f0020d1ac4aabae292b6e1495052b-20200305
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=F8h9zECSBIwoJ3KZPuDg4X2pu8P8QW518HiyC2sC3qg=; 
 b=UTROVOv65EPLq+FbJ7bO5wDnPLAKz66HsAtZMbm7qo2/rf0itFcygR5dgZ/IPaSTxuSzYpee3QmJcBWZxNmBX+Fjb3jLPbN3/iS2OherlaDzuhbiU9iaUHqO0kjzqFbVWbrvK+h1oNyMipdrjB2Ce+Bhcdn17XrzuFTsVP9m898=;
X-UUID: 605f0020d1ac4aabae292b6e1495052b-20200305
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <eason.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1359605030; Thu, 05 Mar 2020 19:34:04 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Mar 2020 19:34:23 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Mar 2020 11:31:50 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 6 Mar 2020 11:33:55 +0800
From: Eason Yen <eason.yen@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 1/2] ASoC: mediatek: mt6359: add codec document
Date: Fri, 6 Mar 2020 11:33:41 +0800
Message-ID: <1583465622-16628-2-git-send-email-eason.yen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1583465622-16628-1-git-send-email-eason.yen@mediatek.com>
References: <1583465622-16628-1-git-send-email-eason.yen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_193407_760911_39CDB90C 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Add mt6359 codec document

Signed-off-by: Eason Yen <eason.yen@mediatek.com>
---
 Documentation/devicetree/bindings/sound/mt6359.txt | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/mt6359.txt

diff --git a/Documentation/devicetree/bindings/sound/mt6359.txt b/Documentation/devicetree/bindings/sound/mt6359.txt
new file mode 100644
index 0000000..77864e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mt6359.txt
@@ -0,0 +1,16 @@
+Mediatek MT6359 Audio Codec
+
+The communication between MT6358 and SoC is through Mediatek PMIC wrapper.
+For more detail, please visit Mediatek PMIC wrapper documentation.
+
+Must be a child node of PMIC wrapper.
+
+Required properties:
+
+- compatible : "mediatek,mt6359-sound".
+
+Example:
+
+mt6359_snd {
+	compatible = "mediatek,mt6359-sound";
+};
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
