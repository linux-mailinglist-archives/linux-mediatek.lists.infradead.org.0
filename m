Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1F71DE664
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 14:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rB/QYMKvJuLMt1uKsrnMb1Wd6aOdfEMqRzSZl1Cgrjo=; b=H0Sph9G9c5DcMy
	2F0NJdh1AUHRCriH3rIdUup42ttFMN9BjRgbhdOjXWyp7Bo+6PDgqo7lt+a1MbvLJuozTUgTZx+tn
	DN1XscLsacoZUbT/JyvfjX5F9d2GJel2uD9nqZ6qjxzfwlnl1GZLB+pUOmSvwvqaVMdcKWNRAaDwy
	f3ZCRIuJctc4qDELaum53ff6gxtMWAzrUAQaYr1ZoFQ2qNqNTSEJtuNkMU/m+h8UNGnTuWwwVg4zj
	EmafGSHZ/mgiRQdKgZ5x4N9uNeIMDnoGe5BjUVnWEWl6ryHHc+T5iZjmARZLiQ6TbPaWOa/LdO7SY
	A2oZmS1QBlqQHf32fNVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6Vg-0000EE-Mh; Fri, 22 May 2020 12:10:44 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6Sc-0003SN-Vh
 for linux-mediatek@lists.infradead.org; Fri, 22 May 2020 12:07:40 +0000
Received: by mail-wr1-x441.google.com with SMTP id c11so436369wrn.6
 for <linux-mediatek@lists.infradead.org>; Fri, 22 May 2020 05:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=VhVGCTS4grQt6k3HIErrSSbtbGv1Wb2NV++azMsGdLYYMvxxpy9bDLN55ZLzINOV9k
 FA4B2MGWBaHYAgatvgf2dGYKrGO8xWsZ4QKI9fTkogQYBe2HwRX4p37rG6SYWT43qr9m
 rzKobBuagWzGznsZIFsj05iy4OgSMBAR8TGedQokwHS8EPC5GmcC3wXUr9VaTZVsqePl
 FEcg341dLTGcYR88SzS5d1jPHMbs60ufBgTrfl+nqj5vy+SytnzIR3P34AHGt0pyfmvL
 djl2y9/l9gHpLihRw3dgb1o44HKCoGq741hEmx2t9uXgkpbm6wlqvo9SaJ7s0OIIeCWx
 mAIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=WR0ezJU6NCgyby3T3WFVO54pzzmPlA7i3E2PZch5wBZGOpgv4ZkcjeAX2eibst1qJq
 o6s65Fcjtt/OCNcsq+hr9QUZsMjV+MydddKYQVzQNmDbOSREblsODhMnNbWkMmc6gYSk
 AoRIBQiizpGkhOkYdPiKYg2Kecb4h9brPFH7CA/oYXlUo6aE8AytVGkEOd8GS6diLqCm
 fRFkXBqocNQWtEOrWgMiE5IPFfyITPF8bt3Lr58NN5l0fTYmPGp5+4CScXQRt1grlxiv
 ZkcP29FbFWu/o8d9gGvmejsPM4v9veHDxMsbJ+oEbPSOmZ9tjW/iTjRvL7Zfs8M3bhtN
 FIJg==
X-Gm-Message-State: AOAM533p7B3C3qpS57YkfIoYoFAatxQT8JHvew9kC7XBQwEtRurGZAd/
 F+0plf8tQdslwSnx8qTKyk+dVQ==
X-Google-Smtp-Source: ABdhPJzG2w/6WApFpPLpfPz5eZ2F69IZCZdA6mR68/WmlVPBV46pTlpI4dGghrWp/qiA5FGADLqR8Q==
X-Received: by 2002:a5d:4f0d:: with SMTP id c13mr3365938wru.357.1590149253506; 
 Fri, 22 May 2020 05:07:33 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:33 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 09/11] ARM64: dts: mediatek: add an alias for ethernet0 for
 pumpkin boards
Date: Fri, 22 May 2020 14:06:58 +0200
Message-Id: <20200522120700.838-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050735_098802_30B54DDF 
X-CRM114-Status: UNSURE (   9.30  )
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
