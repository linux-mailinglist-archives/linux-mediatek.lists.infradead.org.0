Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC04B118B2
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 May 2019 14:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWPBwuWVbbaNg107gAgKzuZDLNtAp8Z3VRJfOGzstsE=; b=cWFB+eKEAP9kjn
	4Yxb8YS4YkeGLZU7aCBK4CMg+UYCiHx12/ZN+IsOh8ncWdu/gtDnPemEoxXmgaS5J3QohG3Yh1eay
	4Yr3Zhmj9MLnZZ3UkDIOsmd+idmV1+Cl/eP6o25a/PHeqhLKy8uhTlvNgWVejRZxM4qZFL2o5OzC1
	p0RsMuDh+U9f9kmWsP6b+zvbPXnrzv6pfWN7j/kwM0uOq/WZT50O3xxFWeG5NvuTYfe6kRltQLHBs
	nfd7m3P8aSrGWo/2fJiwP5w6MyDu96yTR0uE9jtQGfev+u5AXC3rXnbIvvF2x5dg/o1HluEfTTtyK
	G3uZNcIS3jswY4mxl9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAYR-00020P-FH; Thu, 02 May 2019 12:11:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAYE-0001m7-7i
 for linux-mediatek@lists.infradead.org; Thu, 02 May 2019 12:11:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id f7so3041085wrs.2
 for <linux-mediatek@lists.infradead.org>; Thu, 02 May 2019 05:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WV5PITTv1apIvGOQpl0Oue1rXCYUzZjLQa3jrOACL0k=;
 b=fGFv2mw4iL0cv2bG/GRA7d1X4HgNeWqkFUlKM+Y/IqRoYZkLd0lJQcSAr9hZhYwfJ6
 hOPQ2Lvq9gbk+Sd5w5JijwJEeNRrewo04HsjsjC4UFrKfgiKFa9pYpbbdZ3VFnEkmYtV
 7apA/VD3apl7Qf0l8II8mQYF0IM7z5F7ujT3GPaile4zDTk/anUVf5ndCF1HvidAejb9
 RDNZpwoYffe52dGwv0N9zyhFGxjRfihGe58Cb++wdZZwKD9NW1ztJc36uCy3vE+0uRn5
 tZDcSJcNeWAmC+5W/TabQR/vaJWPWnNCVawCbNyKLSflnfO05LztfL+RP8FkKJh4TDuV
 9hFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WV5PITTv1apIvGOQpl0Oue1rXCYUzZjLQa3jrOACL0k=;
 b=YUpEA1gaGRcXDl6b14fdof8w/gHEe71h5mks8uL3ADHSIjy9TYPvuWgr64eRVG73dy
 KR/0+pQqCVTthkzf7y7RhWx79MaXWbZI49Ut9tPX1P/QyGHtJ7ONhpafRgNQH9zud9e9
 ICwA3XTQSQqvlzDoDSbO4KfttdfKF7sbu1cvkW6NB5gpgAa38DSIDEYRup3IJwBETV/G
 tM/+B7B7gPxgxkfuE9MvStypSH0nZLAD5B0fFmxkGA/ktVfJUp/ac0HPOWFaJv7YsOLY
 LHofofzd6qyeXSUrCxW/c6BAqKgVXk7Uwhl26JRI+TJ6xxLfyFjDuVy2z90CU6I0MB3H
 2vsA==
X-Gm-Message-State: APjAAAXF5nASXS3XA1pQDzixDnO4zyVI9P9WJrLiP2wnpO1wSesFaJ41
 0EnlQXTtpJsvC9AcOqVl1zsuCQ==
X-Google-Smtp-Source: APXvYqxHbdw86DQT9DLiLhVUZhwVSNryaz0tC87K271cS45Tz+OjI7rgzVXULNJc92nQD2UrLXWBOQ==
X-Received: by 2002:a5d:5383:: with SMTP id d3mr2573633wrv.105.1556799055563; 
 Thu, 02 May 2019 05:10:55 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 05:10:54 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
 tiwai@suse.com, kaichieh.chuang@mediatek.com, shunli.wang@mediatek.com
Subject: [PATCH 2/5] dt-bindings: sound: Add MT8516 AFE PCM bindings
Date: Thu,  2 May 2019 14:10:38 +0200
Message-Id: <20190502121041.8045-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121041.8045-1-fparent@baylibre.com>
References: <20190502121041.8045-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051058_273795_AD7B1394 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add documentation for the bindings of the MT8516 AFE PCM driver.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../bindings/sound/mt8516-afe-pcm.txt         | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt

diff --git a/Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt b/Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt
new file mode 100644
index 000000000000..c5fb3c55a7f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt
@@ -0,0 +1,28 @@
+Mediatek AFE PCM controller for mt8516
+
+Required properties:
+- compatible:  "mediatek,mt8516-audio"
+- interrupts: should contain AFE interrupt
+- clocks: Must contain an entry for each entry in clock-names
+- clock-names: should have these clock names:
+		"top_pdn_audio",
+		"aud_dac_clk",
+		"aud_dac_predis_clk",
+		"aud_adc_clk";
+
+Example:
+
+
+	afe: mt8516-afe-pcm@11140000  {
+		compatible = "mediatek,mt8516-audio";
+		reg = <0 0x11140000 0 0x1000>;
+		interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&topckgen CLK_TOP_AUDIO>,
+			 <&audiotop CLK_AUD_DAC>,
+			 <&audiotop CLK_AUD_DAC_PREDIS>,
+			 <&audiotop CLK_AUD_ADC>;
+		clock-names = "top_pdn_audio",
+			      "aud_dac_clk",
+			      "aud_dac_predis_clk",
+			      "aud_adc_clk";
+	};
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
