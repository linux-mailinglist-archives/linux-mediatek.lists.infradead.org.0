Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9D81DE658
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 14:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sngaemU/3Se52h6KXqzr83WluU8zngbXFcsvHfUmVk=; b=WjrqBTv13R66wt
	79yfwFGxjrDIyoVPBhEVXJA3BRml9k1bgLhuVWB/LRHG+6OHMvo/ROqAC36hS/fZCVqKjmAElgTVi
	FSnkXjYYy+0ZN6J6vJEJzGwgpRDL2oGYZxduvCnquqllMb432bvxFDzy50yhdLg97EM2P4rUrMENc
	Vbi3c4J7YdpR9ujmEsvxKII6FsFH5QuTF3eoXr8/lgWdwIK12XTZ7c54eyex+zSm6WBhoy36SvdkD
	91QksH3dzKuK5eM+TzFCnbZBXSbv/KAn/O/5zLpXSPvsadO60lm3IO6ePrw7tSEiMMbA98VZ8HTVn
	sT8vnUO7VzWu3sKSg+og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6Uw-0005fu-VT; Fri, 22 May 2020 12:09:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6SZ-0003Ow-UZ
 for linux-mediatek@lists.infradead.org; Fri, 22 May 2020 12:07:39 +0000
Received: by mail-wm1-x342.google.com with SMTP id n18so9588457wmj.5
 for <linux-mediatek@lists.infradead.org>; Fri, 22 May 2020 05:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=agS9SYZmiExPn1QFT+zp3KAP7WUdbVr14uPS6nJ27iB1uTA+ehxDy0YnoR9vFVYpwe
 ejKdXTzf8HvvGvnXEBEKYv0XRMvOXLfibnVZ4RxWk+opDqL/ZcUAhJfc3z/bq9Kd+/Lv
 ruVgGtvfmDrn3JOLXqEAJ6ZeygoSjuZdHAhLF0oHaU+To5M7N4RW+0P2ItNRNBKmSbBE
 P4pXfoUCxapPvWFYEm/mn3y/hTHEXZT2TuYxVmxdofXn2xpEq3tf4L0boBEWWiTDpsO9
 6AKtCVsk83JdgrJUbOkFst5Wy7TT750YifbEa617FJS68K9UwdH1KMuj3t3gdeqwoNUh
 txoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=X3K3ZBCieXnNphEcSnHzt2BEBpBJwKnNUkYpSLq5aESTvEsqPtWTWmuQYks8iwqkx9
 a2dbbfclyWpm4kvQRW5to2zTEjbMoMR2ZaMWjZ8yMpiuPt7RHUilRPiyoc8xe1e6AIyZ
 QmUFhqTxBkvNw/pTdK3PXw5gNGUuy75X5oopLV9B/VzYUu31poziVBbRtLPY0AjitafP
 BcBjpDvzdibXXZzn/lPxBeTdK2/y08zMSGmLLs39XT3uZbK+z1/wQBDPNie97N2h28JS
 kfy2+CQpSmr/dThxgQET+Ck+EsQwkqafOr6q2mO8becvhCyrj67/YCkQZzdM6ttVsqOJ
 IsUQ==
X-Gm-Message-State: AOAM531oFo73ckn6uOKAfQo3DGB+iGl8ELjZFAUzFXHI2z2lkO56qfq7
 /JkapO4joedIF1lMNQp30Ue1Yg==
X-Google-Smtp-Source: ABdhPJyMDEfpWBgRlr7TcCLSZc1VpzT4+1vIWxF001lm1q4j5p/zwqQ3+nBq6019j5V6S7cI+dSStA==
X-Received: by 2002:a7b:c778:: with SMTP id x24mr13962597wmk.144.1590149250359; 
 Fri, 22 May 2020 05:07:30 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:29 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 07/11] ARM64: dts: mediatek: add pericfg syscon to
 mt8516.dtsi
Date: Fri, 22 May 2020 14:06:56 +0200
Message-Id: <20200522120700.838-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050732_077564_25C17AF8 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
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
