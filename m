Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233FD98FEA
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 11:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PrKRB+tczkDXAciu0+dB88hJ2K2xMyB4jlycxz/uogw=; b=pg0QKGd5s+2G+U
	ZybZGgDcVATabyuvYHEZ2QjOcz1vPrFGnFUAKV796bbIsPeOpjdpTCY1ZPJk6jXS4ml/YKofQQJlE
	SpXYS8dgbDOCbhym+5jHc++aqnh7yrXpfBUyqkIUxQfm7tHi0uAMxX89e1cemjYztKXRm1tnYjcY4
	11XoRtLYSneElNs0UAfMAE06U3HTNc48Uii7LbPomn6m1fS3ayNR1hvVq6Da8jD2THlBN4rCXbRf3
	0pq3gh2ZUUZ0yThsB1Vqak2PxV5JdAAM56cwDQux8dbqSuq4zPaI+Kax0Iv8jKSS9IZ0KWe6TpAWz
	VuevZ8ukw3stew6ukuDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jfJ-0000K6-AU; Thu, 22 Aug 2019 09:45:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jf1-000079-S6
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 09:45:41 +0000
Received: by mail-pf1-x442.google.com with SMTP id o70so3585644pfg.5
 for <linux-mediatek@lists.infradead.org>; Thu, 22 Aug 2019 02:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sgHEzZrPt9EteY2/QiFiyeYlRXQlrmCLZpXRsbYVLMM=;
 b=a9yy/07U4q9DkIrWE+1S1A5qGfmGOHr2Iah/Cwu7XTniDeBQidLmwEdnkTDXQM31RX
 HhXAwzTUtfbL7o0VP7LGkI+cz+lIG1ARIpBt7uaEM+lvwDLuY2LuYf4zfjpbXOzaKx1h
 ZskFoEcfaOXTiPrX0jOZiLZ1+rX1vte6oawec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sgHEzZrPt9EteY2/QiFiyeYlRXQlrmCLZpXRsbYVLMM=;
 b=WmKUgJF+k470JVps+PSFYO44ZmxbCohdAHy6/8u/DJi2vdsRJFMqnKOknjM/d5JSUq
 nh6xDJTQ53trI6cddxXNMs3RAMoRQGAo1MqkypRvums9n3ee/hQ5mKsnDjudqbY0IlyQ
 FkFjB+tv5ns1cpNo0BcKZox3A2XPFbzqqZd+07yr9FzSbPZdSCulKrIxaQYrV5Y01Y//
 ApZhTBRBA/GCKUt3+14b8Ppzf4OpPBvfl9eKiUMUfttT1c6CyMV9bvdf//JyC286WcgW
 KEz3VA/GET6RftjkZfNdFkX9miv8O4jO8Yk2wh/rpz6xj10gLXtzwFu98Rei0TsSubvN
 enZQ==
X-Gm-Message-State: APjAAAUNzPuvidKPuPDv4YFuknM2KhV/7lzTTqKrrPQn+npmKAWKeZhT
 5mrrTRLNNMHc0XSwm0IAAxgnpA==
X-Google-Smtp-Source: APXvYqwkD6Agsn8K0zNRrV8QL+ZYvIkEdfXfGFsEU0viYlCos3ngXCAmY0WDc8ulQwd3AcyBj/e79Q==
X-Received: by 2002:a65:6281:: with SMTP id f1mr31045994pgv.400.1566467138859; 
 Thu, 22 Aug 2019 02:45:38 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id 4sm26154645pfn.118.2019.08.22.02.45.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 22 Aug 2019 02:45:37 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Wolfram Sang <wsa@the-dreams.de>, Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: [PATCH v2] i2c: mediatek: disable zero-length transfers for mt8183
Date: Thu, 22 Aug 2019 17:45:17 +0800
Message-Id: <20190822094516.55130-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_024539_958969_908726D0 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 Alexandru M Stan <amstan@chromium.org>, Jun Gao <jun.gao@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Qii Wang <qii.wang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

When doing i2cdetect quick write mode, we would get transfer
error ENOMEM, and i2cdetect shows there's no device at the address.
Quoting from mt8183 datasheet, the number of transfers to be
transferred in one transaction should be set to bigger than 1,
so we should forbid zero-length transfer and update functionality.

Incorrect return:
localhost ~ # i2cdetect -q -y 0
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:          -- -- -- -- -- -- -- -- -- -- -- -- --
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
70: -- -- -- -- -- -- -- --

After this patch:
localhost ~ #  i2cdetect -q -y 0
Error: Can't use SMBus Quick Write command on this bus

localhost ~ #  i2cdetect -y 0
Warning: Can't use SMBus Quick Write command, will skip some addresses
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:
10:
20:
30: -- -- -- -- -- -- -- --
40:
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
60:
70:

Reported-by: Alexandru M Stan <amstan@chromium.org>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
Change from v1:
* restore the order of algo and quirks
---
 drivers/i2c/busses/i2c-mt65xx.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 252edb433fdf..29eae1bf4f86 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -234,6 +234,10 @@ static const struct i2c_adapter_quirks mt7622_i2c_quirks = {
 	.max_num_msgs = 255,
 };
 
+static const struct i2c_adapter_quirks mt8183_i2c_quirks = {
+	.flags = I2C_AQ_NO_ZERO_LEN,
+};
+
 static const struct mtk_i2c_compatible mt2712_compat = {
 	.regs = mt_i2c_regs_v1,
 	.pmic_i2c = 0,
@@ -298,6 +302,7 @@ static const struct mtk_i2c_compatible mt8173_compat = {
 };
 
 static const struct mtk_i2c_compatible mt8183_compat = {
+	.quirks = &mt8183_i2c_quirks,
 	.regs = mt_i2c_regs_v2,
 	.pmic_i2c = 0,
 	.dcm = 0,
@@ -870,7 +875,11 @@ static irqreturn_t mtk_i2c_irq(int irqno, void *dev_id)
 
 static u32 mtk_i2c_functionality(struct i2c_adapter *adap)
 {
-	return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
+	if (adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)
+		return I2C_FUNC_I2C |
+			(I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
+	else
+		return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
 }
 
 static const struct i2c_algorithm mtk_i2c_algorithm = {
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
