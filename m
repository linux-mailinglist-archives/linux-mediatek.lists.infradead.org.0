Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0D816904A
	for <lists+linux-mediatek@lfdr.de>; Sat, 22 Feb 2020 17:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2pL1H6MsBRNYDFgXd7lt9GJ+90AmxOsZArnB5NO42qQ=; b=fyJ
	11LbZycpdP4EcvrmkcEKC2DGI0M2Zk/4slqb2Xamt2qhM6p2rIjQBUM9hOVF0pCBZkUlriKSre1yr
	m0kk9U9wZJ/hZLfGx5p6QWaKoDe+QY27tbV3ZVGIEI8q5Gd2Un7i+ZnvDyfPf/seobbKI/gVvLwlL
	tschrwJ4opSp2c8dfXO7lwPo4Hby9hYCPF8jJeeSGW6jj3oTshgHQk7tn4vlHvEr9bBhjp5xZ7nzR
	oce0E7EUezktCPayeytmRTEmqlzG22KeTDzEvkK0Igw2cWwOmlSPcFLKV9jiNlwjMWu2NFhz+hB70
	746xqvjQkWXyC2QricGBS9fnmip19JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5XaW-0000IK-Dy; Sat, 22 Feb 2020 16:25:08 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5XaR-0007ww-IS
 for linux-mediatek@lists.infradead.org; Sat, 22 Feb 2020 16:25:05 +0000
Received: by mail-pj1-x1041.google.com with SMTP id f2so2992616pjq.1
 for <linux-mediatek@lists.infradead.org>; Sat, 22 Feb 2020 08:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Ks7y/QSYAArJm8l8kQ7dWIxmdbWnSg+WMxAzD2T6n1c=;
 b=AdCuHZNFaRFDtgAAkhhYnFi/ZD1m9YBfJU01emxU4mSbXwDRhs1uDdwwYPrHYE+eBS
 GI4xxETIdZE/1zzNfMz0oVP3qlaf87/HfcgBXY8m6U6baMqi6/WQ+LdXInCdLcoIQZAL
 xDMNi2jguKXQ3LInFv0OtDfbUBxZMH2wUAyK/84KntG2ZEAl7rbKPGl+gWanNGicIdFp
 q0KASqHTpV2HD0HgSzBkiNVEIMJd41sWk+X/XsdK/vN5/ZV2yHZ4ism2B0qFGQ+JruDV
 RjnkFLntq729UCaXVHPF74Pq3Ajg2YR/Z+DO9qGH2xd4nLDuQvzBEksJJShR6Ggdbwhw
 Q2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ks7y/QSYAArJm8l8kQ7dWIxmdbWnSg+WMxAzD2T6n1c=;
 b=A2HCNMzdCBXT+C1Lsey32+Rtsgh3e2MASHiT9Ut9SR6WxVfQwVGIF7SrVdFvIkAgIz
 u1qwJPO2gZHZhx7biJ6EzBuhDrRMBzYui+10ZQ+QUyQwG1XgwoHFqUSRylgaX/cwwsd2
 UPSH1kahiT+CqUlcFbl6DLrC6l3yJr3qGdSZh/wqNUfejFkOi+7rxx728Gd1pTBzWyiZ
 z7tVIks7ZvEwumjBpCgpbGrnlbZa4m+SKp+FbcWM5r4W2Tr7PZ+qovN5QVQJEGqUe6e/
 bgLnmj4AZgoa95cByAASfhKXylOIYMF629Yl1bcP+Z7/mi4eW/MXYNttOpRfdSbKyl3Q
 Wg7w==
X-Gm-Message-State: APjAAAV660QHZ+83ZM+rZKCJtAMwXim2FrvMe3oIN1lkgvckNJ35j9bZ
 v7URq4TzyPPwJQMRj6MvKsDK
X-Google-Smtp-Source: APXvYqwDqWgruAJNxa7ONzq20wF+AVoEojPMgADvEuzyv7YdZNMt2utDAZTxPjtcVVj83OJFNZAHgQ==
X-Received: by 2002:a17:90a:fe02:: with SMTP id
 ck2mr9841156pjb.10.1582388701954; 
 Sat, 22 Feb 2020 08:25:01 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:801:b38c:89e8:305c:23c4:b77f])
 by smtp.gmail.com with ESMTPSA id q17sm6851296pfg.123.2020.02.22.08.24.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 08:25:01 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: matthias.bgg@gmail.com,
	robh+dt@kernel.org
Subject: [PATCH 0/4] Add I2C controller support for MT6797 SoC
Date: Sat, 22 Feb 2020 21:54:40 +0530
Message-Id: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_082503_620818_88BFB175 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 adamboardman@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello,

This patchset adds I2C controller support for Mediatek MT6797 SoC. There
are a total of 8 I2C controllers in this SoC (2 being shared) and they are
same as the controllers present in MT6577 SoC. Hence, the driver support is
added with DT fallback method.

As per the datasheet, there are controllers with _imm prefix like i2c2_imm
and i2c3_imm. These appears to be in different memory regions but sharing
the same pins with i2c2 and i2c3 respectively. Since there is no clear
evidence of what they really are, I've adapted the numbering/naming scheme
from the downstream code by Mediatek.

This patchset has been tested on 96Boards X20 development board.

Thanks,
Mani

Manivannan Sadhasivam (4):
  dt-bindings: i2c: Document I2C controller binding for MT6797 SoC
  arm64: dts: mediatek: Add I2C support for MT6797 SoC
  arm64: dts: mediatek: Enable I2C support for 96Boards X20 Development
    board
  arm64: dts: mediatek: Switch to SPDX license identifier for MT6797 SoC

 .../devicetree/bindings/i2c/i2c-mt65xx.txt    |   1 +
 .../boot/dts/mediatek/mt6797-x20-dev.dts      |  49 ++++
 arch/arm64/boot/dts/mediatek/mt6797.dtsi      | 229 +++++++++++++++++-
 3 files changed, 271 insertions(+), 8 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
