Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD43B200650
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jun 2020 12:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYcI5ykpqak0MmZTOOXNyE2LdHGgldL62ofKZ/RDXjE=; b=ZeNVkVcsoQkZqL
	cS9XhE/J8lLujehNIzkV74vAbE3sDuWF7Z7aG5DzXm30J25tlVOtUZ8gmeE7yWucBKDcTYCnIb/OU
	jQGEbeBV5TPMthyOQiIgMoD178T4LROa3LH7j1qjQL9pKcTAVZOegnqgHwxMMx4i+hZr3X/mEhZwM
	ZE2rwKSdPggJjVEStSp2sBU6Ko/EIw+GAp2ByziJWvzNxed7GkuX5peYSf7PHEKb84wUyWPaROm5V
	L33nWxkjIPD3jYFB8ojFihzebg6jKJmiWFW0x4LLrHdug5cB/oPeIBvQkukLLDPGM1B7LP7pZ9TEX
	ei443fkKk2ZnmEK4300A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEHK-0006i2-AX; Fri, 19 Jun 2020 10:29:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEFl-00057B-5t; Fri, 19 Jun 2020 10:28:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 55E3C2A5248
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] arm64: dts: mt8183: Fix unit name warnings
Date: Fri, 19 Jun 2020 12:27:54 +0200
Message-Id: <20200619102757.1358675-5-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619102757.1358675-1-enric.balletbo@collabora.com>
References: <20200619102757.1358675-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_032809_363045_F6E05E97 
X-CRM114-Status: UNSURE (   8.78  )
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
Cc: erwanaliasr1@gmail.com, drinkcat@chromium.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Remove the unit address from the DT nodes that doesn't have a reg
property. This fixes the following unit name warnings:

  Warning (unit_address_vs_reg): /cpus/idle-states/cluster-sleep@0: node has a unit name, but no reg or ranges property
  Warning (unit_address_vs_reg): /cpus/idle-states/cluster-sleep@1: node has a unit name, but no reg or ranges property

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 00137ec61164d..e356076749148 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -168,7 +168,7 @@ CPU_SLEEP: cpu-sleep {
 				min-residency-us = <800>;
 			};
 
-			CLUSTER_SLEEP0: cluster-sleep@0 {
+			CLUSTER_SLEEP0: cluster-sleep0 {
 				compatible = "arm,idle-state";
 				local-timer-stop;
 				arm,psci-suspend-param = <0x01010001>;
@@ -176,7 +176,7 @@ CLUSTER_SLEEP0: cluster-sleep@0 {
 				exit-latency-us = <400>;
 				min-residency-us = <1000>;
 			};
-			CLUSTER_SLEEP1: cluster-sleep@1 {
+			CLUSTER_SLEEP1: cluster-sleep1 {
 				compatible = "arm,idle-state";
 				local-timer-stop;
 				arm,psci-suspend-param = <0x01010001>;
-- 
2.27.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
