Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A2EACA61
	for <lists+linux-mediatek@lfdr.de>; Sun,  8 Sep 2019 04:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkfoEXaJcXj8afKebwNls1ZwzLib2kF780awr/zw6zQ=; b=A12SK1e9Z66Xwq
	aj0JHct88k8TvOr2Mi1oBZ9z7L2dG7rcVcgwSP0s9qhnLl6ozGX8VszVLdk7vDM8AaHNxKLnOA0Rq
	L84GtoGKmrY4xTlpclWEyZf6Ib42z9tmxMkbM/g4u7uiQJKFsDthlV5NxBPfySoBUcPWIB5oiIqd0
	Ghox9UVWlanhO2aV0YDcu8r9AKy7TT6D95/MU2utm1CSF0LuFRTy3KCmn9yOQwR1F3bcZrQtsxajd
	58FTKpPptbv4msnIT2nwOucPkCZGDm/DD2woWAxhhFt2R4KFkT17azWSl/5TRpffliMG5UQTFqwi3
	Uq8emENyYi+vlO4eeAjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6n0A-0006nc-PU; Sun, 08 Sep 2019 02:32:30 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6mzZ-0006Ms-Sj; Sun, 08 Sep 2019 02:31:56 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 19:31:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,479,1559545200"; d="scan'208";a="213551396"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 07 Sep 2019 19:31:48 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i6mzT-0001NB-Q3; Sun, 08 Sep 2019 10:31:47 +0800
Date: Sun, 8 Sep 2019 10:31:02 +0800
From: kbuild test robot <lkp@intel.com>
To: dongchun.zhu@mediatek.com
Subject: [PATCH] media: i2c: fix semicolon.cocci warnings
Message-ID: <20190908023102.yubb2rax5jo6atbu@48261080c7f1>
References: <20190907092728.23897-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092728.23897-3-dongchun.zhu@mediatek.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_193153_933895_E8FAB39F 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, shengnan.wang@mediatek.com,
 dongchun.zhu@mediatek.com, tfiga@chromium.org, louis.kuo@mediatek.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 kbuild-all@01.org, sakari.ailus@linux.intel.com, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: kbuild test robot <lkp@intel.com>

drivers/media/i2c/ov02a10.c:695:2-3: Unneeded semicolon


 Remove unneeded semicolon.

Generated by: scripts/coccinelle/misc/semicolon.cocci

Fixes: 2bca4b808db1 ("media: i2c: Add Omnivision OV02A10 camera sensor driver")
CC: Dongchun Zhu <dongchun.zhu@mediatek.com>
Signed-off-by: kbuild test robot <lkp@intel.com>
---

url:    https://github.com/0day-ci/linux/commits/dongchun-zhu-mediatek-com/media-i2c-Add-support-for-OV02A10-sensor/20190908-065643
base:   git://linuxtv.org/media_tree.git master

 ov02a10.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/media/i2c/ov02a10.c
+++ b/drivers/media/i2c/ov02a10.c
@@ -692,7 +692,7 @@ static int ov02a10_set_ctrl(struct v4l2_
 	case V4L2_CID_TEST_PATTERN:
 		ret = ov02a10_set_test_pattern(ov02a10, ctrl->val);
 		break;
-	};
+	}
 
 	pm_runtime_put(&client->dev);
 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
