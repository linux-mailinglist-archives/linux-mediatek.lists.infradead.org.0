Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A80FC13D37F
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Jan 2020 06:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYvRnr5eKFue56uiaOiWiBI2nOzc6wvB8ZMpPKbz3yw=; b=iZD0QHX2Phkdaf
	wgBareBdngfMowA4ZMUjEP00WqNpKfnKPXwHx0o5LGbAT32VrzRbHQpVWU8Vp0oVAKWnCtH7+FE/d
	6cY6XB511u7iOb4oLGhuDDw80sYiobEnsejOb6RmLQm5ppKpkTc7yN5zH9YNMyQLiTmrFpfTd6+bh
	3/cPCsh3jqb7L77UkaLnydRFgc6DPynWiVJEP2TswXDnzmda7+t6h5GUb0M3PlS/JfhZ4FuxPScpj
	kZUQKa27Q/TPm56khQH5s70jPlO23EayGT+HaR8X3+WifA16vSsb0Ed9X5PbI0FB/p7XCTlHcso2Z
	CG3uLOp6vGyGku+55dRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irxSl-0005lj-Ae; Thu, 16 Jan 2020 05:12:59 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irxSK-0005Kd-JW
 for linux-mediatek@lists.infradead.org; Thu, 16 Jan 2020 05:12:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id az3so7809218plb.11
 for <linux-mediatek@lists.infradead.org>; Wed, 15 Jan 2020 21:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MM1sOWvjZw+h8vu3/j7lHMVOWjzrQOXMF1caDGRlxsM=;
 b=UBXELpEYZaaovPgS/erHW4L62w2arbooU5yS5QXYpMZPV450e4HZL/du/YMmlC6OLO
 /XOUACrb2ABoUT2CMcudFe11l3pAT61IALWqFw3HUIklgU8z0Xd0g/41KFS0viVkqyMs
 IgNoJGvtOKJrLR1cbo75xinWsCQAaZ9JOY3Hk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MM1sOWvjZw+h8vu3/j7lHMVOWjzrQOXMF1caDGRlxsM=;
 b=oOJqZcBwrdSRU+Kh5Thl4ExvTwLm4bFL4j0btjftQ87wqTQKRYIEqPCOakKrBNYhhz
 gHZSkF0uT2/KKW6FLWlRw6dC8cp6kcFVwhJCc48mF/CQtsubEJwJeVgbyQ7n9+3gWlcu
 TH7rHhf5Fd9hib1+ayRwA9i/qombvB8HVgWTE2ZGZc87cxXaz+Dy3Y0140ujxCb3S+GX
 ij9tszVJ41YKIif7mJT7N1iaaDTUsaLmn5FKfLJkn6O83jiDmbnkD6t7hYZmq8/EaXpU
 vSEHF4qbuOIfqILUNTurUpvZ5s8fsX5a5KPiQHQNvpHmh7i3HvKRi5pHR4whOGauLq3b
 yhgw==
X-Gm-Message-State: APjAAAX3Y8P9u0FHiiTpOgs+OphigBDy1aCIWmBtVnVvg8G1IjpSuE23
 Ax/QzvOne7LlWYPeCL0Yj1vZpw==
X-Google-Smtp-Source: APXvYqz32hz+yU4Y2H7zyCA3RkeQAxrxGXqJ6o3lX0NPhyzrcMIWxMdF0Zmy/WCAcPiOdzOAA0SxTQ==
X-Received: by 2002:a17:90a:fa88:: with SMTP id
 cu8mr4181651pjb.141.1579151548899; 
 Wed, 15 Jan 2020 21:12:28 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id l9sm21540217pgh.34.2020.01.15.21.12.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 21:12:28 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/3] arm64: dts: mt8173: add uart aliases
Date: Thu, 16 Jan 2020 13:12:08 +0800
Message-Id: <20200116051209.37970-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200116051209.37970-1-hsinyi@chromium.org>
References: <20200116051209.37970-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_211232_677571_C55C5C8C 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
