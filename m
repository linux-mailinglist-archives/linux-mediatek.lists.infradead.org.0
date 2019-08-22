Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EAC98AF9
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 07:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EwWJLq8N5sMi8X4ihB9uCkfkDb17l6yhbECIFmUsgvE=; b=NrYZRXSCfCTb2T
	YlbIEt2s9IHtpSZ54b4MNHLukoTJcrJEKc/ulv/bncYT4yMOxdcNupDLdocQBe4b/Vp6N48GduBiK
	34gp537qZk/KnBceFucChJyiVjTe67WG57SjD0+cNdX9bsqeyNR3LZL3H6W+f7fDmuYa+c1fJ0U/j
	Q2m2WrmoYkogBs5wrBgDgtTmIb3r+tHDozG9k8ARb49I6inNmWLNzFocsA9I3f0bO6yarmabpqsS3
	mJkkoIlgQa+uzmot9C42GMZP6TsFb5Hh9P1tJ7X40cJxJTJxeks6EEF7uL7Fp1sIridVMiaBkksFa
	n+nDOICZyMbSsMpDgglQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0g6o-00069G-Jm; Thu, 22 Aug 2019 05:58:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g6j-00065M-TJ
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 05:58:03 +0000
Received: by mail-pf1-x442.google.com with SMTP id v12so3155186pfn.10
 for <linux-mediatek@lists.infradead.org>; Wed, 21 Aug 2019 22:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Kn51c4iVY6vEKLBAUEgNeUWaRLfBi8NFzSwtDO3qJPo=;
 b=d+XGRDvs6km5uuLibtMj+3KC3ZkxqZYWOsU2LWeCn9xko3LMBY/ZiIalGDExdpPNkv
 2hL3j0jv/IRmHQ2CmCsOqXHykpFCzIX2ZmXO2/s20zJg9nYkd2fXr37b9m5qc4mNgd4k
 KQ6QB3GyCnueCJccC3fjLqL+gRTgY6o1l4ZZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Kn51c4iVY6vEKLBAUEgNeUWaRLfBi8NFzSwtDO3qJPo=;
 b=crOZpDW5HvtfdCDujZ0n+JKEkQCM45Ux56if9FgonJSOTBb/eu4ppGgy9IrVUkFyiO
 Xou7r3NrBu5DbZT7XLlSiJ4ax4SxIrhsB6GB5tCr05OJAawYilA68o51iVJ7sMFSO8wW
 D0/NEXhT24OJJWdQha6OLrVIexPFhkuc53OqUhJh1gc5DT3KTS3bAk8wjt7Ct+ZYQBSl
 SflBihLTwP7fWagpIxUkEKLGGoWDeYfXsQ/XiWtHITIu0/zTZOZ+Iqwmz1/Y2FAwjJ1m
 x8XC0mf5ayzYPdkxJsUS2/rA/n0774fkTkxngR3gLJCYMOCNpA/woXS9pRmLncQCzSx5
 vToQ==
X-Gm-Message-State: APjAAAVKh4A0EmOipYvfaQt8wOrNPVxsWJXJs7z6CwDJX3a5YMDT7Xmo
 D9PRjk5/yWeze5XC0LWPkEGIMbnBGQk=
X-Google-Smtp-Source: APXvYqzL8tM2JbDNSwlC6qNUOLwrEHhxUu03EMAJx/fBuHRv6q5B+0v8WjvhppnsEoQ2SVVVq/TgTQ==
X-Received: by 2002:a62:cec4:: with SMTP id y187mr39225066pfg.84.1566453480758; 
 Wed, 21 Aug 2019 22:58:00 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id e6sm24867338pfn.71.2019.08.21.22.57.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 21 Aug 2019 22:58:00 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: [PATCH RESEND] i2c: mediatek: disable zero-length transfers for mt8183
Date: Thu, 22 Aug 2019 13:57:37 +0800
Message-Id: <20190822055737.142384-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_225801_991029_486A36BF 
X-CRM114-Status: GOOD (  11.06  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Previous patch and discussion:
http://patchwork.ozlabs.org/patch/1042684/
---
 drivers/i2c/busses/i2c-mt65xx.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 252edb433fdf..2842ca4b8c3b 100644
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
@@ -933,8 +942,8 @@ static int mtk_i2c_probe(struct platform_device *pdev)
 	i2c->dev = &pdev->dev;
 	i2c->adap.dev.parent = &pdev->dev;
 	i2c->adap.owner = THIS_MODULE;
-	i2c->adap.algo = &mtk_i2c_algorithm;
 	i2c->adap.quirks = i2c->dev_comp->quirks;
+	i2c->adap.algo = &mtk_i2c_algorithm;
 	i2c->adap.timeout = 2 * HZ;
 	i2c->adap.retries = 1;
 
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
