Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E48481A2B
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 15:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dREyeg9DjdiCLk9md3S8/Cma3Rp51W28FB62/YbrOAI=; b=fddlw2GKhzG/tT
	e5AluzChOOOg8N+NFQ1a497eA/xJqO+yMN+AKkISTMz8Cyh/KNPKADLbU0Q621eZgCni52E8O1FaF
	4WMqO0MoOUs4+T97lVJA0Mh/oine+tGRlSHIj2+xW6TvTZjcltulnwwBluS9ebnw4308iFqxNK669
	CKlVah3+I1WZYhu/NCybPBY7WxItx7O9qUwzwE57izikmba/Yz/WC3Rcl1RvAG+McyE8NwLJIIO7J
	Aw1E8/2A2XjK3mzyNYtbzdV0kSWXEkWJvHiIFAs3Trd9nn++NtQ8gqy5CLSYaPNt2h4oiqs9TMAg0
	UF+e0MKC4Nc1xiU5Kw1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucdI-0006Tv-Dj; Mon, 05 Aug 2019 13:02:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucd6-0006IH-0s
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 13:02:25 +0000
Received: by mail-wm1-x341.google.com with SMTP id h19so6640561wme.0
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 06:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VD+kO2freT4druqcnh49hR6u8OkuGawcql9pBt221gM=;
 b=mjk8vH9McUPXmutExi9LK5ex7zl16u6Y1A29MLJPWpdqRchOSAGR8yhmK2fOTAo0rR
 0sDiFCY/K4jh+admqvlB/o99ab6xeNCWhc+kpHUH51vRLHk1iEDDajMTVrPVdzhGXOez
 b+MOpvwyHe3E8z4ck7Lc0JsxTJblE1HTqoVBH2bnCZr3MsUkmySVvX+rpBLWbpbktUmu
 hP/XHt8UiQrWbTdDNDhsijdtesI8b0m8A9EZshbEb+4cGVeTBIWdn2VjubV1sCDeTZXR
 sMr8q3TOfj4wjtw/b/DQ2XLzpqs0aaxo9LDtJ1wfglDOLg/WFdPVPnB9ccDGeJ8Az1yz
 MGtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VD+kO2freT4druqcnh49hR6u8OkuGawcql9pBt221gM=;
 b=WEpWQEsb85q1ZQdASBbpm+P0APuEJRUCfjAk8lJ4bp1Cn9e5NVoIfYyTbpxgNUCqUp
 F7DvpkzZeNbIhqcXD2ZSpk7QYy9LFl4mvZeTUPEkQ5DyIyAGsv4l6sFJarZ0/H2lINI2
 N7sSMNhAS1slHbF4SNegwIqvjt4I1uF6/7l+GKQlju02vGKXQdOnLQMNPcK+TwIF2hw9
 yJBxViBn2tKEpysMWqsS8CDoh2HP7pVBOFmVhCUKBSLin0oyt3SmDz/BvMGr0OUxdnBM
 EZ6YYpmAyJcIxlMiY8MnY/CyzVLj+BDs7O2dYvUaxZwabsRllB6L5wj9ZHsciZaUGC/M
 xXqA==
X-Gm-Message-State: APjAAAVmogg9USB/UP7OEtFN3Ho3580gUWiBbIv1L4c2TM8ryBlWaUCb
 c5w7+8O72Kcg8Fe/RIZLdfErSw==
X-Google-Smtp-Source: APXvYqwxgFax/fM7iqjP2wFpKMs36pqx4aCRyV/P5qvPCozjg2IOFjiFHWnYt60j8Qx7Ktjguvx6VQ==
X-Received: by 2002:a1c:4e14:: with SMTP id g20mr18419431wmh.3.1565010140443; 
 Mon, 05 Aug 2019 06:02:20 -0700 (PDT)
Received: from radium.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v23sm74950359wmj.32.2019.08.05.06.02.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 06:02:19 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	matthias.bgg@gmail.com
Subject: [PATCH] dt-bindings: rng: mtk-rng: Add documentation for MT8516
Date: Mon,  5 Aug 2019 15:02:15 +0200
Message-Id: <20190805130215.20499-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_060224_090302_AA3C1C8D 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This commit adds the device-tree documentation for the RNG IP on the
MediaTek MT8516 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/rng/mtk-rng.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/rng/mtk-rng.txt b/Documentation/devicetree/bindings/rng/mtk-rng.txt
index 2bc89f133701..dfdcb5cd2ea8 100644
--- a/Documentation/devicetree/bindings/rng/mtk-rng.txt
+++ b/Documentation/devicetree/bindings/rng/mtk-rng.txt
@@ -6,6 +6,7 @@ Required properties:
 			"mediatek,mt7622-rng", 	"mediatek,mt7623-rng" : for MT7622
 			"mediatek,mt7629-rng",  "mediatek,mt7623-rng" : for MT7629
 			"mediatek,mt7623-rng" : for MT7623
+			"mediatek,mt8516-rng", "mediatek,mt7623-rng" : for MT8516
 - clocks	    : list of clock specifiers, corresponding to
 		      entries in clock-names property;
 - clock-names	    : Should contain "rng" entries;
-- 
2.23.0.rc1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
