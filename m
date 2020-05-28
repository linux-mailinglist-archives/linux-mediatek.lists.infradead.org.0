Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849B71E5BCD
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 11:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boJwfg1X1HVp797rfraFPvHOKKDP8qkwsNuOc2cX2Qk=; b=H7/tM3rsfGhxFw
	Cusyh8jBljy98FYyb4mOL6Bj9MjB+6NOYYx44tT+V2dnvQA3ebiIy0hy4iA9G2wbXuRcv38vieXlP
	JKF9I+NVNt8YoTAkgiSpdultdh56qSZmmRLNjI+IFFAba2Pml26s80QCpV9F7qAqyasrXeIKQlrxF
	o9A3PmieQJRD8iG22EpFASlPqkfLT2hi+yymrCxUPYv2sHmNuwRzUj9VIBFPOEX4Tw1oNj3PD3RC1
	7pkM/EGKQvSD9TB686S/oxpI1Iumgex2OiOkUwroctpUDyvZ47AfCu74K+qMJFUGlvfBVe4KdFWyO
	3wwgr4HZOd3Ieb9mMWEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEmY-00020t-Np; Thu, 28 May 2020 09:24:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeEmN-0001pN-A1
 for linux-mediatek@lists.infradead.org; Thu, 28 May 2020 09:24:48 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jeEmA-0003j7-Ge; Thu, 28 May 2020 11:24:34 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jeEm9-0003Ch-O4; Thu, 28 May 2020 11:24:33 +0200
Date: Thu, 28 May 2020 11:24:33 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v10 1/3] dt-bindings: Add keypad devicetree documentation
Message-ID: <20200528092433.gyrcsin4ottvuewo@pengutronix.de>
References: <20200528084143.36482-1-fengping.yu@mediatek.com>
 <20200528084143.36482-2-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528084143.36482-2-fengping.yu@mediatek.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:23:01 up 195 days, 41 min, 196 users, load average: 0.12, 0.07, 
 0.04
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_022447_341957_315E2610 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 20-05-28 16:41, Fengping Yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>

...

> +  mediatek,debounce-us:
> +    description: Debounce interval in microseconds
> +    maximum: 256000

Nit, I would mention that 16000 is the default value which is applied if
not given.

Appart of this feel free to add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
