Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805D01D299B
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 10:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rB/QYMKvJuLMt1uKsrnMb1Wd6aOdfEMqRzSZl1Cgrjo=; b=dyIDqFvmWKZqe2
	oYA/X0OCiy/ktIjcOu4tWLDS5Xcp4GWZ9RcYAbpmVA7Fz6wNSGinCppoxrCGc/0W+TtIggd8yILEI
	jf6xGm8IIa0fvwiRveozyrc/PumlLckPc8Smk75MLpRMzKcqqtrlG74NAfgtI3jjSaZEl2IJ6RWRc
	XVEs2DojdT97iCzX2onADQn3XZ7aDMlPQctrFlk1mI8aJDuGC8iTT9mL1K+nloX4lBsJT/xfkeXhs
	IfwLOkgXpSe1W/gcvslDkHJPKzL66tsqQXQAKtOSg05T+dRsGDwFKHjMTdOpbg8PKinln2IYQ6XSi
	4WS32TXcqcSX2wl7pm2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8r0-0007nH-J8; Thu, 14 May 2020 08:04:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8n4-00041A-Cd
 for linux-mediatek@lists.infradead.org; Thu, 14 May 2020 08:00:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id y3so2640251wrt.1
 for <linux-mediatek@lists.infradead.org>; Thu, 14 May 2020 01:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=A0xVcmEWRDaG3Z/7+1DM1W7TJCWEWrBCYQ3bDkOtG7yxOo/ZUzFZP8QFaxifgngVLd
 VPcWESAtBLaibbRqDQjSRWN333avDH1S/qikpFUJla/psrQR0/mq4psad2R0bwm9sge/
 pIq3J1V+u4B8Ab6r0Wg2p0wDFFRAi0ZW6OoFpmEhpyJ0xJfqoRQ/mJSzrHmE8nWarSMj
 eN8B5mppmtl2sXH+UbITdJB1fzx6mQr6iDAJNYF7raKBqVoOIdZykmoSQUJhXGsngf17
 MDZ9gFoMfcspyDCT8khDWTxlmLYUO5/Fy0svDuwQpFMSNyAXANR1fH7+E98Ef7mYQxdc
 fubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=oL76tTCAdK1dHTzoR0ddIRV1dcZwFcD+PnpcXZ0J4zSJuALWs1WFNWICsFv99lVmnE
 dCklvz4kGuvKUAv3ZhkPZkE8pUQUPK/5+gPx0Aheg8yUc46Yao1BUoDHBgyG2q5+Gt3E
 eLf6F/RVuwiXWJGBloZf3MjrIPLP6cj25NEoeE1KXcOlB0S7rmKtP/64I3T0RQQJrWPZ
 4SKirlIQpzP9op9ihiHgPPTYwk+u0rX47ZdD36JfzJn6odz53W4Yl7k1dLVaxYtlWx5R
 gaWd+ZPfUIyK5hMnUTDdJUnQKKUsW4o3DuYgUx1O56Zl7Tt3NMpBNp8EoAJVYma9QkoE
 gUVQ==
X-Gm-Message-State: AOAM5329Zpngq+o+AGE8a8Grr9MkDQBSTwnXRzGipQQ0VmPsP/qoPe3d
 3XaGFn5nkbQh++Q+IUuKtqLmkw==
X-Google-Smtp-Source: ABdhPJxE2Nr5gqc48KKQ7TyBu8V/dSLVZvEBAnxJMTulHZMm4c3i92GjiXIt7jmUvzDNI+9reMe0yg==
X-Received: by 2002:a05:6000:1187:: with SMTP id
 g7mr4053217wrx.54.1589443225024; 
 Thu, 14 May 2020 01:00:25 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:24 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 13/15] ARM64: dts: mediatek: add an alias for ethernet0 for
 pumpkin boards
Date: Thu, 14 May 2020 09:59:40 +0200
Message-Id: <20200514075942.10136-14-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010026_500371_DAA5C6B7 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Add the ethernet0 alias for ethernet so that u-boot can find this node
and fill in the MAC address.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index a31093d7142b..97d9b000c37e 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -9,6 +9,7 @@
 / {
 	aliases {
 		serial0 = &uart0;
+		ethernet0 = &ethernet;
 	};
 
 	chosen {
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
