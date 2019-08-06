Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C148182F15
	for <lists+linux-mediatek@lfdr.de>; Tue,  6 Aug 2019 11:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=25wQR1b53Ry8H44Xu/tcFWcrO6bBIscaQzPfCQEAmZc=; b=QSCXztrFsRTiN+
	H1qXgj05rlEpORVbDBI2vb6A693Ri9P8sa9+bIOt3cDm0w6nEyygGubirWfEcaEiaOnb8/LTLkaR8
	SnNuqLMYYkJMGYcfoJSrCGVoLbrojoOgCNuuqkEqOedanLwQEPnDdggXO4TptXym+3ugvjFfDUjyI
	DJPn6k1g2oigaFajkU/Ap1spaRHHfbGUIxUA8FSEFqc/5u42dmVzYvO1l+DQE0BGnZ+CQ3nj81Oe4
	DiwZ5DzHzHhnIOb1LYlNfiMc3dMfkIIY6rYRKTnRQgOd7JPNrPV3rUdvl1MKZtsnYSxT/49ytZ6Jn
	OW45aG+qRXrtP0waLA7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huw7H-0007kR-HI; Tue, 06 Aug 2019 09:50:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huw71-0007ZB-Ds
 for linux-mediatek@lists.infradead.org; Tue, 06 Aug 2019 09:50:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id s3so77511501wms.2
 for <linux-mediatek@lists.infradead.org>; Tue, 06 Aug 2019 02:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cR9AZT/YDTInU9+YBz6pXMm816wSfM4wzlR1DgdPSTo=;
 b=01D8s1Q83HQIaEzHNLAeEGXDLx5exn9je9X3eFRcKcfmSUdFximps8ev0hxN7OHFo3
 NG2fT8+GrUXx4No4yvM9qZ5X+CzImJSWFodIsWDDdy9t1b+YpY5cWQOy5bmoe4glLzrn
 5dt8WSAI/aQMHTJ8oS5zoICASi/RGhMGymuQ1ltqkIGVwUXLZ1N9iypI5sbFNc4K2Sh2
 oE/mTUt2gMhH+/VRGWAWfDRk2J2Dd+VjkFs4bvZgbkoVT9PedkARa4WrmgN0fc2SvZ4O
 r8Hg35fr+HDLcWJ2ARsQlnkmcTFQVCSbNGTS0W/YkAZlU240sWrYOxh+hNM5ZE1E1J6j
 kySg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cR9AZT/YDTInU9+YBz6pXMm816wSfM4wzlR1DgdPSTo=;
 b=sbqpWhkA+x4AtCAvJ3YKo+tJoDTGIwbszShzBweHvvEUUAuH99RERaEOem2QQqdTL5
 YaFegoO2YpbHLvdCPcwlbEyb0VXNBb2Nkmi0RPSjdsBtnejcaBGiWZJH82l2Kavcy7mj
 hmsOq4S973PqCIov5pbcENUIQ9X4PPXPUVIvXi7+qBcW6yvkRDXPbVflu6X4+RGc5694
 B408pck8s5Lvcog1Xeycp08lAqOECo1Tq5VeDuVkDRKN45+Zucv4tHuPsDP7Ie+nG71w
 3XkeVTxxBvk3qbInyhJKTYFbXchYV+dE1nPdQcDceYq+s28ZVgFa7BQeYct5Stwx/erl
 KvPQ==
X-Gm-Message-State: APjAAAU5WOS6O1vb7boyoo5l7FvHH6KwX7u7vm6NwPKRjCRGaSQBGdUT
 vPJOL0deF6LJCbAKZO8l8zDlzo0E99o=
X-Google-Smtp-Source: APXvYqxsiIzJezgCwkrreRZ71gp/fn0cBu6In2uUwfEVFYSgvXVBLB7sp+DXVqSHhsu/NHLt74v6UQ==
X-Received: by 2002:a1c:107:: with SMTP id 7mr3807202wmb.84.1565085033769;
 Tue, 06 Aug 2019 02:50:33 -0700 (PDT)
Received: from radium.local ([2a01:e34:ecba:5540:2c05:40e4:899d:aef0])
 by smtp.gmail.com with ESMTPSA id p18sm91017343wrm.16.2019.08.06.02.50.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 02:50:33 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: rjw@rjwysocki.net,
	viresh.kumar@linaro.org,
	matthias.bgg@gmail.com
Subject: [PATCH] cpufreq: mediatek-cpufreq: Add compatible for MT8516
Date: Tue,  6 Aug 2019 11:50:29 +0200
Message-Id: <20190806095029.4758-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_025035_504816_390D9FEC 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add the compatible for MT8516 in order to take advantage of the
MediaTek CPUFreq driver for Mediatek's MT8516 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/cpufreq/mediatek-cpufreq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
index f14f3a85f2f7..10bc06f5dd45 100644
--- a/drivers/cpufreq/mediatek-cpufreq.c
+++ b/drivers/cpufreq/mediatek-cpufreq.c
@@ -535,6 +535,7 @@ static const struct of_device_id mtk_cpufreq_machines[] __initconst = {
 	{ .compatible = "mediatek,mt817x", },
 	{ .compatible = "mediatek,mt8173", },
 	{ .compatible = "mediatek,mt8176", },
+	{ .compatible = "mediatek,mt8516", },
 
 	{ }
 };
-- 
2.23.0.rc1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
