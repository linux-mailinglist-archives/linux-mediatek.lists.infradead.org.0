Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0A5ACA5F
	for <lists+linux-mediatek@lfdr.de>; Sun,  8 Sep 2019 04:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79XzrYAUwlJpYSKuCDHgOZFvi4thsexwM3Vd6YYstbo=; b=rq1r6Ol7B5cEh6
	NneiPapf4xBYTcl8TdrhS9+MKl8D/sSgZAk0QtaqwGmLfxQzSB67JVn9rzzuV06K6h2oVvXAz/iDa
	0nJtVlZZCZ04cG6v5VJ8X0iYI9TySJu6uXQXnufAHsODe6rQVnKQnN1ov7C4ChHfJiC2ek9EwhxWG
	tq/JE8V1P5821TkEJ2eXb2JMVhcZ0NwPdfN/h6BIccABqIu9VOpCTejRvARVYKKHkQl/W2GxWoBN0
	qRTtA1ztJATKDLUhmEhGTQlTJwvMhmOv8LxgYC2F8S/ZFYfV89KCVyVpVHwE1/Wy2utOi4mJhWSPO
	nLSgcNhPJ8gDwpmiA6ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6n08-0006lX-K0; Sun, 08 Sep 2019 02:32:28 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6mzZ-0006Mr-S8; Sun, 08 Sep 2019 02:31:56 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 19:31:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,479,1559545200"; d="scan'208";a="199803862"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 07 Sep 2019 19:31:48 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i6mzT-0001OB-RR; Sun, 08 Sep 2019 10:31:47 +0800
Date: Sun, 8 Sep 2019 10:31:01 +0800
From: kbuild test robot <lkp@intel.com>
To: dongchun.zhu@mediatek.com
Subject: Re: [V4, 2/2] media: i2c: Add Omnivision OV02A10 camera sensor driver
Message-ID: <201909081044.8HNNwh3K%lkp@intel.com>
References: <20190907092728.23897-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092728.23897-3-dongchun.zhu@mediatek.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_193153_923969_22D30DFC 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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

Hi,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linuxtv-media/master]
[cannot apply to v5.3-rc7 next-20190904]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/dongchun-zhu-mediatek-com/media-i2c-Add-support-for-OV02A10-sensor/20190908-065643
base:   git://linuxtv.org/media_tree.git master

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


coccinelle warnings: (new ones prefixed by >>)

>> drivers/media/i2c/ov02a10.c:695:2-3: Unneeded semicolon

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
