Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F7514026B
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Jan 2020 04:38:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJInX5oIV9aa8i5pNXz/99c4xl91fSHdTMOYqgvxyiY=; b=PcFY8Jee+GvCeI
	RjJXfxNSWRYWpuj5BuuxB8u1uba5v70HaIYvWOIpJiRRcB8EXIfvnyAs6C7fhwhw+du7dFFoEC/IU
	7s0Vj/dSfnDQL0Ff5+2ksXdMpOTb3DcX5Z0Gj1D2AB+YlKp1qLtzNLZgujsqTp5DqN1NlChzX+N/k
	PM6LMn3806T57S3ppWHjFv+VbVITy8QVPjjDt2Xu9XbvigxO/ESUHBWEo3vNTnEaqE8y/WZkepG7K
	Q/grXayrnPBg8hrGRJ2us1OGMssMVEC8cWrfemZ/QKdVTkmD5zWOxzjwSWm6rHaXhW3a7gm6rvx0e
	JgVAEHMtyPdTKN5fWhfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isITB-0003Tv-NW; Fri, 17 Jan 2020 03:38:49 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isIST-0002ns-KI
 for linux-mediatek@lists.infradead.org; Fri, 17 Jan 2020 03:38:07 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so11272603pfs.6
 for <linux-mediatek@lists.infradead.org>; Thu, 16 Jan 2020 19:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wUKL7anK2VMZt2D/L2kwFyqgWv6/GSNMYRnjYd65PE0=;
 b=NnpfF2MLFTvbGaAnhIIe+UgRA4YZvtzhQgTmCjVzzsS2lK4pkLEDcM4uX19C2q7Jsu
 3gPDrtYqjZvQHtmsh/wTaM1BCoUox0scJPy4CcfosRpQbJzj1jDbj4cuVtW1w7m0Zd//
 z3+A6z+8S3cmIcLu2P3ExnGOFZnxriABD2A6M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wUKL7anK2VMZt2D/L2kwFyqgWv6/GSNMYRnjYd65PE0=;
 b=H7NsfQwxidBbMAAThuGzDWumahZHtuLNQ1qpBe91L31eUplivGXAAqpSvPrVcIZR16
 +rAqzLAEoSdZyuIfCDrzPcV7SCaCxQPD4JZElov9HmDL8wckmoz/jnjyYmhmphG4g8PA
 jFVIGg3JkSH9+//bBQNjBiuZ4IqsRTyDCakZ2cK7i3UJ8w5uPucBUopXbXvPE5OOV08Z
 +/xuxXWGcmQL3JPSPsQsUhg14mZe37XCFKIKmHS6yRE8dKtWbDkJCssYG722oAkFAO3/
 R1Ch7oDs929NmTMrk9EXO5E/P+is/NjtaP71E//ZXG/KO7I6eVIM7g6TZpCVHT6o5Ink
 PKUQ==
X-Gm-Message-State: APjAAAV2W+whp+ztCSmG/YGQteH6EnHt3iiCYp10v82j4FcGv2Y5Ncul
 KM2e7BJ4ILnKzlS/M2Xj0SNUCg==
X-Google-Smtp-Source: APXvYqz1iwhj0OogQfDaYFTpD4TqMlb4k5bUlrDqndHj3nE2Trjh5/+S2MJfNPZXlLkQ/QY0Qb2AtQ==
X-Received: by 2002:a62:446:: with SMTP id 67mr844511pfe.109.1579232284594;
 Thu, 16 Jan 2020 19:38:04 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id j38sm25940259pgj.27.2020.01.16.19.38.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 19:38:04 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/3] arm64: dts: mt8173: add uart aliases
Date: Fri, 17 Jan 2020 11:37:48 +0800
Message-Id: <20200117033749.137420-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200117033749.137420-1-hsinyi@chromium.org>
References: <20200117033749.137420-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_193805_695953_DA6C0741 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add serial as uart aliases in mt8173.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..790cd64aa447 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -50,6 +50,10 @@ aliases {
 		mdp_wdma0 = &mdp_wdma0;
 		mdp_wrot0 = &mdp_wrot0;
 		mdp_wrot1 = &mdp_wrot1;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
 	};
 
 	cluster0_opp: opp_table0 {
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
