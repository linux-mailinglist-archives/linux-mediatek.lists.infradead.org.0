Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025F7109D4A
	for <lists+linux-mediatek@lfdr.de>; Tue, 26 Nov 2019 12:51:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9wLVDaUGY0DRnCJ/dZBsEt0SSIE9OYn1TALCOGqMbk=; b=tZEGPliGaA+q+e
	+ym2iY+ayimgLsgk0361AikuoXCcwnNcGTXeGhL+l4WoNUPZvNqgnF4oZXzAHifcl9LKua9oQeLnO
	yQy7Uey0Nx64Px/7h3OMcw8CNZ3Z/AalLozJ2EI73/4wmbPSWQkFigsA8Akz3VH1PZGkruDa090V+
	D3lJx4nVDQZSpEiA0FqI6sAQQxZkDn1WA/9m8aeuLyVimelw79Rk9ZDedc8UbWS/339isb6xBB7M2
	Ex3zWrvuc6A6ItI84qyqJHbG8YOR7GZKdjTcWWIdIBwRT/C3GSAHFOR6nGWTCdlLcrnE00rsp60OP
	9YAzTycqZDcRjmArVRdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZZNX-0000dU-5R; Tue, 26 Nov 2019 11:51:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZZNO-0000ES-BA; Tue, 26 Nov 2019 11:51:28 +0000
X-UUID: bacc69b978024add8e01b7dd2335385d-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=eJiXotx7RS3CCD0fTnzjC+RpLHec/H5zYb5evRMy2s4=; 
 b=tdFofEcNLFfXY3Dva8+iIhXNMUvnaEfG5OKJVJ1bKeVvCO5Hv4cWKvAbN+nTMs0jY/3JqpY5QqZBSSZEORb8QKU3X7JDxggyTNACn/RIjtafpfES7rm43yg6y/fkpO6B835oY2N7t0PgbktnRt/gz5SDBiuDJnjPHU9ZzLwtRBs=;
X-UUID: bacc69b978024add8e01b7dd2335385d-20191126
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1838091942; Tue, 26 Nov 2019 03:51:20 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 03:51:52 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 19:51:07 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 19:50:49 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>
Subject: [v5,
 PATCH 1/5] cpufreq: mediatek: add clock enable for intermediate clock
Date: Tue, 26 Nov 2019 19:50:42 +0800
Message-ID: <1574769046-28449-2-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_035126_428852_D0DF26A3 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, fan.chen@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>

Intermediate clock is not always enabled by ccf in different projects,
so cpufreq should always enable it by itself.

Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
---
 drivers/cpufreq/mediatek-cpufreq.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
index 0c98dd08273d..4b0cc50dd93b 100644
--- a/drivers/cpufreq/mediatek-cpufreq.c
+++ b/drivers/cpufreq/mediatek-cpufreq.c
@@ -368,13 +368,17 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
 		goto out_free_resources;
 	}
 
+	ret = clk_prepare_enable(inter_clk);
+	if (ret)
+		goto out_free_opp_table;
+
 	/* Search a safe voltage for intermediate frequency. */
 	rate = clk_get_rate(inter_clk);
 	opp = dev_pm_opp_find_freq_ceil(cpu_dev, &rate);
 	if (IS_ERR(opp)) {
 		pr_err("failed to get intermediate opp for cpu%d\n", cpu);
 		ret = PTR_ERR(opp);
-		goto out_free_opp_table;
+		goto out_disable_clock;
 	}
 	info->intermediate_voltage = dev_pm_opp_get_voltage(opp);
 	dev_pm_opp_put(opp);
@@ -393,6 +397,9 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
 
 	return 0;
 
+out_disable_clock:
+	clk_disable_unprepare(inter_clk);
+
 out_free_opp_table:
 	dev_pm_opp_of_cpumask_remove_table(&info->cpus);
 
@@ -417,8 +424,10 @@ static void mtk_cpu_dvfs_info_release(struct mtk_cpu_dvfs_info *info)
 		regulator_put(info->sram_reg);
 	if (!IS_ERR(info->cpu_clk))
 		clk_put(info->cpu_clk);
-	if (!IS_ERR(info->inter_clk))
+	if (!IS_ERR(info->inter_clk)) {
+		clk_disable_unprepare(info->inter_clk);
 		clk_put(info->inter_clk);
+	}
 
 	dev_pm_opp_of_cpumask_remove_table(&info->cpus);
 }
-- 
2.12.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
