Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3742A1C580D
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 16:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sngaemU/3Se52h6KXqzr83WluU8zngbXFcsvHfUmVk=; b=InBGo/qIgQujJN
	K36hnWqVxJpDfLw31pKJKr4jzZPyDdnwu+pVcN5YN7jdZpYM7oLM5uRGpveTPQLnAALby36doBluh
	v2n144UNS8e41QsplkoODIKG3BXohJN+N/BjSyQhOfWklu+yapLPIAlnQe+hx8g7vuaT+/0gjhRwp
	qOCHwKiW3rj9YE/NdSzWxyzEFVf70b1yNSh9Gd+VQaLSlaIvht0PWudgAAPIY6uOuKzaeAiVjjlQo
	nGNhJqqsXmWbyjoK/nMmJ1frHQ2WYT13DWk8CCh1GJkrmXtrs77SzEy77fk8GuHK/eTsKFT4yGI9v
	HpNX6Wz99ublX+2Z6EAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyCP-0006r6-Lp; Tue, 05 May 2020 14:05:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAF-0002La-9A
 for linux-mediatek@lists.infradead.org; Tue, 05 May 2020 14:03:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id f13so2856264wrm.13
 for <linux-mediatek@lists.infradead.org>; Tue, 05 May 2020 07:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=hNfGjv2/etgG+8tAzkJNYt+mnC4ApvZHNSMUbk3vWQMdUyC5rAhLLs4oNMtdc8pWO/
 +cznGtdZyPWshkwy7QjHeTbd4wCTnOtTYZdvbIev5g5UseKkBk0fUo4iLnnZ75GyQs4U
 H8D34z7J3KjSeKQEdFbBCdRt9FGeNoc4MfPDf83NbPBBgB9RjME50vZ2MAWLkAP+y9y0
 7VdS+zOU/SET80n0dWqurzUFhJ5AXRUU7jpf/PNzchSdBW0yV0XHGCxGC7kOCvLp1lH8
 nMeRYEISvEOshTVVoJXnHBySh1CLyGHxNnSGV5R8sK3bF2l12XSQrqsZuVLdRaF32KT0
 P8zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=uAsid6+gZkh3w9HSxIF+6o6oUb1Yh8jlZ8noi6rp65hZt4hkPMpbmwfHCl9gncLLVm
 c6LEPz5gVEdz4VsKEjsdhMPvENpAYMFdY6Gqlh1+ES2HwjQW1PKQfzLMwkDy8QfFmqyM
 XjbmxNZy1altR7lQ6re3nMm+AbwHEjZmKvnJt2MUlZgSQ1HFQLhecElrq/WyjU4N/R7C
 2sYmg07szct0YCFtp9aYnCO/veCvEu9FWIJpr6fEf459kpkdd2BUJdNjxIuZC22EahsF
 dMIDVmSSsISNRrOQhRn0HhyI9WXG41vnfPEPTL5whDaXT7KZHR9HoVt1ZW7RJ+hI+LjU
 0uAg==
X-Gm-Message-State: AGi0PuZ2Gu4ZwqpPzV6+F2/riUD3zYzZZu462PrvoZp02PU90gUGepJ+
 AD2Wn/TMSrp+NnzvToIV7aIgUg==
X-Google-Smtp-Source: APiQypIJAcz7+8YuVqS0Fb+BpugSz7czS+kkRMyzeeVjVlyOtSkG709fxRrSUgqXs+QH46mCuYaAyg==
X-Received: by 2002:a5d:5228:: with SMTP id i8mr3913687wra.359.1588687393914; 
 Tue, 05 May 2020 07:03:13 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:13 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 07/11] ARM64: dts: mediatek: add pericfg syscon to mt8516.dtsi
Date: Tue,  5 May 2020 16:02:27 +0200
Message-Id: <20200505140231.16600-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070315_457813_A3907AE2 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds support for the PERICFG register range as a syscon. This will
soon be used by the MediaTek Ethernet MAC driver for NIC configuration.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 2f8adf042195..8cedaf74ae86 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -191,6 +191,11 @@ infracfg: infracfg@10001000 {
 			#clock-cells = <1>;
 		};
 
+		pericfg: pericfg@10003050 {
+			compatible = "mediatek,mt8516-pericfg", "syscon";
+			reg = <0 0x10003050 0 0x1000>;
+		};
+
 		apmixedsys: apmixedsys@10018000 {
 			compatible = "mediatek,mt8516-apmixedsys", "syscon";
 			reg = <0 0x10018000 0 0x710>;
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
