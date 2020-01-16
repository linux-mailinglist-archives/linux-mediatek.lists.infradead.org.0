Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7650C13E13D
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Jan 2020 17:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bB1K9ZoxnsHWEUG6upapgfaqJ0N3hNnvW4goMdC78uA=; b=ajIRzZOgpU4had
	SBImYslgaJuS4rSg3vOI4UE2OvuQ7/Zvgt3lCKa5B+ue3nkCI6uAQEoKhyjOxi8dTlxpkY1T7sccf
	qfksCb2w+L4g9MO9kDEBs1H9s1lzxFVCPUqp32qY7ME8STsjF5AOl+tBnS4yyNUnLqj0g4G5jZ7SF
	P2ypFYXE5LN18zI4KudG4Pbm1k0r6JxUw2Q2woyW577R5bhBE59G5cZ4R0JGRqIU/9N+q2lTzndJ1
	JYpkaj1kB0vsyQk4J5VUZQXzUWE72m/y/AfTuhAMnYq5uxqIqorFHulNAA0DUaFMjD9lCRAy1KNPu
	NUxJnjms2crrgVwYXsZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8K2-000397-Gi; Thu, 16 Jan 2020 16:48:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8I2-0001Pn-00; Thu, 16 Jan 2020 16:46:41 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5EBDE214AF;
 Thu, 16 Jan 2020 16:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193197;
 bh=N4rYiCfLiFPq3Jr96nV115rnHp8H/x4+c7d7Dn7Afr4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DO00mwYCQfPKLSGXm4lAoGXcS6DJQ4MazuRa8Lpx2ErVdvc2kOyaHszoPeon3cCf+
 RBMg2K3tm2z2+oo7YVxDvGLlOkd4bU+PkEJ2IFGInvA/15tb9hOBJTBpfHaSiUszvD
 ed4rguj9CeueICTjto55cFD0yGRIdxqY8DAOBl2E=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 044/205] memory: mtk-smi: Add PM suspend and
 resume ops
Date: Thu, 16 Jan 2020 11:40:19 -0500
Message-Id: <20200116164300.6705-44-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084638_147146_F0C227E7 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Anan Sun <anan.sun@mediatek.com>, Sasha Levin <sashal@kernel.org>,
 Joerg Roedel <jroedel@suse.de>, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Yong Wu <yong.wu@mediatek.com>

[ Upstream commit fb03082a54acd66c61535edfefe96b2ff88ce7e2 ]

In the commit 4f0a1a1ae351 ("memory: mtk-smi: Invoke pm runtime_callback
to enable clocks"), we use pm_runtime callback to enable/disable the smi
larb clocks. It will cause the larb's clock may not be disabled when
suspend. That is because device_prepare will call pm_runtime_get_noresume
which will keep the larb's PM runtime status still is active when suspend,
then it won't enter our pm_runtime suspend callback to disable the
corresponding clocks.

This patch adds suspend pm_ops to force disable the clocks, Use "LATE" to
make sure it disable the larb's clocks after the multimedia devices.

Fixes: 4f0a1a1ae351 ("memory: mtk-smi: Invoke pm runtime_callback to enable clocks")
Signed-off-by: Anan Sun <anan.sun@mediatek.com>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/memory/mtk-smi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 439d7d886873..a113e811faab 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -366,6 +366,8 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
 
 static const struct dev_pm_ops smi_larb_pm_ops = {
 	SET_RUNTIME_PM_OPS(mtk_smi_larb_suspend, mtk_smi_larb_resume, NULL)
+	SET_LATE_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
+				     pm_runtime_force_resume)
 };
 
 static struct platform_driver mtk_smi_larb_driver = {
@@ -507,6 +509,8 @@ static int __maybe_unused mtk_smi_common_suspend(struct device *dev)
 
 static const struct dev_pm_ops smi_common_pm_ops = {
 	SET_RUNTIME_PM_OPS(mtk_smi_common_suspend, mtk_smi_common_resume, NULL)
+	SET_LATE_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
+				     pm_runtime_force_resume)
 };
 
 static struct platform_driver mtk_smi_common_driver = {
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
