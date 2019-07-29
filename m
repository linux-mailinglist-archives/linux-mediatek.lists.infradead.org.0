Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3B379280
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Jul 2019 19:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X3PBczyQjgBTN9xT9CoFKxWolu6UBghZiKaxtKw96EU=; b=Se9uuRrU4niul1vusYygZ1ITkZ
	Y2No5H+Gd2FxSIFCdC7u2ygZiBwTqtX2OqhsrBlpXSTaVGNbhBUld7uR88SMKYnw00fY5uvnBf4GN
	G73DHWfoGLU0f/AvhPwUGgrrqwGFjFZ5MTSYNYJVi/jsWQfoq3WcOqLxlJXuao5JfGUVKR/v1BpP9
	xekRMJVZGpjzF7yb67EwGp5g5qQqgTipUfC8xLdHikNCRFc7w4j0QFitzXX0DAyJFOMYJQ6y+x/st
	P4Vbi+ZDguWdwf/Jubk0nonMNa170OY/kfDApHofXfpckVDjwoEcyQ3ZXXQ4Nn1lG2ZUmr2iyB/4/
	6h0Oi/6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9hW-0007j2-Lq; Mon, 29 Jul 2019 17:44:46 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9fp-0006EK-OG; Mon, 29 Jul 2019 17:43:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564422135;
 bh=PVro0E+XhF5WOC+jt5RKsnaiodARkQhonipO342cKic=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=a2K4Wd62s+szzY4KnX95v8a3uPylx0ZM58ngnXpoS9Qfd7tGAeS+nc8apL3/pKrVc
 rzapBcig3Nika1PC+40nT/DNcrv/iejh15FJT8uQoWNRRV8sBcXlENx/K6cI1azX9E
 19d4xA1lonCskARB3yVhg2aot6HUDMysizimaJGs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([185.76.97.79]) by mail.gmx.com
 (mrgmx001 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MQzUc-1hx7iT0deY-00UHTl; Mon, 29 Jul 2019 19:42:15 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v3 01/10] dt-bindings: add powercontroller
Date: Mon, 29 Jul 2019 19:41:45 +0200
Message-Id: <20190729174154.4335-2-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190729174154.4335-1-frank-w@public-files.de>
References: <20190729174154.4335-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:B1fwJaU2nRa6wsHeYE+Ck1G5ymij59WA9zN7izr9NXD2iDcJ+ET
 tinBgP+uGz0GVmyd5yjk0KlWTr3OXXRWmKScuwuC0uNuT787yjXzmaMIwceCNta+ULAjpIn
 CNzeVKHqVn+uHCqiMBlbMu9A/TSQpICO2LwVipML2ZbJhdNNLJeAsPEnxYdPpm5MSfOimrm
 sKH/FqqbpE6NmLkZw5NqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:H3RHmJDhLDM=:kQGyR5uCqx62NY4l2JyPgh
 DH/M5jorPU9FZ6UC4N7WiMXbeIrVYXM47CsfjhhD+cNdgn28ny8b48ON/wnoQFdfMzWfZ7RQx
 O136Zf7yjs4DrBB6FJdAMN0P5y0jLsnjf1xCfzKjNHR7yXkA26bHjle8Pf+QbGz18osF4mD7g
 rrwdopnTK4yVwSPgKz8BlkEY7cZGJkaXdloHYeLnCX2wu5ybDHYKxJc4QBnYiMVffVf2dSXxg
 7WmP+/dRAX3Q6VvJ9Cpuv6hxnEw2LEkHIkYskhdHN1STHs1MoxCnRY5Pcmj0h8RMzP5f/LbtA
 0fULuqlqppyWM2k+Swcm51nBRsBswsVcEG98Mk9M589raH4Eb5T+4IgAvc7LEL11FjP6wqsbn
 uChpg/Limf1KuwIVdFVmx/aIkAGIGhaCFmJPKm+dYOkKXd7HvhpxqeOlzCOa1vzQ1UZniPhPO
 gktLgmenlZq2BcWOfMUZ7hFh3WpPuKGBnLOELTvCCgapiMCwTqvyOF7sBYHTPQzK5hskYvTCP
 ZaPJnroNahcMlZVleQtyCPzc4zfQsPBJrzbkkl7k+/iMnBUskFiY9oIF42XwW6dIOGWM9/0+V
 eTdTwxmDYzgFYpSULhjIJwyHAKRGy7ckJlCfK9A816Eo24WteKtjO3AZHXX9aJne4Stds5BAC
 QzoIvyMu3mllCnz03Fvi0A2USAZB+ZG3mWh8yKFnSEMLR9fiOLA7CZklPET/cjYizwnkkUp27
 r2ybnVUFt5EPxLd3X4xMUY1KYLnuLxXqtpY4S7UIqPb9oQ2v9yetAVNvycVdNTAK4Gs8C33Kh
 VPm2Uz3j8BEeSEgCNqw+8s12N8IrDRbHPBnVasoe3K/hLJVUFIrtPCR+xHVuHRBv5N9uh2Vs8
 vcuajJBxEXUH507DD5f9BH24BUgpWoKjN7X+R/bPG53Kg+GSV00uQExwq17SUZgDTJCKraFxv
 0PxI0NOLjRL2w7I2cVxqCyLmBfpjh1aqgehb+1+eAzRSw4btCdQpBFHrrx/rxUAbBlcSdmWuX
 OCAnVT4mLyamOnSpH13OihAWYlDYuKOYFfoZp1GPjnOtNBa6Ajh1ANxgMf6btHKohlSVDjUEp
 8dJndQolD01Kpg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_104302_083748_BEE7CAC9 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

add mt6323-rtc and mt6323-pwrc to mt6397 mfd DT bindings
an example is shown in mt6323-poweroff.txt

changes since v2: separated rtc-mt6397.txt to part 2

Suggested-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 .../devicetree/bindings/mfd/mt6397.txt        | 10 +++++++++-
 .../bindings/power/reset/mt6323-poweroff.txt  | 20 +++++++++++++++++++
 2 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index 0ebd08af777d..44acb9827716 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -8,6 +8,7 @@ MT6397/MT6323 is a multifunction device with the following sub modules:
 - Clock
 - LED
 - Keys
+- Power controller

 It is interfaced to host controller using SPI interface by a proprietary hardware
 called PMIC wrapper or pwrap. MT6397/MT6323 MFD is a child device of pwrap.
@@ -22,8 +23,10 @@ compatible: "mediatek,mt6397" or "mediatek,mt6323"
 Optional subnodes:

 - rtc
-	Required properties:
+	Required properties: Should be one of follows
+		- compatible: "mediatek,mt6323-rtc"
 		- compatible: "mediatek,mt6397-rtc"
+	For details, see Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
 - regulators
 	Required properties:
 		- compatible: "mediatek,mt6397-regulator"
@@ -46,6 +49,11 @@ Optional subnodes:
 		- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
 	see Documentation/devicetree/bindings/input/mtk-pmic-keys.txt

+- power-controller
+	Required properties:
+		- compatible: "mediatek,mt6323-pwrc"
+	For details, see Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
+
 Example:
 	pwrap: pwrap@1000f000 {
 		compatible = "mediatek,mt8135-pwrap";
diff --git a/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
new file mode 100644
index 000000000000..933f0c48e887
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
@@ -0,0 +1,20 @@
+Device Tree Bindings for Power Controller on MediaTek PMIC
+
+The power controller which could be found on PMIC is responsible for externally
+powering off or on the remote MediaTek SoC through the circuit BBPU.
+
+Required properties:
+- compatible: Should be one of follows
+       "mediatek,mt6323-pwrc": for MT6323 PMIC
+
+Example:
+
+       pmic {
+               compatible = "mediatek,mt6323";
+
+               ...
+
+               power-controller {
+                       compatible = "mediatek,mt6323-pwrc";
+               };
+       }
--
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
