Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C492A86582
	for <lists+linux-mediatek@lfdr.de>; Thu,  8 Aug 2019 17:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3YQj1HTaMDL4NwxujPovQpsxzoezzrokbsZfakttKQ=; b=atnwkitRIxzBE1
	QltnVzIXgWelxc+xMYDm3bhrygVaGluXi1K86IUo75xopbT8xSgERy596iOY3G1q8rhEuZ4XPv/Z2
	tufCrsxVFm+fFF0pA3gQ9NmOxyQej7q3aTOxTRv22jZ8ygeU2iwTbz1WrIZNTG21kaOJ8pkE39Mmq
	OavLjll+Y8SnD5jcDMFClJll0HVna5p8Pvl/Nit5Q07uGmn3P26hiWRTfcg7KhlviMhHUbDwzUp0D
	sFBqaaMmSFDS6mi3LlcY0Qw1e5kzTe1tYUkzqr9I3NaORN2EE6FhFluYWhvaGomMjPoKTrnUWnS5b
	DHANFWszAHVj92wBHzOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkBb-0007sg-4v; Thu, 08 Aug 2019 15:18:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkBN-0007jZ-BJ; Thu, 08 Aug 2019 15:18:26 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97D9E218B6;
 Thu,  8 Aug 2019 15:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565277504;
 bh=GBreKkzgwLBpfgFjLLgpU1KqC2MjQOWS3c7usXsHeh8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=izYzRRnCgZ34ZB9Xp6roK3Vuykt0YcaFUjxA15Wlcnx8p0+ClBJoAh5gcErapUjkf
 nF9sO52BI2j4PEVO0FUVwE0/6IQHnRl/6XgempRnSqFtquMcfSRvyjieRoxnutKeLT
 y4d+GO3xn7dbQnvB8WHjJzhSS2e0t+eZMWRNAaac=
MIME-Version: 1.0
In-Reply-To: <20190726070135.14347-2-yong.liang@mediatek.com>
References: <20190726070135.14347-1-yong.liang@mediatek.com>
 <20190726070135.14347-2-yong.liang@mediatek.com>
Subject: Re: [PATCH v5,2/2] clk: reset: Modify reset-controller driver
From: Stephen Boyd <sboyd@kernel.org>
To: Yong Liang <yong.liang@mediatek.com>, chunhui.dai@mediatek.com,
 drinkcat@chromium.org, eddie.huang@mediatek.com, erin.lo@mediatek.com,
 jamesjj.liao@mediatek.com, jasu@njomotys.info, mark.rutland@arm.com,
 matthias.bgg@gmail.com, mturquette@baylibre.com, owen.chen@mediatek.com,
 robh+dt@kernel.org, weiyi.lu@mediatek.com
User-Agent: alot/0.8.1
Date: Thu, 08 Aug 2019 08:18:23 -0700
Message-Id: <20190808151824.97D9E218B6@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_081825_409407_19913E42 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "yong.liang" <yong.liang@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Yong Liang (2019-07-26 00:01:35)
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Set reset signal by a register and
> clear reset signal by another register for 8183.
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> ---

Applied to clk-next with this squashed in

diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
index 3f1428ed619b..94bbadc0d259 100644
--- a/drivers/clk/mediatek/clk-mt8183.c
+++ b/drivers/clk/mediatek/clk-mt8183.c
@@ -1198,8 +1198,8 @@ static int clk_mt8183_infra_probe(struct platform_device *pdev)
 	r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
 	if (r) {
 		dev_err(&pdev->dev,
-			"%s(): could not register clock provider: %d\n"
-			,__func__, r);
+			"%s(): could not register clock provider: %d\n",
+			__func__, r);
 		return r;
 	}
 
diff --git a/drivers/clk/mediatek/reset.c b/drivers/clk/mediatek/reset.c
index 17df8f8b57ea..cb939c071b0c 100644
--- a/drivers/clk/mediatek/reset.c
+++ b/drivers/clk/mediatek/reset.c
@@ -90,7 +90,7 @@ static const struct reset_control_ops mtk_reset_ops_set_clr = {
 	.reset = mtk_reset_set_clr,
 };
 
-void mtk_register_reset_controller_common(struct device_node *np,
+static void mtk_register_reset_controller_common(struct device_node *np,
 			unsigned int num_regs, int regofs,
 			const struct reset_control_ops *reset_ops)
 {

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
