Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729AB19A12F
	for <lists+linux-mediatek@lfdr.de>; Tue, 31 Mar 2020 23:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXFfEwzgj/ESR3+HmBkYYGmuaXpL8DCpIBXO3T1ee7Y=; b=BJeUv4Ax/ylJDS
	XKkFSJr1B62rh1WgSI5VfEL3jUCokmgXLNpR1/uzUxAbHPL4G3VJ3QmVibw9tHR4S6NVqptoJcfzt
	9ElIexKdcYu17dvQ5mQlg43JkG+IN2Ud1egqA4dm7v1oXUsfgBYEDaz0qa+Ua2Y1uf/utsY8JhTz0
	HtpUPDv/ezCOgWNtwFNFy6oVv4/nvEXeoGujgS+8hRt1xmbJd8Xufx8TkvFlUzey7k0SVuio3ASoo
	SRUEhO/PnNFPn8tBErv4UDquIlWJuo00lXr6bSGUdyUcPaX7sF7pVsXiwKV1Wk01HwuPtPfYOV3ay
	DC3C1rOlIZahGDiOTAxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOjI-00024r-0a; Tue, 31 Mar 2020 21:47:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOiG-00013p-Kp; Tue, 31 Mar 2020 21:46:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 80572297179
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: mark.rutland@arm.com, ck.hu@mediatek.com, sboyd@kernel.org,
 ulrich.hecht+renesas@gmail.com
Subject: [PATCH 4/4] arm64: dts: mt8173: Fix mmsys node name
Date: Tue, 31 Mar 2020 23:46:09 +0200
Message-Id: <20200331214609.1742152-4-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200331214609.1742152-1-enric.balletbo@collabora.com>
References: <20200331214609.1742152-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_144624_843078_232F0962 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 hsinyi@chromium.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@kernel.org,
 matthias.bgg@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Node names are supposed to match the class of the device, mmsys is a
system controller (syscon) not a clock controller, so change the node
name accordingly.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..a55e8c177832 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -908,7 +908,7 @@ u2port1: usb-phy@11291000 {
 			};
 		};
 
-		mmsys: clock-controller@14000000 {
+		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8173-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
