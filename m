Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C769A6E3BD
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jul 2019 11:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RVjcZ2KDIUVOERlI021v+JBKYNzr3clh0RqHcyWH5rs=; b=cqi
	crENI/2LYTUPNt+0OC26EkLWbR2+Yo1zRmNdVKO3NXcZ5CdFZu1xtin6Q1qbgK/FS8+xUfx7Eau7P
	GC/e/ZSMwfI6asXucgsEtbHQx+Jf7KhcqW0O9Zue368rUBvRleXFgAHfJVW1obrppuwWw3sn6cTSd
	0aYZ3GMbVSvw+yRJt4TAgRDT5jiYh03uwotqmi6f5ICIXkeELA06gMJqrcV5TDuekRdcM4tBWXrok
	zMzOub+z2n3owwkagXF/UACte6aqXKlrsMW+A7HIjMs6zKCZ0YDylJlvNjxhT8p8oI4/Y7BaSy68j
	kuRzQprIb4KUxMz9Y9+O6G34It6Iisg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoPXA-0007Fd-PY; Fri, 19 Jul 2019 09:50:36 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoPX5-0007Dn-03
 for linux-mediatek@lists.infradead.org; Fri, 19 Jul 2019 09:50:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1563529825;
 s=strato-dkim-0002; d=fpond.eu;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=D4xVnEMZt4ha1PgIER/TPU4P5PQuWjmsySU7LQEnfaE=;
 b=XfnYdh8lYa9xSA0YEDrOtqBfRBP3IeIbwH9LGi3sThvlkIfpGPikBL6bdBeSDKnrWC
 jPN4Q23ZaPjtMGTdtefPoLNI6NanUbU4FBMpe+DUORQM7Ur9d14lVOcWs6+VMREwTUsu
 1ku9TNkQxR6j7flA9FVV8Qi65yi0IiSklQATKSYOm2LAEw7hubuJjBsLJ2fDzyor7nMp
 h8NJAisXAbg/sY7UtIa1x+L0flCeFMNcur+Ub7VlPwMY6nAOnpwpxgi6yrii138meSZg
 k9OzDPd/DyGdZYD5pgkDSh9wRlLRmeOgae8rV8x4xeM6eO2hziyK3UIJ8AS04rTFrqAF
 owSA==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73dmm4I5W0/AvA67Ot4fvR82JedweDVac="
X-RZG-CLASS-ID: mo00
Received: from groucho.site by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id h0a328v6J9oOscz
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Fri, 19 Jul 2019 11:50:24 +0200 (CEST)
From: Ulrich Hecht <uli@fpond.eu>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH] arm64: dts: mt8173: Add capacity-dmips-mhz attributes
Date: Fri, 19 Jul 2019 11:50:16 +0200
Message-Id: <1563529816-3992-1-git-send-email-uli@fpond.eu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_025031_664664_5B36AD0D 
X-CRM114-Status: UNSURE (   5.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:6 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: matthias.bgg@gmail.com, Ulrich Hecht <uli@fpond.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Dhrystone benchmark on Acer Chromebook R13 CB5-312T:
A72: 15698587 dps @ 1807 MHz
A53:  7598784 dps @ 1703 MHz

Signed-off-by: Ulrich Hecht <uli@fpond.eu>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 15f1842..0b590fa 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -161,6 +161,7 @@
 				 <&apmixedsys CLK_APMIXED_MAINPLL>;
 			clock-names = "cpu", "intermediate";
 			operating-points-v2 = <&cluster0_opp>;
+			capacity-dmips-mhz = <526>;
 		};
 
 		cpu1: cpu@1 {
@@ -174,6 +175,7 @@
 				 <&apmixedsys CLK_APMIXED_MAINPLL>;
 			clock-names = "cpu", "intermediate";
 			operating-points-v2 = <&cluster0_opp>;
+			capacity-dmips-mhz = <526>;
 		};
 
 		cpu2: cpu@100 {
@@ -187,6 +189,7 @@
 				 <&apmixedsys CLK_APMIXED_MAINPLL>;
 			clock-names = "cpu", "intermediate";
 			operating-points-v2 = <&cluster1_opp>;
+			capacity-dmips-mhz = <1024>;
 		};
 
 		cpu3: cpu@101 {
@@ -200,6 +203,7 @@
 				 <&apmixedsys CLK_APMIXED_MAINPLL>;
 			clock-names = "cpu", "intermediate";
 			operating-points-v2 = <&cluster1_opp>;
+			capacity-dmips-mhz = <1024>;
 		};
 
 		idle-states {
-- 
2.7.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
