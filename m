Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5E11D294E
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 10:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pIm6ZOmA18jlcOeA9K6ngrKqdElRzO5VhQ6KwLvyRk=; b=owjIgi9niYTDS8
	fkSBFDR+RnZWsXYDkt6AJHAr3gJdPX/ytnQ8gI/d5ms2+o0Yr77KaOu8aQDNueO6IDsO802tdbNyU
	BVklLHEZj97LrrWxybVu37aNVjbp/TzLLLwam9pfWy6FCa3WPVsLZ3tyYt4aFMhks3+E8ZX7qIPnW
	JcLasYZpqTpo+1BdjuAk1pGfpvKMfmkDfH+J323sgRRd6yv4pZoWiBTS1YML9O0fy2c94STyxJa2z
	lZ+Pb6DraugSlpPkgZB1pgBmN71uit0QM5XzxRdgGXD8PVrpejqkg8XG56DyHtSr414pTS0t1bKVk
	x9Pm3DbSNYAvrsDIs1Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8nF-00049c-Nj; Thu, 14 May 2020 08:00:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8mm-0002mL-RH
 for linux-mediatek@lists.infradead.org; Thu, 14 May 2020 08:00:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id m24so19556179wml.2
 for <linux-mediatek@lists.infradead.org>; Thu, 14 May 2020 01:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SYamWCGpGqZL1TdMciPU3s1N0hd2ppZ++0/IfJ1caGY=;
 b=P+q8w1goUvDD7gR6IchyV00vB3pVcrHK1pDbN1eYY/VOYjgNmBkbQGQCYfXXV+eFP6
 4nf1Uy7o9a0eFzUc8hHDpXmqBGjs705jAZsWOO2j2XQAD5HlSFiVxGUeeRognXurIqJe
 FPIsufHTJ4GuF9r/qJTFwlF/Fy+VxgGQq58XWZHFrz4MxV/et4oTsm0Oxzuw/HD9nc34
 8yEi+GIBBK+Y9nC12SRDgelejI8LlrfC6x25QcgYArrW4SBm3ZgFtZI/79b1TeNOtPUw
 LLPr2Q1C3Wtpg+JZ6L/7KyJwhrYoECFXR4fNhARaTt4abxJ9QBuZXWngiMdxSPFy1aIr
 7f6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SYamWCGpGqZL1TdMciPU3s1N0hd2ppZ++0/IfJ1caGY=;
 b=efu0q52u28buNaYiFoftwuFKalmSS/CIjNo1b0aidi5O1Q6UzDZrcGuLtVmjqjPmOZ
 h+AVmQoZDktPrmkwt1IXAW+cSkjsevk7r27X5RtobJtoKuLN4mj13s9QVOl/Tp8bDL4b
 QhUwEp53CBSaNK0urDZo3yCACbaPXS7Lk7PQdDziwha/YUW//lELAFCDjztliPxhxnlo
 pDDtwrW1y8pG68mINXrrs1Y19sERVIuAVWl/SUqP1ps3+wMshNge1iYJyvLHybK89H/c
 6hWuFhCPBcELKBkT9NDClEj6BDau4DZgzL3rWKdRC9n17tZ/jOsQuIBvaUbWjIYWeusk
 zTGg==
X-Gm-Message-State: AGi0PuZvvGP9HC8UXLioMPmLDJU/3bcP4Mabfr7r8FMlV11NIooBuDmP
 MTf5E5Sp7IpUE1H56w0AkO6hrg==
X-Google-Smtp-Source: APiQypLkU2jxnKbFs8gBgz1ml8D56KMxK6JlEHw7o56nvtnY9O7hz8Oxa+M4tm30hkKVFqKw1ft9IQ==
X-Received: by 2002:a1c:f012:: with SMTP id a18mr45714052wmb.41.1589443207361; 
 Thu, 14 May 2020 01:00:07 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:06 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 02/15] dt-bindings: add new compatible to mediatek,pericfg
Date: Thu, 14 May 2020 09:59:29 +0200
Message-Id: <20200514075942.10136-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010008_943851_9FD1D0D0 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

The PERICFG controller is present on the MT8516 SoC. Add an appropriate
compatible variant.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
index 1340c6288024..55209a2baedc 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
@@ -25,6 +25,7 @@ properties:
           - mediatek,mt8135-pericfg
           - mediatek,mt8173-pericfg
           - mediatek,mt8183-pericfg
+          - mediatek,mt8516-pericfg
         - const: syscon
       - items:
         # Special case for mt7623 for backward compatibility
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
